local sp_config = require("shuangpin_config")
local key2stroke = sp_config.key2stroke or {}

local F = {}

function F.init(env)
	env.stroke_dict = ReverseLookup("stroke")
end

function F.func(cands, env)
	local input = env.engine.context.input or ""

	for cand in cands:iter() do
		local text = cand.text
		local code = input:sub(cand._start+1, cand._end)

		local char_count = 0
		for _, c in utf8.codes(text) do
			char_count = char_count + 1
			local stroke = key2stroke[code:sub(char_count*3,char_count*3)]
			if not stroke then goto next_char end

			local char = utf8.char(c)
			local strokes = env.stroke_dict:lookup(char) or ""
			if strokes ~= "" then
				if not strokes:find("%f[%a]"..stroke) then
					goto next_cand
				end
			end

			::next_char::
		end

		yield(cand)
		::next_cand::
	end
end

return F
