local function plugin(install)
	install({
		"mrjones2014/smart-splits.nvim",
		keys = {
			"gsh",
			"gsj",
			"gsk",
			"gsl",
			"gss",
		},
		config = function()
			require("safdar.setup.others.smart-splits-nvim.config").config()
		end,
	})
end

return { install = plugin }