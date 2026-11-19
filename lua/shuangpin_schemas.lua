local M = {}

--- 自然碼 ---

M.ziran = {}

M.ziran.key2onset = {
	["u"] = "sh",
	["i"] = "ch",
	["v"] = "zh"
}

M.ziran.key2final = {
	["q"] = "iu",
	["w"] = "ia",
	["e"] = "e",
	["r"] = "uan",
	["t"] = "ue",
	["y"] = "ing",
	["u"] = "u",
	["i"] = "i",
	["o"] = "o",
	["p"] = "un",
	["a"] = "a",
	["s"] = "ong",
	["d"] = "iang",
	["f"] = "en",
	["g"] = "eng",
	["h"] = "ang",
	["j"] = "an",
	["k"] = "ao",
	["l"] = "ai",
	["z"] = "ei",
	["x"] = "ie",
	["c"] = "iao",
	["v"] = "ui",
	["b"] = "ou",
	["n"] = "in",
	["m"] = "ian"
}

M.ziran.keys2pinyin = {
	["a"] = {["a"] = "a", ["n"] = "an"},
	["o"] = {["o"] = "o", ["u"] = "ou"},
	["e"] = {["e"] = "e", ["n"] = "en", ["r"] = "er"},
}

M.ziran.sounds2pinyin = {
	["a"] = {["ang"] = "ang"},
	["e"] = {["eng"] = "eng"}
}

M.ziran.replacements = {
	{"([gkhrzcs])ia$", "%1ua"},
	{"([nl])ue$", "%1ve"},
	{"([gkhrzcs])ing$", "%1uai"},
	{"([dtnlgkhrzcs])o$", "%1uo"},
	{"([jqx])ong$", "%1iong"},
	{"([gkhrzcs])iang$", "%1uang"},
	{"^([nljqx])ui$", "%1v"}
}

return M
