local M = {}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.offsetEncoding = { "utf-16" }
capabilities.textDocument.completion.completionItem.documentationFormat = { "markdown", "plaintext" }
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport = true
capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
capabilities.textDocument.completion.completionItem.deprecatedSupport = true
capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
capabilities.textDocument.completion.completionItem.resolveSupport = {
	properties = {
		"documentation",
		"detail",
		"additionalTextEdits",
	},
}

M.capabilities = capabilities

M.on_attach = function(client, bufnr)
	require("safdar.setup.lsp.nvim-lspconfig.maps").on_attach(client, bufnr)

	-- if client.server_capabilities.semanticTokensProvider then
	-- 	client.server_capabilities.semanticTokensProvider.full = false
	-- end
	if client.server_capabilities.documentSymbolProvider then
		-- ignore adding navic in these file types
		local navic_ignore = { "sh" }
		local navic_is_ok = true
		for _, ft in ipairs(navic_ignore) do
			if vim.bo.filetype == ft then
				navic_is_ok = false
			end
		end
		if navic_is_ok then
			require("nvim-navic").attach(client, bufnr)
		end
	end

	-- only format wit the null_ls configured formatters
	if client.name ~= "null_ls" then
		if client.server_capabilities.documentFormattingProvider then
			client.server_capabilities.documentFormattingProvider = false
		end
		if client.server_capabilities.documentRangeFormattingProvider then
			client.server_capabilities.documentRangeFormattingProvider = false
		end
	end
end

return M
