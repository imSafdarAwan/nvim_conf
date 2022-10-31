-- ++> Cursor Word
require("mini.cursorword").setup({
    delay = 500,
})
-- <++

-- ++> Surround
require("mini.surround").setup({
    -- Add custom surroundings to be used on top of builtin ones. For more
    -- information with examples, see `:h MiniSurround.config`.
    custom_surroundings = {
        [")"] = {
            input = { "%b()", "^.%s*().-()%s*.$" },
            output = { left = "( ", right = " )" },
        },
        ["("] = {
            input = { "%b()", "^.().*().$" },
            output = { left = "(", right = ")" },
        },
        ["]"] = {
            input = { "%b[]", "^.%s*().-()%s*.$" },
            output = { left = "[ ", right = " ]" },
        },
        ["["] = {
            input = { "%b[]", "^.().*().$" },
            output = { left = "[", right = "]" },
        },
        ["}"] = {
            input = { "%b{}", "^.%s*().-()%s*.$" },
            output = { left = "{ ", right = " }" },
        },
        ["{"] = {
            input = { "%b{}", "^.().*().$" },
            output = { left = "{", right = "}" },
        },
        [">"] = {
            input = { "%b<>", "^.%s*().-()%s*.$" },
            output = { left = "< ", right = " >" },
        },
        ["<"] = {
            input = { "%b<>", "^.().*().$" },
            output = { left = "<", right = ">" },
        },
    },

    -- Duration (in ms) of highlight when calling `MiniSurround.highlight()`
    highlight_duration = 500,

    -- Module mappings. Use `''` (empty string) to disable one.
    mappings = {
        add = "<leader>S", -- Add surrounding in Normal and Visual modes
        delete = "ds", -- Delete surrounding
        find = "<leader>sf", -- Find surrounding (to the right)
        find_left = "<leader>sF", -- Find surrounding (to the left)
        highlight = "<leader>sh", -- Highlight surrounding
        replace = "cs", -- Replace surrounding
        update_n_lines = "", -- Update `n_lines`

        suffix_last = "l", -- Suffix to search with "prev" method
        suffix_next = "n", -- Suffix to search with "next" method
    },

    -- Number of lines within which surrounding is searched
    n_lines = 1000,

    -- How to search for surrounding (first inside current line, then inside
    -- neighborhood). One of 'cover', 'cover_or_next', 'cover_or_prev',
    -- 'cover_or_nearest', 'next', 'prev', 'nearest'. For more details,
    -- see `:h MiniSurround.config`.
    search_method = "cover_or_next",
})
-- <++

-- ++> jump
-- <++
