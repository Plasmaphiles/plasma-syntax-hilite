patterns = {
	comment = {
		pattern = "#.*$",
		display = "comment",
	},

	escape_char = {
		pattern = "\\.",
		display = "escape",
		greedy = true,
	},

	param = {
		pattern = "[^ \t\n\r\"\'{};$]+", --"
	},

	label = {
		pattern = "%w+:",
		display = "label",
	},

	--keywords
	kwd_1 = {
		pattern = {"for", "in", "if", "elif", "while", "delete", "break", "continue", "gosub"}, --parser auto-detects if it's at a word boundary
		display = "keyword", --apply coloring from theme.keyword
		scope = "normal", --change scope (so commands aren't highlighted)
	},
	kwd_2 = {
		pattern = {"do", "then", "else", "end", "subroutine", "return", "stop"},
		display = "keyword",
		scope = "initial",
	},

	--variables look like {var}, {{var}}, {#var}, {#*}, {*} or any combination thereof
	expr_start = {
		pattern = "{",
		display = "syntax",
		push = "expression",
	},

	expr_stop = {
		pattern = "}",
		display = "syntax",
		pop = true,
	},

	operator = {
		pattern = {"and", "or", "not", "xor", "in", "[%+%-%*/%%:#><=]", "~=", "!=", "exists", "like"},
		display = "operator",
	},

	variable = {
		pattern = {"[a-zA-Z_][a-zA-Z_0-9]*"},
		display = "variable",
	},

	var_special = {
		pattern = "@",
		display = "variable",
	},

	number = {
		pattern = {"0[xb][0-9%._a-fA-F]*", "[0-9%.][0-9%._a-zA-Z]*"},
		display = "number",
	},

	constant = {
		pattern = {"true", "false", "null"},
		display = "literal",
	},

	let = {
		pattern = "let",
		display = "keyword",
		scope = "let",
	},

	equals = {
		pattern = "=",
		display = "operator",
		scope = "normal",
	},

	inline_command = {
		pattern = "%$%{",
		display = "syntax",
		push = "inline_cmd",
	},

	--command names cannot have spaces or equal signs, but any other characters are fine
	command = {
		pattern = "[^ =;]+",
		display = "command",
		scope = "normal", --change scope to this.
	},

	endline = {
		pattern = ";",
		display = "syntax",
		scope = "initial",
	},

	--Double-quoted strings: Parsing
	string_start = {
		pattern = "\"", --"
		display = "string",
		push = "string", --push this scope onto the stack, overriding global until it is popped off.
	},

	string_end = {
		pattern = "\"", --"
		pop = true, --pop this scope off the stack. afterwards (if there are no more scopes) revert to global scope.
	},

	--Single-quoted strings: NO parsing
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