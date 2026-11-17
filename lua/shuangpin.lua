local M = {}

function M.shuangpin_to_pinyin(key1, key2, schema)
	if key1 and not key2 then
		return schema.key2onset[key1] or key1
	end

	if schema.keys2pinyin[key1] then
		if schema.keys2pinyin[key1][key2] then
			return schema.keys2pinyin[key1][key2]
		end
	end

	local onset = schema.key2onset[key1] or key1
	local final = schema.key2final[key2] or key2

	if schema.sounds2pinyin[onset] then
		if schema.sounds2pinyin[onset][final] then
			return schema.sounds2pinyin[onset][final]
		end
	end

	return onset .. final
end

function M.decode_shuangpin(code, schema)
	local pinyin = ""
	for i = 1, #code, 2 do
		local sp = string.sub(code, i, i+1)
		local py = M.shuangpin_to_pinyin(sp:sub(1,1),sp:sub(2,2),schema)
		pinyin = pinyin .. " " .. py
	end

	if extra then
		pinyin = pinyin .. " " .. extra
	end

	return pinyin:gsub("^ ", "")
end

return M
