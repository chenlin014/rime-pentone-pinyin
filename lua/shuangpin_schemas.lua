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
	["a"] = {
		["a"] = "a", ["n"] = "an",
		["i"] = "ai", ["o"] = "ao"
	},
	["o"] = {["o"] = "o", ["u"] = "ou"},
	["e"] = {
		["e"] = "e", ["i"] = "ei",
		["n"] = "en", ["r"] = "er"
	}
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
	{"([nljqx])ui$", "%1v"}
}

--- 微軟 ---

M.mssp = {}

M.mssp.key2onset = {
	["u"] = "sh",
	["i"] = "ch",
	["v"] = "zh",
	["o"] = ""
}

M.mssp.key2final = {
	["q"] = "iu",
	["w"] = "ia",
	["e"] = "e",
	["r"] = "uan",
	["t"] = "ue",
	["y"] = "uai",
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
	[";"] = "ing",
	["z"] = "ei",
	["x"] = "ie",
	["c"] = "iao",
	["v"] = "ui",
	["b"] = "ou",
	["n"] = "in",
	["m"] = "ian"
}

M.mssp.keys2pinyin = {
	["o"] = {["r"] = "er"}
}

M.mssp.sounds2pinyin = {
	[""] = {["uai"] = "yu"}
}

M.mssp.replacements = {
	{"([gkhrzcs])ia$", "%1ua"},
	{"([nljqx])uai$", "%1v"},
	{"([dtnlgkhrzcs])o$", "%1uo"},
	{"([jqx])ong$", "%1iong"},
	{"([gkhrzcs])iang$", "%1uang"},
	{"([nl])ui$", "%1ve"},
	{"([jqx])ui$", "%1ue"}
}

--- 智能ABC ---

M.smart_abc = {}

M.smart_abc.key2onset = {
	["e"] = "ch",
	["a"] = "zh",
	["v"] = "sh",
	["o"] = ""
}

M.smart_abc.key2final = {
	["q"] = "ei",
	["w"] = "ian",
	["e"] = "e",
	["r"] = "iu",
	["t"] = "iang",
	["y"] = "ing",
	["u"] = "u",
	["i"] = "i",
	["o"] = "o",
	["p"] = "uan",
	["a"] = "a",
	["s"] = "ong",
	["d"] = "ia",
	["f"] = "en",
	["g"] = "eng",
	["h"] = "ang",
	["j"] = "an",
	["k"] = "ao",
	["l"] = "ai",
	["z"] = "iao",
	["x"] = "ie",
	["c"] = "in",
	["v"] = "v",
	["b"] = "ou",
	["n"] = "un",
	["m"] = "ui"
}

M.smart_abc.keys2pinyin = {
	["o"] = {["r"] = "er"}
}

M.smart_abc.sounds2pinyin = {
	[""] = {["v"] = "yu"},
}

M.smart_abc.replacements = {
	{"([gkhrzcs])iang$", "%1uang"},
	{"([dtnlgkhrzcs])o$", "%1uo"},
	{"([jqx])ong$", "%1iong"},
	{"([gkhrzcs])ia$", "%1ua"},
	{"([gkhrzcs])in$", "%1uai"},
	{"([nl])ui$", "%1ve"},
	{"([jqx])ui$", "%1ue"}
}

--- 拼音加加 ---

M.jiajia = {}

M.jiajia.key2onset = {
	["u"] = "ch",
	["i"] = "sh",
	["v"] = "zh"
}

M.jiajia.key2final = {
	["q"] = "ing",
	["w"] = "ei",
	["e"] = "e",
	["r"] = "en",
	["t"] = "eng",
	["y"] = "ong",
	["u"] = "u",
	["i"] = "i",
	["o"] = "o",
	["p"] = "ou",
	["a"] = "a",
	["s"] = "ai",
	["d"] = "ao",
	["f"] = "an",
	["g"] = "ang",
	["h"] = "iang",
	["j"] = "ian",
	["k"] = "iao",
	["l"] = "in",
	["z"] = "un",
	["x"] = "uai",
	["c"] = "uan",
	["v"] = "ui",
	["b"] = "ia",
	["n"] = "iu",
	["m"] = "ie"
}

M.jiajia.keys2pinyin = {
	["a"] = {
		["a"] = "a", ["n"] = "an",
		["i"] = "ai", ["o"] = "ao"
	},
	["o"] = {["o"] = "o", ["u"] = "ou"},
	["e"] = {
		["e"] = "e", ["i"] = "ei",
		["n"] = "en", ["q"] = "er"
	}
}

M.jiajia.sounds2pinyin = {
	["a"] = {["ang"] = "ang"},
	["e"] = {["eng"] = "eng"},
	[""] = {["ui"] = "yu"}
}

M.jiajia.replacements = {
	{"([jqx])ong$", "%1iong"},
	{"([dtnlgkhrzcs])o$", "%1uo"},
	{"([gkhrzcs])iang$", "%1uang"},
	{"([nl])uai$", "%1ve"},
	{"([jqx])uai$", "%1ue"},
	{"([nljqx])ui$", "%1v"},
	{"([gkhrzcs])ia$", "%1ua"}
}

--- 小鶴 ---

M.xiaohe = {}

M.xiaohe.key2onset = {
	["u"] = "sh",
	["i"] = "ch",
	["v"] = "zh"
}

