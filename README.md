# wdr-neovim-config
My neovim configuration with sane keybinds and custom themes.

```    
-- Pressing <F2> reloads this file.
-- ----------------------------
-- My custom theme (green, blue, cyan, purple, red)
-- (transparent)            = 0 <- (terminal colors only)
-- (transparent)            = 1
-- Dark teal                = 2
-- Dark blue                = 3
-- Dark                     = 4
-- Black                    = 5
-- ----------------------------
-- FTE replica              = 6
-- ----------------------------
-- FLAGS
-- -------------------------------------
-- enable function highlights
local functions_flag = 1
-- match line number bar to status bar
local match_status = 1
-- match current line number to status bar
local cur_ln_bg_statusbar = 1
-- disable line number background
local no_ln_bg = 1
-- disable current line number background
local no_cur_ln_bg = 1
-----------------------------------------
```
Set the theme number by editing ```theme.lua```

Todo: hexadecimal 0x# digit context colors in FTE
