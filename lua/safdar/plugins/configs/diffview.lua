local dv = require("diffview")
local actions = require("diffview.actions")
local mappings = require("safdar.plugins_mappings.diffview_map")

dv.setup({
    diff_binaries = false,
    enhanced_diff_hl = false,
    git_cmd = { "git" },
    use_icons = true,
    watch_index = true,
    icons = {
        folder_closed = "",
        folder_open = "",
    },
    signs = {
        fold_closed = "",
        fold_open = "",
        done = "✓",
    },
    view = {
        default = {
            layout = "diff2_horizontal",
        },
        merge_tool = {
            layout = "diff3_horizontal",
            disable_diagnostics = true,
        },
        file_history = {
            layout = "diff2_horizontal",
        },
    },
    file_panel = {
        listing_style = "tree",
        tree_options = {
            flatten_dirs = true,
            folder_statuses = "only_folded",
        },
        win_config = {
            position = "left",
            width = 35,
            win_opts = {},
        },
    },
    file_history_panel = {
        log_options = {
            single_file = {
                diff_merges = "combined",
            },
            multi_file = {
                diff_merges = "first-parent",
            },
        },
        win_config = {
            position = "bottom",
            height = 16,
            win_opts = {},
        },
    },
    commit_log_panel = {
        win_config = {
            win_opts = {},
        },
    },
    default_args = {
        DiffviewOpen = {},
        DiffviewFileHistory = {},
    },
    hooks = {},
    keymaps = {
        disable_defaults = false,
        view = {
            ["<tab>"] = actions.select_next_entry,
            ["<s-tab>"] = actions.select_prev_entry,
            ["gf"] = actions.goto_file,
            ["<C-w><C-f>"] = actions.goto_file_split,
            ["<C-w>gf"] = actions.goto_file_tab,
            ["<leader>e"] = actions.focus_files,
            ["<leader>b"] = actions.toggle_files,
            ["g<C-x>"] = actions.cycle_layout,
            ["[x"] = actions.prev_conflict,
            ["]x"] = actions.next_conflict,
            ["<leader>co"] = actions.conflict_choose("ours"),
            ["<leader>ct"] = actions.conflict_choose("theirs"),
            ["<leader>cb"] = actions.conflict_choose("base"),
            ["<leader>ca"] = actions.conflict_choose("all"),
            ["dx"] = actions.conflict_choose("none"),
        },
        diff1 = {},
        diff2 = {},
        diff3 = {
            { { "n", "x" }, "2do", actions.diffget("ours") },
            { { "n", "x" }, "3do", actions.diffget("theirs") },
        },
        diff4 = {
            { { "n", "x" }, "1do", actions.diffget("base") },
            { { "n", "x" }, "2do", actions.diffget("ours") },
            { { "n", "x" }, "3do", actions.diffget("theirs") },
        },
        file_panel = {
            ["j"] = actions.next_entry,
            ["<down>"] = actions.next_entry,
            ["k"] = actions.prev_entry,
            ["<up>"] = actions.prev_entry,
            ["<cr>"] = actions.select_entry,
            ["o"] = actions.select_entry,
            ["<2-LeftMouse>"] = actions.select_entry,
            ["-"] = actions.toggle_stage_entry,
            ["S"] = actions.stage_all,
            ["U"] = actions.unstage_all,
            ["X"] = actions.restore_entry,
            ["L"] = actions.open_commit_log,
            ["<c-b>"] = actions.scroll_view(-0.25),
            ["<c-f>"] = actions.scroll_view(0.25),
            ["<tab>"] = actions.select_next_entry,
            ["<s-tab>"] = actions.select_prev_entry,
            ["gf"] = actions.goto_file,
            ["<C-w><C-f>"] = actions.goto_file_split,
            ["<C-w>gf"] = actions.goto_file_tab,
            ["i"] = actions.listing_style,
            ["f"] = actions.toggle_flatten_dirs,
            ["R"] = actions.refresh_files,
            ["<leader>e"] = actions.focus_files,
            ["<leader>b"] = actions.toggle_files,
            ["g<C-x>"] = actions.cycle_layout,
            ["[x"] = actions.prev_conflict,
            ["]x"] = actions.next_conflict,
        },
        file_history_panel = {
            ["g!"] = actions.options,
            ["<C-A-d>"] = actions.open_in_diffview,
            ["y"] = actions.copy_hash,
            ["L"] = actions.open_commit_log,
            ["zR"] = actions.open_all_folds,
            ["zM"] = actions.close_all_folds,
            ["j"] = actions.next_entry,
            ["<down>"] = actions.next_entry,
            ["k"] = actions.prev_entry,
            ["<up>"] = actions.prev_entry,
            ["<cr>"] = actions.select_entry,
            ["o"] = actions.select_entry,
            ["<2-LeftMouse>"] = actions.select_entry,
            ["<c-b>"] = actions.scroll_view(-0.25),
            ["<c-f>"] = actions.scroll_view(0.25),
            ["<tab>"] = actions.select_next_entry,
            ["<s-tab>"] = actions.select_prev_entry,
            ["gf"] = actions.goto_file,
            ["<C-w><C-f>"] = actions.goto_file_split,
            ["<C-w>gf"] = actions.goto_file_tab,
            ["<leader>e"] = actions.focus_files,
            ["<leader>b"] = actions.toggle_files,
            ["g<C-x>"] = actions.cycle_layout,
        },
        option_panel = {
            ["<tab>"] = actions.select_entry,
            ["q"] = actions.close,
        },
    },
})

mappings.maps()
