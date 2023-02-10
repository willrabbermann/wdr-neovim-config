-------------------------------------------------
--		WILLIAM RABBERMANN'S NEOVIM THEME
-------------------------------------------------

local theme_number = 5

-- Themes
-- ----------------------------
-- TUI (transparent) cterm	= 0
-- TUI (transparent) guic	= 1
-- TUI (Soft blue)	 guic	= 2
-- Dark blue		 guic	= 3
-- Darker			 guic	= 4
-- Black			 guic	= 5
-- ----------------------------
-- FTE replica		 guic	= 6
-- ----------------------------
-- FLAGS
-- -------------------------------------
-- enable function highlights

local functions_flag = 1
-- force line number bar to match status bar
-- 0 will use the theme's custom selection
local match_status = 0
-----------------------------------------

local normal = '#c0c5ce'
local statusbar = '#262626'
local sidebar_cursor = '#2d3d42'
local functions = '#76bfcd'

local black = '#111717'
local darkgrey = '#999999'
local grey = '#808080'
local green = '#34ea90'
local blue = '#729fcf'
local lightcyan = '#34e2e2'
local cyan = '#A0B2BB'
local magenta = '#ad7fa8'
local lightmagenta ='#dcb6d5'
local darkyellow = '#c3743f'
local red = '#bf616a'

vim.opt.termguicolors = true
local background
if (theme_number == 0) 
	then
	vim.opt.termguicolors = false
elseif (theme_number == 2)
	then
	background = '#2b303b'
elseif (theme_number == 3) 
	then
	background = '#222526'
elseif (theme_number == 4)
	then
	background = '#15181D'
elseif (theme_number == 5 or theme_number == 6)
	then
	background = '#000000'
end

local sidebar 
if (theme_number == 4 or match_status == 1)
	then
	sidebar = statusbar 
elseif (theme_number == 5 or theme_number == 6)
	then
	sidebar = '#000000'
	sidebar_cursor = '#202020'
else
	sidebar = '#242934'
end

if (theme_number < 6)
	then	

vim.api.nvim_set_hl(0, "Normal",			{ ctermfg = "LightGrey", fg = normal, bg = background } )

-- Line number & current cursor line highlight
vim.o.cursorline = true
vim.api.nvim_set_hl(0, 'LineNr',			{ ctermfg = "DarkGrey", fg = darkgrey, bg = sidebar } )
vim.api.nvim_set_hl(0, 'CursorLineNr',		{ ctermfg = "White", fg = "#DDDDDD", bg =  sidebar_cursor } )
vim.api.nvim_set_hl(0, 'CursorLine',		{ } ) -- disable cursor underline

-- Search highlights
vim.api.nvim_set_hl(0, 'Search',			
	{ ctermbg = "DarkGrey", ctermfg = "White", fg = "#000000", bg = '#999999' } )
vim.api.nvim_set_hl(0, 'IncSearch',			
	{ ctermbg = "White", ctermfg = "Black",   fg = black, bg = "#FFFFFF" } )
vim.api.nvim_set_hl(0, 'Visual',			{ link = 'Search' } )

vim.api.nvim_set_hl(0, 'MatchParen',		{ bold = 1, underline = 1 } )

vim.api.nvim_set_hl(0, 'SpecialKey',		{ ctermfg = Normal, fg = normal } )

-- Special is apparently brackets {} 
vim.api.nvim_set_hl(0, 'Special',			{ ctermfg = Normal, fg = cyan } )
vim.api.nvim_set_hl(0, 'SpecialChar',		{ ctermfg = "LightMagenta", fg = lightmagenta } )
-- delimiter is your parenthesis ()
vim.api.nvim_set_hl(0, 'Delimiter',			{ ctermfg = Normal, fg = cyan } )
vim.api.nvim_set_hl(0, 'luaParen',			{ link = 'Delimiter' } )
vim.api.nvim_set_hl(0, 'cCppParen',			{ link = 'Delimiter' } )
vim.api.nvim_set_hl(0, 'cCppBracket',		{ link = 'Delimiter' } )
vim.api.nvim_set_hl(0, 'cBlock',			{ link = 'Delimiter' } )
vim.api.nvim_set_hl(0, 'cParen',			{ link = 'Delimiter' } )
vim.api.nvim_set_hl(0, 'cBracket',			{ link = 'Delimiter' } )



vim.api.nvim_set_hl(0, 'Structure',			{ ctermfg = Normal, fg = cyan } )
vim.api.nvim_set_hl(0, 'Operator',			{ ctermfg = Normal, fg = cyan } )
vim.api.nvim_set_hl(0, 'Identifier',		{ ctermfg = Normal, fg = normal } )
vim.api.nvim_set_hl(0, 'shShellVariables',	{ ctermfg = Normal, fg = normal } )

vim.api.nvim_set_hl(0, 'Comment',			{ ctermfg = "Blue", fg = blue } )

