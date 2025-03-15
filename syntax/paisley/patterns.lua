patterns = {
	comment = {
		pattern = "#.*$",
		display = "comment",
	},

	escape_char = {
		pattern = { "\\[nt\"\'\\r %{%}]", "\\%^%-%^", "\\:relaxed:", "\\:P", "\\:yum:", "\\<3", "\\:heart_eyes:", "\\B%)", "\\:sunglasses:", "\\:D", "\\:grinning:", "\\%^o%^", "\\:smile:", "\\XD", "\\:laughing:", "\\:lol:", "\\=D", "\\:smiley:", "\\:sweat_smile:", "\\DX", "\\:tired_face:", "\\;P", "\\:stuck_out_tongue_winking_eye:", "\\:%-%*", "\\;%-%*", "\\:kissing_heart:", "\\:kissing:", "\\:rofl:", "\\:%)", "\\:slight_smile:", "\\:%(", "\\:frown:", "\\:frowning:" },
		display = "escape",
		greedy = true,
	},

	param = {
		pattern = "[^ \t\n\r\"\'{};$]+", --"
		display = "param",         --Just use the same color I guess
	},
	param_num = {
		pattern = { "%d+%.%d*", "%d+", "%.%d+" },
		display = "number",
	},

	label = {
		pattern = "[a-zA-Z0-9_]+:",
		display = "special_functions",
	},

	--keywords
	kwd_1 = {
		--parser auto-detects if it's at a word boundary
		pattern = { "for", "in", "if", "elif", "while", "delete", "break", "cache", "continue", "define", "match", "return", "catch" },
		--apply coloring from theme.keyword
		display = "keyword",
		--change scope (so commands aren't highlighted)
		scope = "normal",
	},
	kwd_2 = {
		pattern = { "do", "then", "else", "end", "stop", "try" },
		display = "keyword",
		scope = "initial",
	},
	kwd_3 = {
		pattern = { "gosub", "break[ \\t]+cache" },
		display = "keyword",
		push = "lbl",
	},
	kwd_4 = {
		pattern = "subroutine",
		display = "keyword",
		push = "lbl",
	},
	expr_keywords = {
		pattern = { "if", "else" },
		display = "keyword",
	},
	expr_keywords2 = {
		pattern = "for",
		display = "keyword",
		push = "listcomp",
	},
	listcomp = {
		pattern = "in",
		display = "keyword",
		pop = true,
	},

	lbl = {
		pattern = "[^ \t\n\r\"\'{};$#]+",
		display = "special_functions",
		pop = true,
	},

	lambda = {
		pattern = "!+[a-zA-Z0-9_]*",
		display = "special_functions",
	},

	--variables look like {var}, {{var}}, {#var}, {#*}, {*} or any combination thereof
	expr_start = {
		pattern = "{",
		display = "punctuation",
		push = "expression",
	},

	expr_stop = {
		pattern = "}",
		display = "punctuation",
		pop = true,
	},

	operator = {
		pattern = { "and", "or", "not", "xor", "in", "[%+%-%*/%%:&><=,]", "~=", "!=", "exists", "like" },
		display = "operator",
	},

	variable = {
		pattern = { "[a-zA-Z_][a-zA-Z_0-9]*" },
		display = "variable",
	},

	var_special = {
		pattern = { "%$", "@%d*" },
		display = "special_var",
	},

	number = {
		pattern = { "0[xb][0-9_a-fA-F]*", "[0-9]*%.[0-9]+", "[0-9]+" },
		display = "number",
	},

	constant = {
		pattern = { "true", "false", "null" },
		display = "literal",
	},

	let = {
		pattern = { "let", "initial" },
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
		display = "punctuation",
		push = "inl_command",
	},

	--command names cannot have spaces or equal signs, but any other characters are fine
	command = {
		pattern = "[^ \t\n\r\"\'{};$#]+",
		display = "object",
		scope = "normal", --change scope to this.
	},

	inl_command = {
		pattern = "[^ \t\n\r\"\'{};$#]+",
		display = "object",
		scope = "inline_cmd", --change scope to this.
	},

	endline = {
		pattern = "[;\n]",
		display = "punctuation",
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

	functions = {
		pattern = {"[%w_]+", "\\[^ \t\n\r\"\'{}();$#]+"},
		display = "functions",
		lookahead = " *%(",
	},
}
