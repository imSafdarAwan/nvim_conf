local plugin = function(install)
	install({
		"TheSafdarAwan/find-extender.nvim",
		lazy = false,
		branch = "alpha",
		config = function()
			require("find-extender").setup({
				movments = {
					lh = { use = true },
				},
			})
		end,
	})
end

return { install = plugin }
