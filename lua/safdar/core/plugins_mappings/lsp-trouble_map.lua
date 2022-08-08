local map = require(require("genearl").core_loc() .. ".utils").map
--> lsp trouble
map("n", "[tt", ":TroubleToggle<cr>", { noremap = true, silent = true })
map("n", "[td", "<cmd>TroubleToggle document_diagnostics<cr>", { noremap = true, silent = true })
map("n", "[x", "<cmd>TroubleToggle workspace_diagnostics<cr>", { noremap = true, silent = true })
map("n", "[tq", "<cmd>TroubleToggle quickfix<cr>", { noremap = true, silent = true })
map("n", "[tl", "<cmd>TroubleToggle loclist<cr>", { noremap = true, silent = true })
map("n", "gr", "<cmd>TroubleToggle lsp_references<cr>", { noremap = true, silent = true })
