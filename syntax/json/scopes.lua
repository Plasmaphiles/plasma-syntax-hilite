--Each "scope" has a list of patterns that will be highlighted.
scopes = {
	--This is a special scope that is the FIRST one visible when scope stack is empty
	--This global scope is visible IN ADDITION TO the current scope.
	global = {},

	initial = {
		"punctuation",
		"string_start",
		"number",
		"literal"
	},

	string = {
		"escape_char",
		"string_end"
	}
}