vim.api.nvim_set_hl(0, 'Constant',			{ ctermfg = Normal, fg = normal } )
vim.api.nvim_set_hl(0, 'Number',			{ ctermfg = "Red", fg = red } )
vim.api.nvim_set_hl(0, 'String',			{ ctermfg = "Magenta", fg = magenta } )
vim.api.nvim_set_hl(0, 'Character',			{ ctermfg = "LightMagenta", fg = lightmagenta } )
vim.api.nvim_set_hl(0, 'Boolean',			{ ctermfg = "Red", fg = red } )
vim.api.nvim_set_hl(0, 'Type',				{ ctermfg = "White", fg = green } )
vim.api.nvim_set_hl(0, 'PreProc',			{ ctermfg = "LightCyan", fg = lightcyan } )
vim.api.nvim_set_hl(0, 'Statement',			{ ctermfg = "Green", fg = green } )
vim.api.nvim_set_hl(0, 'Keyword',			{ ctermfg = "White", fg = green } )

if (functions_flag == 1)
	then
	vim.api.nvim_set_hl(0, 'Function',		{ ctermfg = "LightBlue", fg = functions } )
else
	vim.api.nvim_set_hl(0, 'Function',		{ ctermfg = Normal, fg = normal } )
end

vim.api.nvim_set_hl(0, 'Todo',				{ ctermfg = "DarkYellow", fg = darkyellow } )

vim.api.nvim_set_hl(0, 'Title',				{	fg = normal, bg = statusbar } )

vim.api.nvim_set_hl(0, 'Directory',			{	ctermfg = Normal, fg = cyan } )

vim.api.nvim_set_hl(0, 'TabLineSel',		{ bold = 0 } )
vim.api.nvim_set_hl(0, 'TabLine',			{ bg = statusbar, underline = 1} )
vim.api.nvim_set_hl(0, 'TabLineFill',		{ bg = statusbar, underline = 0} )
vim.api.nvim_set_hl(0, 'WarningMsg',		{ ctermbg = "DarkYellow", ctermfg = 'Black', fg = normal, bg = statusbar } )
vim.api.nvim_set_hl(0, 'ErrorMsg',			{ ctermbg = "Red", ctermfg = 'Black', fg = black, bg = red } )
vim.api.nvim_set_hl(0, 'Question',			{ ctermbg = 'DarkGreen', ctermfg = 'Black', italic = 1, 
											fg = normal, bg = statusbar })
vim.api.nvim_set_hl(0, 'Pmenu',				{ ctermbg = 0, bg = statusbar, sp = 'NONE' } )
vim.api.nvim_set_hl(0, 'PmenuSel',			{ ctermbg = 0, bg = Black, fg = White } )
vim.api.nvim_set_hl(0, 'NonText',			{ ctermfg = 0, fg = background, bg = background, sp = 'NONE' } )
vim.api.nvim_set_hl(0, 'MoreMsg',			{ fg = normal } )

vim.api.nvim_set_hl(0, 'ModeMsg',			{ ctermfg = 0, fg = background, bg = background, sp = 'NONE' } ) -- disable ModeMsg
vim.api.nvim_set_hl(0, 'StatusLine',		{ ctermfg = 0, fg = background, bg = background, sp = 'NONE' } ) -- disable StatusLine

-- FTE theme
elseif (theme_number == 6)
	then	

functions = '#27dbdd'
normal = '#b6b6b6'

vim.api.nvim_set_hl(0, "Normal",			{ ctermfg = "LightGrey", fg = normal, bg = background } )

-- Line number & current cursor line highlight
vim.o.cursorline = true
vim.api.nvim_set_hl(0, 'LineNr',			{ ctermfg = "DarkGrey", fg = darkgrey, bg = sidebar } )
vim.api.nvim_set_hl(0, 'CursorLineNr',		{ ctermfg = "White", fg = "#DDDDDD", bg =  sidebar_cursor } )
vim.api.nvim_set_hl(0, 'CursorLine',		{ } ) -- disable cursor underline

-- Search highlights
vim.api.nvim_set_hl(0, 'Search',			
	{ ctermbg = "DarkGrey", ctermfg = "White", bg = '#00a1a4'} )
vim.api.nvim_set_hl(0, 'IncSearch',			
	{ ctermbg = "DarkGrey", ctermfg = "LightCyan",	fg = black, bg = "#FFFFFF" } )
vim.api.nvim_set_hl(0, 'Visual',			{ link = 'Search' } )

vim.api.nvim_set_hl(0, 'MatchParen',		{ bold = 1, underline = 1 } )

vim.api.nvim_set_hl(0, 'SpecialKey',		{ ctermfg = Normal, link = 'Delimiter' } )

-- Special is apparently brackets {} and special characters (escape seqs)
vim.api.nvim_set_hl(0, 'Special',			{ ctermfg = Normal, fg = '#37908d' } )
vim.api.nvim_set_hl(0, 'SpecialChar',		{ ctermfg = Normal, fg = '#e8f135' } )
-- delimiter is your parenthesis ()
vim.api.nvim_set_hl(0, 'Delimiter',			{ ctermfg = "DarkGreen", fg = '#37908d' } )
vim.api.nvim_set_hl(0, 'luaParen',			{ link = 'Delimiter' } )
vim.api.nvim_set_hl(0, 'cCppParen',			{ link = 'Delimiter' } )
vim.api.nvim_set_hl(0, 'cCppBracket',		{ link = 'Delimiter' } )
vim.api.nvim_set_hl(0, 'cBlock',			{ link = 'Delimiter' } )
vim.api.nvim_set_hl(0, 'cParen',			{ link = 'Delimiter' } )
vim.api.nvim_set_hl(0, 'cBracket',			{ link = 'Delimiter' } )



