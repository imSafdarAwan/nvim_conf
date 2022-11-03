local M = {}
M.mappings = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map("n", "]c", function()
        if vim.wo.diff then
            return "]c"
        end
        vim.schedule(function()
            gs.next_hunk()
        end)
        return "<Ignore>"
    end, { expr = true })
    map("n", "[c", function()
        if vim.wo.diff then
            return "[c"
        end
        vim.schedule(function()
            gs.prev_hunk()
        end)
        return "<Ignore>"
    end, { expr = true })

    -- Actions
    map("n", "gcs", ":Gitsigns stage_hunk<CR>")
    map("n", "gcr", ":Gitsigns reset_hunk<CR>")
    map("n", "gbS", gs.stage_buffer)
    map("n", "gsu", gs.undo_stage_hunk)
    map("n", "gbR", gs.reset_buffer)
    map("n", "gsp", gs.preview_hunk)
    map("n", "<leader>hb", function()
        gs.blame_line({ full = true })
    end)
    map("n", "gtb", gs.toggle_current_line_blame)
    map("n", "gdt", gs.diffthis)
    map("n", "gdT", function()
        gs.diffthis("~")
    end)
    map("n", "gtd", gs.toggle_deleted)

    -- Text object
    map({ "n", "o", "x" }, "gks", ":<C-U>Gitsigns select_hunk<CR>")
end
return M
