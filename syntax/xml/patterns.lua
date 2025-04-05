patterns = {
	comment = {
		pattern = {"<!%-%-.-%-%->", "<!%-%-.-$"}, --XML comments
		display = "comment",
	},

	tag_open = {
		pattern = "<",
		display = "punctuation",
		push = "in_tag",
	},

	tag_close = {
		pattern = ">",
		display = "punctuation",
		pop = true,
	},

	tag_slash = {
		pattern = "/",
		display = "punctuation",
	},

	entity = {
		pattern = "&%a+;",
		display = "escape",
	},

	tag_type = {
		pattern = "[^%s<>=/]+",
		display = "keyword",
		scope = "property",
	},

	property = {
		pattern = "[^%s<>=/]+",
		display = "functions",
		scope = "value",
	},

	value = {
		pattern = {"\"[^\"]*\"", "[^%s<>=/]+"},
		display = "string",
		scope = "property",
	},

	op_equals = {
		pattern = "=",
		display = "punctuation",
	},
}