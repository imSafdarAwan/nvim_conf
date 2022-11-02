local vim = vim
local nvim_lsp = require("lspconfig")
local lsp_util = require("safdar.lsp.lsp_util")
local capabilities = lsp_util.capabilities
local on_attach = lsp_util.on_attach

--=======================================================
--                      jsonls
--=======================================================
nvim_lsp.html.setup({
    ...,
	capabilities = capabilities,
	on_attach = on_attach,
    init_options = {
      provideFormatter = false,
    },
})