M.xiaohe.key2final = {
	["q"] = "iu",
	["w"] = "ei",
	["e"] = "e",
	["r"] = "uan",
	["t"] = "ue",
	["y"] = "un",
	["u"] = "u",
	["i"] = "i",
	["o"] = "o",
	["p"] = "ie",
	["a"] = "a",
	["s"] = "ong",
	["d"] = "ai",
	["f"] = "en",
	["g"] = "eng",
	["h"] = "ang",
	["j"] = "an",
	["k"] = "uai",
	["l"] = "iang",
	["z"] = "ou",
	["x"] = "ia",
	["c"] = "ao",
	["v"] = "ui",
	["b"] = "in",
	["n"] = "iao",
	["m"] = "ian"
}

M.xiaohe.keys2pinyin = {
	["a"] = {
		["a"] = "a", ["n"] = "an",
		["i"] = "ai", ["o"] = "ao"
	},
	["o"] = {["o"] = "o", ["u"] = "ou"},
	["e"] = {
		["e"] = "e", ["i"] = "ei",
		["n"] = "en", ["r"] = "er"
	}
}

M.xiaohe.sounds2pinyin = {
	["a"] = {["ang"] = "ang"},
	["e"] = {["eng"] = "eng"}
}

M.xiaohe.replacements = {
	{"([nl])ue$", "%1ve"},
	{"([dtnlgkhrzcs])o$", "%1uo"},
	{"([jqx])ong$", "%1iong"},
	{"([gkhrzcs])ing$", "%1uai"},
	{"([gkhrzcs])iang$", "%1uang"},
	{"([gkhrzcs])ia$", "%1ua"},
	{"([nljqx])ui$", "%1v"}
}

--- 搜狗 ---

M.sougou = {}

M.sougou.key2onset = {
	["u"] = "sh",
	["i"] = "ch",
	["v"] = "zh",
	["o"] = ""
}

M.sougou.key2final = {
	["q"] = "iu",
	["w"] = "ia",
	["e"] = "e",
	["r"] = "uan",
	["t"] = "ue",
	["y"] = "uai",
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
	[";"] = "ing",
	["z"] = "ei",
	["x"] = "ie",
	["c"] = "iao",
	["v"] = "ui",
	["b"] = "ou",
	["n"] = "in",
	["m"] = "ian"
}

M.sougou.keys2pinyin = {
	["o"] = {["r"] = "er"}
}

M.sougou.sounds2pinyin = {
	[""] = {["uai"] = "yu"}
}

M.sougou.replacements = {
	{"([gkhrzcs])ia$", "%1ua"},
	{"([nl])ue$", "%1ve"},
	{"([nljqx])uai$", "%1v"},
	{"([dtnlgkhrzcs])o$", "%1uo"},
	{"([jqx])ong$", "%1iong"},
	{"([gkhrzcs])iang$", "%1uang"}
}

--- 紫光 ---

M.ziguang = {}

M.ziguang.key2onset = {
	["u"] = "zh",
	["i"] = "sh",
	["a"] = "ch",
	["o"] = ""
}

M.ziguang.key2final = {
	["q"] = "ao",
	["w"] = "en",
	["e"] = "e",
	["r"] = "an",
	["t"] = "eng",
	["y"] = "in",
	["u"] = "u",
	["i"] = "i",
	["o"] = "o",
	["p"] = "ai",
	["a"] = "a",
	["s"] = "ang",
	["d"] = "ie",
	["f"] = "ian",
	["g"] = "iang",
	["h"] = "ong",
	["j"] = "iu",
	["k"] = "ei",
	["l"] = "uan",
	[";"] = "ing",
	["z"] = "ou",
	["x"] = "ia",
	["c"] = nil,
	["v"] = "v",
	["b"] = "iao",
	["n"] = "ui",
	["m"] = "un"
}

M.ziguang.keys2pinyin = {
	["o"] = {["j"] = "er"}
}

M.ziguang.sounds2pinyin = {}

M.ziguang.replacements = {
	{"([gkhrzcs])in$", "%1uai"},
	{"([dtnlgkhrzcs])o$", "%1uo"},
	{"([gkhrzcs])iang$", "%1uang"},
	{"([jqx])ong$", "%1iong"},
	{"([gkhrzcs])ia$", "%1ua"},
	{"([nl])ui$", "%1ve"},
	{"([jqx])ui$", "%1ue"}
}

--- 国标 ---

M.guobiao = {}

M.guobiao.key2onset = {
	["u"] = "sh",
	["i"] = "ch",
	["v"] = "zh",
	["a"] = ""
}

M.guobiao.key2final = {
	["q"] = "ia",
	["w"] = "uan",
	["e"] = "e",
	["r"] = "en",
	["t"] = "ie",
	["y"] = "iu",
	["u"] = "u",
	["i"] = "i",
	["o"] = "o",
	["p"] = "ou",
	["a"] = "a",
	["s"] = "ong",
	["d"] = "ian",
	["f"] = "an",
	["g"] = "ang",
	["h"] = "eng",
	["j"] = "ing",
	["k"] = "ai",
	["l"] = "in",
	["z"] = "un",
	["x"] = "ue",
	["c"] = "ao",
	["v"] = "v",
	["b"] = "ei",
	["n"] = "iang",
	["m"] = "iao"
}

M.guobiao.keys2pinyin = {
	["a"] = {["l"] = "er"}
}

M.guobiao.sounds2pinyin = {}

M.guobiao.replacements = {
	{"([gkhrzcs])ia$", "%1ua"},
	{"([gkhrzcs])iu$", "%1uai"},
	{"([dtnlgkhrzcs])o$", "%1uo"},
	{"([jqx])ong$", "%1iong"},
	{"([nl])ue$", "%1ve"},
	{"([dtgkhrzcs])v$", "%1ui"},
	{"([gkhrzcs])iang$", "%1uang"}
}

return M
