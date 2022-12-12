local M = {}

M.maps = function()
	local set_map = require("safdar.core.utils").set_map
	-- --> Telescope
	set_map("n", "<leader>vc", ":Telescope git_commits<CR>", { noremap = true, silent = true })
	set_map("n", "<leader>tr", ":Telescope resume<CR>", { noremap = true, silent = true })
	set_map("n", "<leader>b", ":Telescope git_bcommits<CR>", { noremap = true, silent = true })
	set_map("n", "<leader>vo", ":Telescope vim_options<CR>", { noremap = true, silent = true })
	set_map("n", "<leader>vm", ":Telescope marks<CR>", { noremap = true, silent = true })
	set_map("n", "<leader>ch", ":Telescope keymaps<CR>", { noremap = true, silent = true })
	set_map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { noremap = true, silent = true })
	set_map("n", "<leader>fh", ":Telescope help_tags<cr>", { noremap = true, silent = true })
	set_map("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { noremap = true, silent = true })
	set_map("n", "<leader>tb", ":Telescope builtin<cr>", { noremap = true, silent = true })
	set_map("n", "<leader>rr", ":Telescope reloader<cr>", { noremap = true, silent = true })

	set_map("n", "<leader>en", function()
		require("safdar.plugins.telescope.telescope-custom").search_nvim_dotfiles()
	end, { noremap = true, silent = true })

	set_map("n", "<leader>gtd", function()
		require("safdar.plugins.telescope.telescope-custom").gtd_neorg_files()
	end, { noremap = true, silent = true })

	set_map("n", "<leader>f;", function()
		require("safdar.plugins.telescope.telescope-custom").ivy_find_files_with_preview()
	end, { noremap = true, silent = true })

	set_map("n", "<leader>fb", function()
		require("safdar.plugins.telescope.telescope-custom").center_list_buffers_find()
	end, { noremap = true, silent = true })

	set_map("n", "<leader>tc", function()
		require("safdar.plugins.telescope.telescope-custom").get_cursor_change_colorscheme()
	end, { noremap = true, silent = true })

	set_map("n", "<leader>ti", function()
		require("safdar.plugins.telescope.telescope-custom").ivy_colorscheme_preview()
	end, { noremap = true, silent = true })

	set_map("n", "<leader>ff", function()
		-- ":Telescope find_files theme=get_cursor previewer=false find_command=rg,--hidden,--files<CR>",
		require("safdar.plugins.telescope.telescope-custom").center_list_find_files()
	end, { noremap = true, silent = true })

	set_map("n", "<C-_>", function()
		require("safdar.plugins.telescope.telescope-custom").current_buffer_fuzzy_find()
	end, { noremap = true, silent = true })

	set_map("n", "<leader>ds", function()
		require("safdar.plugins.telescope.telescope-custom").center_list_document_symbols_find()
	end, { noremap = true, silent = true })
end

M.packer_keys = {
	{ "n", "<leader>f" },
	{ "n", "<leader>t" },
	{ "n", "<leader>c" },
	{ "n", "<leader>r" },
	{ "n", "<leader>v" },
	{ "n", "<leader>b" },
	{ "n", "<leader>d" },
	{ "n", "<C-_>" },
	{ "n", "<leader>t" },
	{ "n", "<leader>g" },
}

-- Telescope core mappings
M.mappings = function()
	return {
		i = {
			["<C-l>"] = require("telescope.actions").cycle_history_next,
			["<C-h>"] = require("telescope.actions").cycle_history_prev,
		},
		n = {
			["<C-[>"] = require("telescope.actions").close,
		},
	}
end
M.picker_find = function()
	return {
		i = {
			["<C-_>"] = require("telescope.actions").delete_buffer,
		},
		n = {
			["<C-_>"] = require("telescope.actions").delete_buffer,
		},
	}
end

M.telescope_plugins_maps = {
	tabs = function()
		local set_map = require("safdar.core.utils").set_map
		set_map("n", "<leader>tt", function()
			require("telescope-tabs").list_tabs()
		end)
	end,
	harpoon = function()
		local set_map = require("safdar.core.utils").set_map
		set_map("n", "<leader>af", ":Telescope harpoon marks<CR>")
	end,
}
return M
