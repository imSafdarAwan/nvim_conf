local vim = vim

local ls = require("luasnip")
local s = ls.snippet
-- local sn =ls.snippet_node
-- local isn =ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
-- local f = ls.function_node
-- local c =ls.choice_node
-- local d =ls.dynamic_node
-- local r =ls.restore_node
-- local events = require("luasnip.util.events")
-- local ai = require("luasnip.nodes.absolute_indexer")
-- local extras = require("luasnip.extras")
-- local l = extras.lambda
-- local rep = extras.rep
-- local p = extras.partial
-- local m = extras.match
-- local n = extras.nonempty
-- local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
-- local fmta = require("luasnip.extras.fmt").fmta
-- local conds = require("luasnip.extras.expand_conditions")
-- local postfix = require("luasnip.extras.postfix").postfix
-- local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet

local cSnips = {
	-- function
	s(
		"fn",
		fmt(
			[[
			{type} {funcName}({args}) {openingParen}
				{code}
			{closeParen}
			]],
			{
				type = i(1, "type"),
				funcName = i(2, "name"),
				args = i(3, "args"),
				code = i(4, "// code here"),
				openingParen = t("{"),
				closeParen = t("}"),
			}
		)
	),
	s(
		"for",
		fmt(
			[[
			for ({initial}; {statement}; {expr}) {l}
				{code}
			{r}]],
			{
				initial = i(1, "int i = 1"),
				statement = i(2, "i <= 10"),
				expr = i(3, "i++"),
				code = i(4, "// code goes here"),
				l = t("{"),
				r = t("}"),
			}
		)
	),
	parse("inc", "#include <$0>"),
}

ls.add_snippets("c", cSnips)
