local set_map = require("safdar.utils").set_map
set_map("n", "<leader>cc", ":lua require('spectre').open()<CR>")
set_map("n", "<leader>cv", ":lua require('spectre').open_visual({select_word=true})<CR>")
set_map("v", "<leader>cc", ":lua require('spectre').open_visual()<CR>")
set_map("n", "<leader>cf", ":lua require('spectre').open_file_search()<cr>")