vim.api.nvim_set_hl(0, 'Structure',			{ ctermfg = Normal, fg = '#37908d' } )
vim.api.nvim_set_hl(0, 'Operator',			{ ctermfg = Normal, fg = '#37908d' } )
vim.api.nvim_set_hl(0, 'Identifier',		{ ctermfg = Normal, fg = normal } )
vim.api.nvim_set_hl(0, 'shShellVariables',	{ ctermfg = Normal, fg = normal } )

vim.api.nvim_set_hl(0, 'Comment',			{ ctermfg = "Blue", fg = '#999c2e' } )

vim.api.nvim_set_hl(0, 'Constant',			{ ctermfg = "Magenta", fg = normal } )
vim.api.nvim_set_hl(0, 'Number',			{ ctermfg = "Magenta", fg = '#bd101c' } )
vim.api.nvim_set_hl(0, 'String',			{ ctermfg = "Magenta", fg = '#e8f135' } )
vim.api.nvim_set_hl(0, 'Character',			{ ctermfg = "Magenta", fg = '#e8f135' } )
vim.api.nvim_set_hl(0, 'Boolean',			{ ctermfg = "Magenta", fg = '#bd101c' } )
vim.api.nvim_set_hl(0, 'Type',				{ ctermfg = "White", fg = '#ffffff' } )
vim.api.nvim_set_hl(0, 'PreProc',			{ ctermfg = "LightCyan", fg = '#00ec00' } )
vim.api.nvim_set_hl(0, 'Statement',			{ ctermfg = "White", fg = '#ffffff' } )
vim.api.nvim_set_hl(0, 'Keyword',			{ ctermfg = "White", fg = '#ffffff' } )

if (functions_flag == 1)
	then
	vim.api.nvim_set_hl(0, 'Function',			{ ctermfg = "LightBlue", fg = functions } )
else
	vim.api.nvim_set_hl(0, 'Function',			{ ctermfg = Normal, fg = normal } )
end

vim.api.nvim_set_hl(0, 'Todo',				{ ctermfg = "DarkYellow", fg = darkyellow } )

vim.api.nvim_set_hl(0, 'Title',				{	fg = normal, bg = statusbar } )

vim.api.nvim_set_hl(0, 'Directory',			{	fg = '#37908d' } )

vim.api.nvim_set_hl(0, 'TabLineSel',		{ bold = 0 } )
vim.api.nvim_set_hl(0, 'TabLine',			{ bg = statusbar, underline = 1} )
vim.api.nvim_set_hl(0, 'TabLineFill',		{ bg = statusbar, underline = 0} )
vim.api.nvim_set_hl(0, 'WarningMsg',		{ ctermbg = "DarkYellow", ctermfg = 'Black', fg = normal, bg = statusbar } )
vim.api.nvim_set_hl(0, 'ErrorMsg',			{ ctermbg = "Red", ctermfg = 'Black', fg = black, bg = '#bd101c' } )
vim.api.nvim_set_hl(0, 'Question',			{ ctermbg = 'DarkGreen', ctermfg = 'Black', italic = 1, 
											  fg = normal, bg = statusbar })
vim.api.nvim_set_hl(0, 'Pmenu',				{ ctermbg = 0, bg = statusbar, sp = 'NONE' } )
vim.api.nvim_set_hl(0, 'PmenuSel',			{ ctermbg = 0, bg = Black, fg = White } )
vim.api.nvim_set_hl(0, 'NonText',			{ ctermfg = 0, fg = background, bg = background, sp = 'NONE' } )
vim.api.nvim_set_hl(0, 'MoreMsg',			{ fg = normal } )

vim.api.nvim_set_hl(0, 'ModeMsg',			{ ctermfg = 0, fg = background, bg = background, sp = 'NONE' } ) -- disable ModeMsg
vim.api.nvim_set_hl(0, 'StatusLine',		{ ctermfg = 0, fg = background, bg = background, sp = 'NONE' } ) -- disable StatusLine

end


-- Set Git sidebar
vim.api.nvim_set_hl(0, 'DiffAdd',			{ ctermfg = "Green",  fg = green, bg = sidebar } )
vim.api.nvim_set_hl(0, 'DiffChange',		{ ctermfg = "Yellow", fg = darkyellow, bg = sidebar } )
vim.api.nvim_set_hl(0, 'DiffDelete',		{ ctermfg = "Red", fg = red, bg = sidebar} )
vim.api.nvim_set_hl(0, 'SignColumn',		{ ctermfg = "DarkGrey", bg = sidebar} )
