patterns = {
	comment = {
		pattern = "%-%-.*$",
		display = "comment",
	},

	escape_char = {
		pattern = "\\.",
		display = "escape",
		greedy = true,
	},

	keyword = {
		pattern = {"for", "in", "if", "elseif", "else", "while", "break", "continue", "do", "then", "end", "until", "return", "repeat", "function", "local", "and", "or", "not"}, --parser auto-detects if it's at a word boundary
		display = "keyword", --apply coloring from theme.keyword
	},

	functions = {
		pattern = "[%w_]+",
		display = "functions",
		lookahead = " *%(",
	},

	special_functions = {
		pattern = {"print", "error", "output", "output_array", "V[12345678]", "read_var", "write_var"},
		display = "special_functions",
	},

	variable = {
		pattern = "[%w_]+",
		display = "variable",
	},

	typename = {
		pattern = {"true", "false", "nil"},
		display = "typename",
	},

	operator = {
		pattern = {"[%-+*/%%^#=><]", "~=", "%.%.%.?"},
		display = "operator",
	},

	number = {
		pattern = "%d[%w_%.]*",
		display = "number",
	},

	punctuation = {
		pattern = "[%[%]%(%)%{%};:,.]",
		display = "punctuation",
	},

	string_start = {
		pattern = "\"", --"
		display = "string",
		push = "string", --push this scope onto the stack, overriding global until it is popped off.
	},

	string_end = {
		pattern = "\"", --"
		pop = true, --pop this scope off the stack. afterwards (if there are no more scopes) revert to global scope.
	},

	string2_start = {
		pattern = "'",
		display = "string",
		push = "string2",
	},

	string2_end = {
		pattern = "'",
		pop = true,
	},
}