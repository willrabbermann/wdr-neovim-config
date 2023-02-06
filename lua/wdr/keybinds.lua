local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- select all
map('n','<C-S-a>', 'ggVG')
-- yank selection to clipboard
map('x', '<C-c>', '"+y')
-- paste from clipboard
map('n', '<C-v>', '"+p')
-- cut to clipboard
map('x', '<C-x>', '"+d')
-- NvimTreeToggle
map('n', '<F4>', ':NvimTreeToggle<CR>')
-- redo / undo
map('n', '<C-z>', ':undo<CR>')
map('n', '<C-S-Z>', ':redo<CR>')
-- make commands (normal mode) 
map('n', '<C-p>', ':make<CR>')
map('n', '<C-S-P>', ':make debug<CR>')
-- save / new tab / quit tab
map('n', '<C-s>', ':w<CR>')
map('n', '<LEADER>', ':tabnew<CR>')
map('n', '<C-q>', ':q<CR>')
-- map home / end keys
map('n', '<C-E>', '$')
map('n', '<C-H>', '0')
-- swap case of word
map('n', '<C-UP>', 'viwU')
map('n', '<C-DOWN>', 'viwu')
-- swap case of char
map('n', '<S-UP>', '~')
map('n', '<S-DOWN>', '~')
-- delete word forwards / backwards
map('n', '<C-S-RIGHT>', 'diw')
map('n', '<C-S-LEFT>', 'daw')
-- clear high light || ctrl+l by default
map('n', '<S-TAB>', ':nohl<CR>')
-- reload theme.lua
map('n', '<F14>',
':luafile ~/.config/nvim/lua/wdr/theme.lua<CR>:echo "Reloaded theme.lua"<CR>')

-- Shuft+<<|>> shift line/visual selection tab
-- Ctrl+P during insert mode brings up P-Menu / auto completion list
-- Ctrl+[ normal mode
