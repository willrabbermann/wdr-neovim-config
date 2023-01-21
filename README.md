# wdr-neovim-config
My (minimal) (no lsp or autocomplete) neovim configuration and themes

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


FTE & My theme

![6_5](https://user-images.githubusercontent.com/105755092/212413375-31a35a48-eb90-47d8-9a1e-92da31a8db42.png)

Blue backgrounds

![4_3](https://user-images.githubusercontent.com/105755092/212413401-14446592-15ff-4e37-86f5-e9d1117e08fb.png)
![2_1](https://user-images.githubusercontent.com/105755092/212413413-3326a3f8-bdfe-4dbc-b9a6-0318a5fd6dab.png)

Transparent
(cterm colors only, limited by your terminal's color palette!)
![0](https://user-images.githubusercontent.com/105755092/212415920-9f8010b2-99c3-46c2-810c-c9f6da425155.png)

Todo: hexadecimal 0x# digit context colors in FTE
