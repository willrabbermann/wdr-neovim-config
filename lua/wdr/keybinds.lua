local function map(mode, lhs, rhs, opts)
	local options = { noremap=true, silent=true }
	if opts then
		options = vim.tbl_extend('force', options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local function map_ni(lhs, rhs, args, opts)	
	if args then
		if args.sleepins then
			map('i', lhs, '<ESC>'..rhs..':1.5sleep<CR><INSERT>', opts)
		elseif args.ins then
			map('i', lhs, '<C-o>'..rhs, opts)
		end
	else
		map('i', lhs, '<ESC>'..rhs, opts)
	end
		map('n', lhs, rhs, opts)
end

-- Save and Quit
map_ni('<C-s>', ':w<CR>', {sleepins=1})
map_ni('<C-S-S>', ':wq<CR>')
map_ni('<C-q>', ':q<CR>')
-- Abandon changes (dangerous)
map_ni('<A-S-L>', ':q!<CR>')
map_ni('<A-S-E>', ':nohl<CR>:e!<CR>', {ins=1})
map('x', '<A-S-E>', '<ESC>:nohl<CR>:e!<CR>')
-- New tab
map('n', '<LEADER>', ':tabnew<CR>')

-- Copy / Cut / Paste
map('x', '<C-c>', '"+y')
map('x', '<C-x>', '"+d')
map_ni('<C-v>', '"+p')
map('c', '<C-v>', '<C-R>"')
-- Undo / Redo
map('n', '<C-z>', ':undo<CR>')
map('n', '<C-S-Z>', ':redo<CR>')

-- Select all
map('n','<C-S-A>', 'ggVG')
-- Swap case of word
map('n', '<C-UP>', 'viwU')
map('n', '<C-DOWN>', 'viwu')
-- Swap case of char
map('n', '<S-UP>', '~')
map('n', '<S-DOWN>', '~')
-- Delete word forwards / backwards
map('n', '<C-S-RIGHT>', 'dW')
map('n', '<C-S-LEFT>', 'diW')

-- Better Home & End Key
map_ni('<C-E>', '$', {ins=1})
map_ni('<C-H>', '0', {ins=1})
map('x', '<C-E>', '$')
map('x', '<C-H>', '0')
-- Better Next / Previous search pattern
map_ni('<A-DOWN>', '/<CR>', {ins=1})
map_ni('<A-UP>', '?<CR>', {ins=1})
map_ni('<A-RIGHT>','/<CR>', {ins=1})
map_ni('<A-LEFT>', '?<CR>', {ins=1})
-- Better Normal mode key
map('', '<C-n>', '<ESC>')
map('i', '<C-n>', '<ESC>')
-- Better no highlight
map_ni('<S-TAB>', ':nohl<CR>', {ins=1})
map('x', '<S-TAB>', '<ESC>')
-- Faster vertical cursor move
map('', '<C-S-UP>', '<UP><UP><UP><UP><UP><UP>')
map('i', '<C-S-UP>', '<UP><UP><UP><UP><UP><UP>')
map('', '<C-S-DOWN>', '<DOWN><DOWN><DOWN><DOWN><DOWN><DOWN>')
map('i', '<C-S-DOWN>', '<DOWN><DOWN><DOWN><DOWN><DOWN><DOWN>')

-- Select current word
map('n', '8', 'viw')
-- Find all current word / selection
map_ni('<C-f>', '*# viw"sy')
map('x', '<C-f>', '"sy /<C-R>s<CR>')
-- Search & Replace current word / selection
map_ni('<C-r>', '<ESC><ESC>*# viw"sy :%s///g<LEFT><LEFT><C-R>s', {ins=1}, { noremap=true, silent=false })
map('x', '<C-r>', '"sy :%s/<C-R>s//g<LEFT><LEFT><C-R>s', { noremap=true, silent=false })

-- Retab selected lines to tabstop in visual mode
map('x', '<C-S-T>', ':retab!<CR>', { noremap=true, silent=false })

-- Function keys
map('n', '<F2>',
':luafile ~/.config/nvim/lua/wdr/theme.lua<CR>:echo "Reloaded theme.lua"<CR>')
map('n', '<F3>',
':luafile ~/.config/nvim/lua/wdr/keybinds.lua<CR>:echo "Reloaded keybinds.lua"<CR>')
map('n', '<F4>', ':NvimTreeToggle<CR>')
map_ni('<F5>', ':make ', {ins=1}, { noremap=true, silent=false })


-- Other keybinds
-- ==============
-- F1 help.txt	[insert/normal]
-- Shift+<<|>>	[visual/normal] shift line/visual selection tab
-- Ctrl+P		[insert] brings up the P Menu (lite auto completion)

-- Changing Mode
-- -------------
-- ESC || Ctrl+[	normal mode
-- I				insert mode
-- v				visual mode
-- :				command mode
-- /				pattern search mode
