local function config()
	------------------------
	--  colorizer plugin  --
	------------------------
	local vim = vim
	local api = vim.api

	local status_ok, colorizer = pcall(require, "colorizer")
	if not status_ok then
		vim.notify("colorizer not found")
		return
	end

	colorizer.setup({ "*" }, {
		RGB = true, -- #000 hex codes
		RRGGBB = true, -- #RRGGBB hex codes
		names = true, -- "Name" codes like Blue
		RRGGBBAA = true, -- #RRGGBBAA hex codes
		rgb_fn = true, -- CSS rgb(1,3,101) and rgba() functions
		hsl_fn = true, -- CSS hsl() and hsla() functions
		css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
		css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
	})

	-- Colorizer plugin attach autocmd's
	api.nvim_create_autocmd({ "BufEnter", "InsertLeave", "CursorMoved", "CursorHold" }, {
		group = api.nvim_create_augroup("__nvim-colorizer", { clear = true }),
		command = "ColorizerAttachToBuffer",
	})
end

return { config = config }