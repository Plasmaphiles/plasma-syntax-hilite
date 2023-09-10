--Each "scope" has a list of patterns that will be highlighted.
scopes = {
	--This is a special scope that is the FIRST one visible when scope stack is empty
	--This global scope is visible IN ADDITION TO the current scope.
	global = {
		"comment",
		"keyword",
		"typename",
		"number",
		"operator",
		"special_functions",
		"functions",
		"variable",
		"punctuation",
		"string_start",
		"string2_start",
	},

	--This is a special scope that is set as the default when a line starts
	initial = {},

	string = {
		"string_end",
		"escape_char",
	},

	string2 = {
		"string2_end",
		"escape_char",
	},
}