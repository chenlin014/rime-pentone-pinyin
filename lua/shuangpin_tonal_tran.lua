local sp = require("shuangpin")
local sp_config = require("shuangpin_config")

local sp_schema = sp_config.schema
local key2tone = sp_config.key2tone or {}

local T={}

function T.init(env)
	local config = env.engine.schema.config
	local name_space = env.name_space or "translator"

	env.tran = Component.ScriptTranslator(env.engine, name_space, "script_translator")
end

function T.fini(env)
end

function T.func(input, seg, env)
	local pinyin = ""
	for i = 1, #input, 3 do
		local syllable = sp.shuangpin_to_pinyin(
			input:sub(i,i), input:sub(i+1,i+1), sp_schema
		)
		local tone = key2tone[input:sub(i+2,i+2)] or ""
		pinyin = pinyin .. " " .. syllable .. tone
	end
	pinyin = pinyin:gsub("^ ", "")

	local t = env.tran:query(pinyin,seg)
	if not t then
		return
	end
	for cand in t:iter() do
		cand.preedit = pinyin
		yield(cand)
	end
end

return T
