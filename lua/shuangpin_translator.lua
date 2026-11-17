local sp = require("shuangpin")
local sp_schema = require("shuangpin_schema")

local T={}

function T.init(env)
	local config = env.engine.schema.config
	local name_space = env.name_space or "translator"

	local schema = Schema(env.engine.schema.schema_id or "")
	env.tran = Component.Translator(env.engine, schema, name_space, "script_translator")
end

function T.fini(env)
end

function T.func(input, seg, env)
	local pinyin = sp.decode_shuangpin(input, sp_schema)
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
