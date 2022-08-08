-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = true
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/safdarawan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/safdarawan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/safdarawan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/safdarawan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/safdarawan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ale = {
    config = { "\27LJ\2\n�\1\0\0\5\0\6\0\0196\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\0016\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\4\2B\2\1\2'\3\5\0&\2\3\2B\0\2\1K\0\1\0\30.plugins_mappings.ale_map\rcore_loc\17.configs.ale\16plugins_loc\fgenearl\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/opt/ale",
    url = "https://github.com/dense-analysis/ale"
  },
  catppuccin = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-emoji"] = {
    after_files = { "/home/safdarawan/.local/share/nvim/site/pack/packer/opt/cmp-emoji/after/plugin/cmp_emoji.lua" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/opt/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-tabnine"] = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/cmp-tabnine",
    url = "https://github.com/tzachar/cmp-tabnine"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["emmet-vim"] = {
    config = { "\27LJ\2\nZ\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\19.configs.emmet\16plugins_loc\fgenearl\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/opt/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["feline.nvim"] = {
    config = { "\27LJ\2\n[\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\20.configs.feline\16plugins_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/feline.nvim",
    url = "https://github.com/feline-nvim/feline.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["git-worktree.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\5\0\a\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0006\2\0\0'\4\4\0B\2\2\0029\2\5\2B\2\1\2'\3\6\0&\2\3\2B\0\2\1K\0\1\0'.plugins_mappings.git_worktree_map\rcore_loc\fgenearl\1\0\5\21update_on_change\2\29change_directory_command\acd\rautopush\1\25clearjumps_on_change\2\29update_on_change_command\be .\nsetup\17git-worktree\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/git-worktree.nvim",
    url = "https://github.com/ThePrimeagen/git-worktree.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n]\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\22.configs.gitsigns\16plugins_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    config = { "\27LJ\2\n�\1\0\0\5\0\6\0\0196\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\0016\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\4\2B\2\1\2'\3\5\0&\2\3\2B\0\2\1K\0\1\0\".plugins_mappings.harpoon_map\rcore_loc\21.configs.harpoon\16plugins_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["impatient.nvim"] = {
    config = { "\27LJ\2\nL\0\0\3\0\3\0\t6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\19enable_profile\14impatient\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n_\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\24.configs.indentline\16plugins_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\n^\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\23.configs.signature\16plugins_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\6\0\0196\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\0016\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\4\2B\2\1\2'\3\5\0&\2\3\2B\0\2\1K\0\1\0#.plugins_mappings.lsp-saga_map\rcore_loc\18.configs.saga\16plugins_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/lush.nvim",
    url = "https://github.com/rktjmp/lush.nvim"
  },
  ["markdown-preview.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\6\0\0196\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\0016\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\4\2B\2\1\2'\3\5\0&\2\3\2B\0\2\1K\0\1\0+.plugins_mappings.markdown-preview_map\rcore_loc\30.configs.markdown-preview\16plugins_loc\fgenearl\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n^\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\23.configs.neoscroll\16plugins_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\6\0\0196\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\0016\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\4\2B\2\1\2'\3\5\0&\2\3\2B\0\2\1K\0\1\0\".plugins_mappings.null-ls_map\rcore_loc\r.null_ls\flsp_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-FeMaco.lua"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\6\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\2\1\2'\3\5\0&\2\3\2B\0\2\1K\0\1\0!.plugins_mappings.FeMaco_map\rcore_loc\fgenearl\nsetup\vfemaco\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/opt/nvim-FeMaco.lua",
    url = "https://github.com/AckslD/nvim-FeMaco.lua"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n�\1\0\0\b\0\n\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0026\1\0\0'\3\5\0B\1\2\0029\2\6\1\18\4\2\0009\2\a\2'\5\b\0009\6\t\0B\6\1\0A\2\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\1\0\2\fmap_c_w\2\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nL\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\t.cmp\flsp_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n^\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\23.configs.colorizer\16plugins_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nL\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\t.lsp\flsp_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-neoclip.lua"] = {
    config = { "\27LJ\2\n\\\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\21.configs.neoclip\16plugins_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/nvim-neoclip.lua",
    url = "https://github.com/AckslD/nvim-neoclip.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\6\0\0196\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\0016\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\4\2B\2\1\2'\3\5\0&\2\3\2B\0\2\1K\0\1\0$.plugins_mappings.nvim-tree_map\rcore_loc\23.configs.nvim-tree\16plugins_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\6\0\0196\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\0016\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\4\2B\2\1\2'\3\5\0&\2\3\2B\0\2\1K\0\1\0%.plugins_mappings.treesitter_map\rcore_loc\24.configs.treesitter\16plugins_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["refactoring.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\6\0\0196\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\0016\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\4\2B\2\1\2'\3\5\0&\2\3\2B\0\2\1K\0\1\0&.plugins_mappings.refactoring_map\rcore_loc\25.configs.refactoring\16plugins_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/refactoring.nvim",
    url = "https://github.com/ThePrimeagen/refactoring.nvim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/schemastore.nvim",
    url = "https://github.com/b0o/schemastore.nvim"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/sqlite.lua",
    url = "https://github.com/tami5/sqlite.lua"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n^\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\23.configs.telescope\16plugins_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\nY\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\18.configs.todo\16plugins_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\6\0\0196\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\0016\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\4\2B\2\1\2'\3\5\0&\2\3\2B\0\2\1K\0\1\0&.plugins_mappings.lsp-trouble_map\rcore_loc\21.configs.trouble\16plugins_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    config = { "\27LJ\2\ng\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0#.plugins_mappings.undotree_map\rcore_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vgit.nvim"] = {
    config = { "\27LJ\2\nY\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\18.configs.vgit\16plugins_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/vgit.nvim",
    url = "https://github.com/tanvirtin/vgit.nvim"
  },
  ["vim-be-good"] = {
    config = { "\27LJ\2\nj\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0&.plugins_mappings.vim-be-good_map\rcore_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/vim-be-good",
    url = "https://github.com/ThePrimeagen/vim-be-good"
  },
  ["vim-matchup"] = {
    config = { "\27LJ\2\n`\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\25.configs.vim-matchup\16plugins_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-obsession"] = {
    config = { "\27LJ\2\nh\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0$.plugins_mappings.obsession_map\rcore_loc\fgenearl\frequire\0" },
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/vim-obsession",
    url = "https://github.com/tpope/vim-obsession"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/safdarawan/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n_\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\24.configs.indentline\16plugins_loc\fgenearl\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nL\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\t.cmp\flsp_loc\fgenearl\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\n^\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\23.configs.signature\16plugins_loc\fgenearl\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\6\0\0196\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\0016\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\4\2B\2\1\2'\3\5\0&\2\3\2B\0\2\1K\0\1\0&.plugins_mappings.lsp-trouble_map\rcore_loc\21.configs.trouble\16plugins_loc\fgenearl\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n^\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\23.configs.colorizer\16plugins_loc\fgenearl\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nL\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\t.lsp\flsp_loc\fgenearl\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\6\0\0196\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\0016\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\4\2B\2\1\2'\3\5\0&\2\3\2B\0\2\1K\0\1\0#.plugins_mappings.lsp-saga_map\rcore_loc\18.configs.saga\16plugins_loc\fgenearl\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n^\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\23.configs.neoscroll\16plugins_loc\fgenearl\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: feline.nvim
time([[Config for feline.nvim]], true)
try_loadstring("\27LJ\2\n[\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\20.configs.feline\16plugins_loc\fgenearl\frequire\0", "config", "feline.nvim")
time([[Config for feline.nvim]], false)
-- Config for: undotree
time([[Config for undotree]], true)
try_loadstring("\27LJ\2\ng\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0#.plugins_mappings.undotree_map\rcore_loc\fgenearl\frequire\0", "config", "undotree")
time([[Config for undotree]], false)
-- Config for: nvim-ts-autotag
time([[Config for nvim-ts-autotag]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0", "config", "nvim-ts-autotag")
time([[Config for nvim-ts-autotag]], false)
-- Config for: git-worktree.nvim
time([[Config for git-worktree.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\5\0\a\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0006\2\0\0'\4\4\0B\2\2\0029\2\5\2B\2\1\2'\3\6\0&\2\3\2B\0\2\1K\0\1\0'.plugins_mappings.git_worktree_map\rcore_loc\fgenearl\1\0\5\21update_on_change\2\29change_directory_command\acd\rautopush\1\25clearjumps_on_change\2\29update_on_change_command\be .\nsetup\17git-worktree\frequire\0", "config", "git-worktree.nvim")
time([[Config for git-worktree.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n�\1\0\0\b\0\n\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0026\1\0\0'\3\5\0B\1\2\0029\2\6\1\18\4\2\0009\2\a\2'\5\b\0009\6\t\0B\6\1\0A\2\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\1\0\2\fmap_c_w\2\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\6\0\0196\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\0016\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\4\2B\2\1\2'\3\5\0&\2\3\2B\0\2\1K\0\1\0$.plugins_mappings.nvim-tree_map\rcore_loc\23.configs.nvim-tree\16plugins_loc\fgenearl\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-neoclip.lua
time([[Config for nvim-neoclip.lua]], true)
try_loadstring("\27LJ\2\n\\\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\21.configs.neoclip\16plugins_loc\fgenearl\frequire\0", "config", "nvim-neoclip.lua")
time([[Config for nvim-neoclip.lua]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n]\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\22.configs.gitsigns\16plugins_loc\fgenearl\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: vim-be-good
time([[Config for vim-be-good]], true)
try_loadstring("\27LJ\2\nj\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0&.plugins_mappings.vim-be-good_map\rcore_loc\fgenearl\frequire\0", "config", "vim-be-good")
time([[Config for vim-be-good]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\6\0\0196\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\0016\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\4\2B\2\1\2'\3\5\0&\2\3\2B\0\2\1K\0\1\0%.plugins_mappings.treesitter_map\rcore_loc\24.configs.treesitter\16plugins_loc\fgenearl\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\6\0\0196\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\0016\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\4\2B\2\1\2'\3\5\0&\2\3\2B\0\2\1K\0\1\0\".plugins_mappings.null-ls_map\rcore_loc\r.null_ls\flsp_loc\fgenearl\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: harpoon
time([[Config for harpoon]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\6\0\0196\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\0016\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\4\2B\2\1\2'\3\5\0&\2\3\2B\0\2\1K\0\1\0\".plugins_mappings.harpoon_map\rcore_loc\21.configs.harpoon\16plugins_loc\fgenearl\frequire\0", "config", "harpoon")
time([[Config for harpoon]], false)
-- Config for: vgit.nvim
time([[Config for vgit.nvim]], true)
try_loadstring("\27LJ\2\nY\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\18.configs.vgit\16plugins_loc\fgenearl\frequire\0", "config", "vgit.nvim")
time([[Config for vgit.nvim]], false)
-- Config for: vim-matchup
time([[Config for vim-matchup]], true)
try_loadstring("\27LJ\2\n`\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\25.configs.vim-matchup\16plugins_loc\fgenearl\frequire\0", "config", "vim-matchup")
time([[Config for vim-matchup]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n^\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\23.configs.telescope\16plugins_loc\fgenearl\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: impatient.nvim
time([[Config for impatient.nvim]], true)
try_loadstring("\27LJ\2\nL\0\0\3\0\3\0\t6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\19enable_profile\14impatient\frequire\0", "config", "impatient.nvim")
time([[Config for impatient.nvim]], false)
-- Config for: refactoring.nvim
time([[Config for refactoring.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\6\0\0196\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\0016\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\4\2B\2\1\2'\3\5\0&\2\3\2B\0\2\1K\0\1\0&.plugins_mappings.refactoring_map\rcore_loc\25.configs.refactoring\16plugins_loc\fgenearl\frequire\0", "config", "refactoring.nvim")
time([[Config for refactoring.nvim]], false)
-- Config for: vim-obsession
time([[Config for vim-obsession]], true)
try_loadstring("\27LJ\2\nh\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0$.plugins_mappings.obsession_map\rcore_loc\fgenearl\frequire\0", "config", "vim-obsession")
time([[Config for vim-obsession]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\nY\0\0\5\0\4\0\n6\0\0\0006\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\2'\3\3\0&\2\3\2B\0\2\1K\0\1\0\18.configs.todo\16plugins_loc\fgenearl\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType css ++once lua require("packer.load")({'cmp-emoji'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'ale', 'cmp-emoji', 'emmet-vim'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim', 'nvim-FeMaco.lua'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles(1) end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
