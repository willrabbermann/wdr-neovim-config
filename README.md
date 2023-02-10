# wdr-neovim-config
My neovim configuration with sane keybinds and custom themes.

```    
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
-- FTE replica       guic  = 6
-- ----------------------------  
-- FLAGS
-------------------------------------------------
-- enable function highlights
local functions_flag = 1
-- force line number bar to match status bar
-- 0 will use the theme's custom selection
local match_status = 0 
-------------------------------------------------
```
Set the theme number by editing ```theme.lua```

Todo: hexadecimal 0x# digit context colors in FTE
