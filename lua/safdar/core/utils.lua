local vim = vim

local M = {}
M.vim = vim
M.opt = vim.opt
M.wo = vim.wo
M.optl = vim.opt_local
M.api = vim.api
M.g = vim.g
M.b = vim.bo
M.cmd = vim.cmd

M.map = function(mode, mapping, command, opts)
    vim.keymap.set(mode, mapping, command, opts)
end

M.buf_set_keymap = function(buffer, mode, lhs, rhs, opts)
    M.api.nvim_buf_set_keymap(buffer, mode, lhs, rhs, opts)
end

M.buf_set_option = function(buffer, name, value)
    M.api.nvim_buf_set_option(buffer, name, value)
end

M.create_autocmd = function(events, opts)
    M.api.nvim_create_autocmd(events, opts)
end

return M
