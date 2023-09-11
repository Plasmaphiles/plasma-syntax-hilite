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
		pattern = "[^ ;{\\\">']+", --"
	},

	--keywords
	kwd_1 = {
		pattern = {"for", "in", "if", "elif", "while", "delete", "break", "continue"}, --parser auto-detects if it's at a word boundary
		display = "keyword", --apply coloring from theme.keyword
		scope = "normal", --change scope (so commands aren't highlighted)
	},
	kwd_2 = {
		pattern = {"do", "then", "else", "end"},
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
		pattern = {"and", "or", "not", "in", "[%[%]:*%%/^+%-,()><=]", "~=", "!=", "%.%.", "exists", "typeof", "is"},
		display = "operator",
	},

	variable = {
		pattern = {"[%w_]+", "%."},
		display = "variable",
	},

	var_special = {
		pattern = "[@#%?]",
		display = "var_special",
	},

	number = {
		pattern = "%d[%w_%.]*",
		display = "string",
	},

	constant = {
		pattern = {"true", "false", "null"},
		display = "var_special",
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

	pipe_variable = {
		pattern = "> *[%w_]+",
		display = "variable",
	},

	--command names cannot have spaces or equal signs, but any other characters are fine
	command = {
		pattern = "[^ =>]+",
		display = "command",
		scope = "normal", --change scope to this.
	},

	endline = {
		pattern = ";",
		display = "syntax",
		scope = "initial",
	},

	--Double-quoted strings: NO parsing
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