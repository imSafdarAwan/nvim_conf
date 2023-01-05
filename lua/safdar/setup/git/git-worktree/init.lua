local function plugin(install)
	install({
		"ThePrimeagen/git-worktree.nvim",
		keys = {
			"<leader>gw"
		},
		config = function()
			require("safdar.setup.git.git-worktree.config").config()
		end,
	})
end

return { install = plugin }
