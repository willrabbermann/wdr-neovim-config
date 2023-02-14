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
local FUNCTIONS_HIGHLIGHT = 1
-- match line number bar to status bar
local MATCH_STATUS_HIGHLIGHT = 0
-- match current line number to status bar
local MATCH_CURRENT_LN_BG_STATUS = 0
-- disable line number background
local DISABLE_SIDEBAR_BG = 1
-- disable current line number background
local DISABLE_CURRENT_LN_BG = 0
-----------------------------------------
```
Set the theme number by editing ```theme.lua```

Todo: hexadecimal 0x# digit context colors in FTE
