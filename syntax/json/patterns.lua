patterns = {
	escape_char = {
		pattern = {"\\u....", "\\."},
		display = "escape",
		greedy = true,
	},

	literal = {
		pattern = {"true", "false", "null"},
		display = "literal",
	},

	number = {
		pattern = "%d[%d_%.]*",
		display = "number",
	},

	punctuation = {
		pattern = "[%[%]%{%}:,]",
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
}