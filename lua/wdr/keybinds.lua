-------------------------------------------------
-- Functionally define keymaps
-------------------------------------------------
local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-------------------------------------------------
-- Will's custom neovim keybinds
-------------------------------------------------

-- select all
map('n','<C-a>', 'ggVG')
-- yank visual selection to clipboard
map('x', '<C-c>', '"+y')
-- NvimTreeToggle
map('n', '<F2>', ':NvimTreeToggle<CR>')

-- some terminals dont sent out case sensitive key combinations
-- Alacritty's Z key must be remapped for this to work 
-- { key: Z,         mods: Control|Shift,               chars: "\x1b[90;6u" }
-- undo
map('', '<C-z>', ':undo<CR>')
-- redo
map('', '<C-S-Z>', ':redo<CR>')

-- (re)source init.lua
map('', '<F12>', ':luafile %<CR>:echo "(re)sourced ~/.config/nvim/init.lua"<CR>')

-- Clear high light
-- press ctrl+l by default

-- Shift line/visual selection tab
-- press shift+<|>

