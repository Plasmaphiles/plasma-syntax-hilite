--Each "scope" has a list of patterns that will be highlighted.
scopes = {
	--This is a special scope that is the FIRST one visible when scope stack is empty
	--This global scope is visible IN ADDITION TO the current scope.
	global = {
		"comment",
		"kwd_1",
		"kwd_2",
		"expr_start",
		"string_start",
		"string2_start",
		"inline_command",
		"endline",
	},

	--This is a special scope that is set as the default when a line starts
	initial = {
		"let",
		"command",
		"param",
		"inline_command",
	},

	normal = {
		"param",
	},

	string = {
		"string_end",
		"expr_start",
		"escape_char",
		"inline_command",
	},

	string2 = {
		"string2_end",
		"escape_char",
	},

	expression = {
		"escape_char",
		"string_start",
		"string2_start",
		"expr_stop",
		"operator",
		"number",
		"constant",
		"variable",
		"var_special",
		"expr_start",
		"inline_command",
	},

	let = {
		"variable",
		"equals",
	},

	inl_command = {
		"expr_stop",
		"inl_command",
		"expr_start",
		"string_start",
		"string2_start",
		"inline_command",
	},

	inline_cmd = {
		"expr_stop",
		"param",
		"expr_start",
		"string_start",
		"string2_start",
		"inline_command",
	},
}