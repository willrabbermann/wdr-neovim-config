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
map('', '<C-z>', ':undo<CR>')
map('', '<C-S-Z>', ':redo<CR>')
map('', '<C-s>', ':w<CR>')
map('', '<C-m>', ':make<CR>')
map('', '<C-d>', ':make debug<CR>')
map('', '<leader>', ':tabnew<CR>')
map('', '<C-q>', ':q<CR>')
map('', '<F12>', ':luafile ~/.config/nvim/lua/wdr/theme.lua<CR>:echo "Reloaded theme.lua"<CR>')

-- Clear high light
-- press ctrl+l by default

-- Shift line/visual selection tab
-- press shift+<|>

-- Ctrl+P mid function type will bring up autocomplete list

