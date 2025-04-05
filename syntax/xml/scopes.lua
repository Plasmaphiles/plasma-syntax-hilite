--Each "scope" has a list of patterns that will be highlighted.
scopes = {
	--This is a special scope that is the FIRST one visible when scope stack is empty
	--This global scope is visible IN ADDITION TO the current scope.
	global = {
		"comment",
		"entity",
	},

	--This is a special scope that is set as the default when a line starts
	initial = {
		"tag_open",
	},

	in_tag = {
		"tag_close",
		"tag_slash",
		"tag_type",
	},

	property = {
		"tag_close",
		"tag_slash",
		"property",
	},

	value = {
		"op_equals",
		"tag_close",
		"tag_slash",
		"value",
	},
}