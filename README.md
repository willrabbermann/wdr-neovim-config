# wdr-neovim-config
My personal neovim configuration and themes. 5 themes with varying background colors, 1 replica FTE editor theme.
I don't use Microsoft LSP because im a robot not an alien.
```
--		WILLIAM RABBERMANN'S NEOVIM THEME      
-------------------------------------------------
-- Themes      
-- ----------------------------      
-- TUI (transparent) cterm = 0
-- TUI (transparent) guic  = 1       
-- TUI (Soft blue)   guic  = 2   
-- Dark blue         guic  = 3    
-- Darker            guic  = 4       
-- Black             guic  = 5    
-- ----------------------------  
-- FTE replica		   guic	= 6
-- ----------------------------  
-- FLAGS
-------------------------------------------------
-- enable function highlights
local functions_flag = 1
local functions = '#76bfcd'
-- force line number bar to match status bar
-- 0 will use the theme's custom selection
local match_status = 0 
-------------------------------------------------
```
Set the theme number by editing ```theme.lua```

```TODO: add git sidebar colors```
