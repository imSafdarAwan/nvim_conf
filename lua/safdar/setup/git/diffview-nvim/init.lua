local plugin = function(install)
	install({
		keys = { "ygd", "ygD" },
		"sindrets/diffview.nvim",
		init = function()
			require("fused").load_plugin("diffview.nvim")
		end,
		config = function()
			require("safdar.setup.git.diffview-nvim.config").config()
		end,
	})
end

return { install = plugin }