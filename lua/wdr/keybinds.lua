-- Pressing <F3> reloads this file

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

function ToggleSpelling()
	if vim.go.spell then
		vim.o.spell = false
	else
		vim.o.spell = true
	end
end

-- Save and Quit
map_ni('<C-s>', ':w<CR>', {sleepins=1})
map_ni('<C-S-S>', ':wq<CR>')
map_ni('<C-q>', ':q<CR>')
-- Abandon changes (dangerous)
map('n', '<A-S-L>', ':q!<CR>')
map('n', '<A-S-E>', ':nohl<CR>:e!<CR>:echo \'Reloaded current file:\' expand(\'%:p\')<CR>')
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

-- Home & End Key
map_ni('<C-E>', '$', {ins=1})
map_ni('<C-H>', '0', {ins=1})
map('x', '<C-E>', '$')
map('x', '<C-H>', '0')
-- Next / Previous search pattern
map_ni('<A-RIGHT>','/<CR>', {ins=1})
map_ni('<A-LEFT>', '?<CR>', {ins=1})
map('n', 'n', '/<CR>') 
map('n', '<S-N>', '?<CR>') 
-- Normal mode key
map('', '<C-n>', '<ESC>')
map('i', '<C-n>', '<ESC>')
-- No highlight key
map('n', '<S-TAB>', ':nohl<CR><C-L>')
map('i', '<S-TAB>', '<ESC>:nohl<CR><C-L>i')
map('c', '<S-TAB>', '<ESC>')
map('x', '<S-TAB>', '<ESC>:nohl<CR><C-L>')
-- Faster vertical cursor move
map('', '<A-UP>', '<UP><UP><UP><UP>')
map('i', '<A-UP>', '<UP><UP><UP><UP>')
map('', '<A-DOWN>', '<DOWN><DOWN><DOWN><DOWN>')
map('i', '<A-DOWN>', '<DOWN><DOWN><DOWN><DOWN>')

-- Select current word
map('n', '8', 'viw')
-- Find all current word / selection
map_ni('<C-f>', 'viw"sy /<C-R>s<CR>?<CR>')
map('x', '<C-f>', '"sy /<C-R>s<CR>?<CR>')

-- Replace ANY occurrence of current (under cursor) word 
-- or replace any occurrence of visual selection
map('n', '<C-r>', 'viw"sy /<C-R>s<CR>?<CR> :%s//<C-R>s/gc<LEFT><LEFT><LEFT>', { noremap=true, silent=false })
map('x', '<C-r>', '"sy :%s/<C-R>s/<C-R>s/gc<LEFT><LEFT><LEFT>', { noremap=true, silent=false })
-- Replace definition of variable under cursor
-- Locally
map('n', 'gr', "gd[{V%::s/<C-R>///gc<left><left><left>", { noremap=true, silent=false })
-- Globally
map('n', 'gR', "gD:%s/<C-R>///gc<LEFT><LEFT><LEFT>", { noremap=true, silent=false })

-- Retab selected lines to tabstop in visual mode (default) (:set noexpandtab)
-- or retab to spaces with (:set expandtab)
map('x', '<C-T>', ':retab!<CR>', { noremap=true, silent=false })

-- Function keys
map_ni('<F1>', ':tabnew<CR>:help | only<CR>')
map_ni('<F2>',
':luafile ~/.config/nvim/lua/wdr/theme.lua<CR>:echo "Reloaded theme.lua"<CR>')
map_ni('<F3>',
':luafile ~/.config/nvim/lua/wdr/keybinds.lua<CR>:echo "Reloaded keybinds.lua"<CR>')
map_ni('<F4>', ':NvimTreeToggle<CR><C-L>')
map_ni('<F5>', ':make ', {ins=1}, { noremap=true, silent=false })
map_ni('<F6>', ':lua ToggleSpelling()<CR>', {ins=1})


-- Other keybinds
-- ==============
-- Shift+<<|>>  [visual/normal] shift line/visual selection tab
-- Ctrl+P       [insert] brings up the P Menu (lite auto completion)
-- Ctrl+Page    [any] switch tabs
-- Ctrl+X s		[insert] bring up spelling correction menu

-- Do not confuse ALT+SHIFT+Q with ALT+SHIFT+L|E 
-- if you are using x11-base/xorg-server


-- Changing Mode
-- -------------
-- ESC || Ctrl+[	normal mode
-- Ctrl+n			normal mode
-- i                insert mode
-- v                visual mode
-- :                command mode
-- /                pattern search mode


--         Mode  | Norm | Ins | Cmd | Vis | Sel | Opr | Term | Lang |
--Command        +------+-----+-----+-----+-----+-----+------+------+
--[nore]map      | yes  |  -  |  -  | yes | yes | yes |  -   |  -   |
--n[nore]map     | yes  |  -  |  -  |  -  |  -  |  -  |  -   |  -   |
--[nore]map!     |  -   | yes | yes |  -  |  -  |  -  |  -   |  -   |
--i[nore]map     |  -   | yes |  -  |  -  |  -  |  -  |  -   |  -   |
--c[nore]map     |  -   |  -  | yes |  -  |  -  |  -  |  -   |  -   |
--v[nore]map     |  -   |  -  |  -  | yes | yes |  -  |  -   |  -   |
--x[nore]map     |  -   |  -  |  -  | yes |  -  |  -  |  -   |  -   |
--s[nore]map     |  -   |  -  |  -  |  -  | yes |  -  |  -   |  -   |
--o[nore]map     |  -   |  -  |  -  |  -  |  -  | yes |  -   |  -   |
--t[nore]map     |  -   |  -  |  -  |  -  |  -  |  -  | yes  |  -   |
--l[nore]map     |  -   | yes | yes |  -  |  -  |  -  |  -   | yes  |
