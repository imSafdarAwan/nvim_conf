-- NOW I AM USING greyjoy.nvim
-- local api = vim.api
-- local function harpoon(bufInfo)
-- 	if api.nvim_buf_is_valid(bufInfo.buf) then
-- 		local harpoon_map = require("safdar.setup.navigation.harpoon.maps")
-- 		harpoon_map.common_lisp()
-- 	end
-- end
--
-- api.nvim_create_autocmd({ "BufEnter" }, {
-- 	group = api.nvim_create_augroup("execute lisp", { clear = true }),
-- 	pattern = { "*.lisp" },
-- 	callback = function(bufInfo)
-- 		harpoon(bufInfo)
-- 	end,
-- })
--
local opt = vim.opt_local
local indent = 2
opt.shiftwidth = indent
opt.tabstop = indent
opt.softtabstop = indent
