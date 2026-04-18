-- 1. Den nativen Byte-Code-Loader aktivieren (extrem wichtig für Speed!)
if vim.loader then
  vim.loader.enable()
end

-- 2. Grundeinstellungen
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.title = true 

vim.opt.titlestring = "%{fnamemodify(getcwd(), ':t')}"
-- 3. Everforest konfigurieren
-- Da es im 'start'-Ordner liegt, ist es bereits im Runtimepath.
-- Wir müssen nur die Optionen setzen, BEVOR wir es laden.
vim.g.everforest_background = 'medium'
vim.g.everforest_better_performance = 1
vim.pack.add({
  { src = 'https://github.com/neanias/everforest-nvim' },	
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' }, -- optional
  { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
})
-- 4. Das Theme aktivieren:
require('everforest').setup({
  -- 0 = solide, 1 = semi-transparent, 2 = komplett transparent
  transparent_background_level = 2, 
})
vim.cmd.colorscheme("everforest")

  -- disable netrw at the very start of your init.lua
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1

  -- optionally enable 24-bit colour
  vim.opt.termguicolors = true

  -- empty setup using defaults
  require("nvim-tree").setup()

  -- OR setup with a config

  ---@type nvim_tree.config
  local config = {
    sort = {
      sorter = "case_sensitive",
    },
    view = {
      width = 30,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  }
  require("nvim-tree").setup(config)
