--Each "scope" has a list of patterns that will be highlighted.
scopes = {
	--This is a special scope that is the FIRST one visible when scope stack is empty
	--This global scope is visible IN ADDITION TO the current scope.
	global = {
		"comment",
		"kwd_3",
		"kwd_1",
		"kwd_2",
		"kwd_4",
		"expr_start",
		"string_start",
		"string2_start",
		"inline_command",
		"endline",
	},

	--This is a special scope that is set as the default when a line starts
	initial = {
		"let",
		"label",
		"command",
		"param_num",
		"param",
		"inline_command",
	},

	lbl = {
		"lbl",
	},

	lbl2 = {
		"lbl2",
	},

	normal = {
		"param_num",
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
		"comment",
		"expr_keywords",
		"expr_keywords2",
		"escape_char",
		"string_start",
		"string2_start",
		"expr_stop",
		"operator",
		"number",
		"functions",
		"constant",
		"variable",
		"expr_start",
		"inline_command",
		"var_special",
		"lambda",
	},

	let = {
		"expr_start",
		"variable",
		"equals",
	},

	inl_command = {
		"kwd_3",
		"expr_stop",
		"inl_command",
		"expr_start",
		"string_start",
		"string2_start",
		"inline_command",
	},

	inline_cmd = {
		"expr_stop",
		"param_num",
		"param",
		"expr_start",
		"string_start",
		"string2_start",
		"inline_command",
	},

	listcomp = {
		"listcomp",
		"variable",
	},
}
