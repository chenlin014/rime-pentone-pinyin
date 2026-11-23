local sp = require("shuangpin")
local sp_config = require("shuangpin_config")

local sp_schema = sp_config.schema
sp_schema.key2onset = sp_schema.key2onset or {}
sp_schema.sounds2pinyin = sp_schema.sounds2pinyin or {}
sp_schema.replacements = sp_schema.replacements or {}
local key2tone = sp_config.key2tone or {}
local key2stroke = sp_config.key2stroke or {}

local function join_strings(strings, joint)
	joint = joint or ""
	local result = ""

	for i, str in ipairs(strings) do
		if i == #strings then
			result = result .. str
		else
			result = result .. str .. joint
		end
	end

	return result
end

local function pentone_query(tran, codes, strokes, seg)
	local code = join_strings(codes, " ")
	local t = tran:query(code, seg)
	if not t then return nil end

	local texts = {}
	local stroke_dict = ReverseLookup("stroke")
	local best_fail_text = nil
	local best_fail_ind = 1
	for cand in t:iter() do
		local text = cand.text

		local i = 0
		for _, c in utf8.codes(text) do
			i = i + 1
			local stroke = strokes[i]
			if not stroke then goto next_char end

			local char = utf8.char(c)
			local char_strokes = stroke_dict:lookup(char) or ""

			if strokes ~= "" then
				if not char_strokes:find("%f[%a]"..stroke) then
					goto next_cand
				end
			end

			::next_char::
		end

		local len = utf8.len(text)
		if len < #codes then
			if len + 1 > best_fail_ind then
				best_fail_ind = len + 1
				best_fail_text = text
			end
			goto next_cand
		end

		table.insert(texts, text)
		::next_cand::
	end

	if #texts ~= 0 then return texts end
	if not best_fail_text then return nil end

	local next_texts = pentone_query(
		tran, {table.unpack(codes, best_fail_ind, #codes)},
		{table.unpack(strokes, best_fail_ind, #strokes)}, seg
	)
	if not next_texts then return {best_fail_text} end

	for _, next_text in ipairs(next_texts) do
		table.insert(texts, best_fail_text..next_text)
	end
	return texts
end

local T={}

function T.init(env)
	local config = env.engine.schema.config
	local name_space = env.name_space
	if not name_space or name_space == "" then
		name_space = "translator"
	end

	env.tran = Component.ScriptTranslator(env.engine, name_space, "script_translator")
end

function T.fini(env)
end

function T.func(input, seg, env)
	local pinyin = ""
	local syllables = {}
	local strokes = {}
	for i = 1, #input, 3 do
		local syllable = sp.shuangpin_to_pinyin(
			input:sub(i,i), input:sub(i+1,i+1), sp_schema
		)
		local tone = key2tone[input:sub(i+2,i+2)] or ""
		table.insert(syllables, syllable .. tone)
		table.insert(strokes, key2stroke[input:sub(i+2,i+2)])
	end

	local texts = pentone_query(env.tran, syllables, strokes, seg)
	local pinyin = join_strings(syllables, " ")

	if not texts then
		if pinyin ~= "" then
			yield(Candidate("pinyin", seg.start, seg._end, pinyin, " "))
		end
		return
	end

	for _, text in ipairs(texts) do
		local cand = Candidate("pentone", seg.start, seg._end, text, " ")
		if #input % 3 == 0 then
			cand.preedit = pinyin
		else
			local undone_code = input:sub(#input - (#input % 3) + 1, #input)
			cand.preedit = pinyin.." ("..undone_code..")"
		end
		yield(cand)
	end
end

return T
