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
	["g"] = {
		["ia"] = "gua", ["ing"] = "guai",
		["o"] = "guo", ["iang"] = "guang"
	},
	["k"] = {
		["ia"] = "kua", ["ing"] = "kuai",
		["o"] = "kuo", ["iang"] = "kuang"
	},
	["h"] = {
		["ia"] = "hua", ["ing"] = "huai",
		["o"] = "huo", ["iang"] = "huang"
	},
	["zh"] = {
		["ia"] = "zhua", ["ing"] = "zhuai",
		["o"] = "zhuo", ["iang"] = "zhuang"
	},
	["ch"] = {
		["ia"] = "chua", ["ing"] = "chuai", ["o"] = "chuo",
		["iang"] = "chuang", ["ia"] = "shua"
	},
	["sh"] = {["ing"] = "shuai", ["o"] = "shuo", ["iang"] = "shuang"},
	["r"] = {["ia"] = "rua", ["o"] = "ruo"},
	["j"] = {["ong"] = "jiong", ["ui"] = "jv"},
	["q"] = {["ong"] = "qiong", ["ui"] = "qv"},
	["x"] = {["ong"] = "xiong", ["ui"] = "xv"},
	["d"] = {["o"] = "duo"},
	["t"] = {["o"] = "tuo"},
	["n"] = {["ue"] = "nve", ["o"] = "nuo", ["ui"] = "nv"},
	["l"] = { ["ue"] = "lve", ["o"] = "luo", ["ui"] = "lv"},
	["z"] = {["ia"] = "zua", ["o"] = "zuo"},
	["c"] = {["ia"] = "cua", ["o"] = "cuo"},
	["s"] = {["ia"] = "sua", ["o"] = "suo"},
	["a"] = {["ang"] = "ang"},
	["e"] = {["eng"] = "eng"}
}

return M
