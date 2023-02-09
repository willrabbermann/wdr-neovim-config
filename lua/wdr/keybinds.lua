local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- select all
map('n','<C-S-A>', 'ggVG')
-- yank selection to clipboard
map('x', '<C-c>', '"+y')
-- paste from clipboard
map('n', '<C-v>', '"+p')
-- cut to clipboard
map('x', '<C-x>', '"+d')
-- redo / undo
map('n', '<C-z>', ':undo<CR>')
map('n', '<C-S-Z>', ':redo<CR>')
-- make commands (normal mode) 
map('n', '<C-p>', ':make<CR>')
map('n', '<C-S-P>', ':make debug<CR>')
-- save / save exit / new tab / quit tab
map('n', '<C-s>', ':w<CR>')
map('i', '<C-s>', '<ESC>:w<CR>')
map('n', '<C-S-S>', ':wq<CR>')
map('i', '<C-S-S>', '<ESC>:wq<CR>')
map('n', '<LEADER>', ':tabnew<CR>')
map('n', '<C-q>', ':q<CR>')
map('i', '<C-q>', '<ESC>:q<CR>')
-- abandon file (dangerous)
map('n', '<A-S-L>', ':q!<CR>')
map('i', '<A-S-L>', '<ESC>:q!<CR>')
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
map('n', '<C-S-RIGHT>', 'dW')
map('n', '<C-S-LEFT>', 'diW')
-- clear high light || ctrl+l by default
map('n', '<S-TAB>', ':nohl<CR>')
-- reload theme.lua
map('n', '<F3>',
':luafile ~/.config/nvim/lua/wdr/theme.lua<CR>:echo "Reloaded theme.lua"<CR>')
-- NvimTreeToggle
map('n', '<F4>', ':NvimTreeToggle<CR>')
-- reload current file
map('n', '<F5>', ':e<CR>')

-- Shift+<<|>> shift line/visual selection tab
-- Ctrl+P during insert mode brings up the P Menu

-- Ctrl+[ normal mode
-- i insert mode
-- v visual mode
-- : command mode
-- / pattern search mode
