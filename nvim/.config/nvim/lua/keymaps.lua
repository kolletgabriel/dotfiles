-- keymaps for plugins are defined in their respective configs

local k = vim.keymap

k.set('n', '<Leader>nh', ':nohl<CR>', {silent = true, desc = 'clear search highlights'})

k.set('n', '<Leader>ww', ':w<CR>',   {desc = "save current window's buffer"})
k.set('n', '<Leader>qq', ':q!<CR>',  {desc = "close current window's buffer"})
k.set('n', '<Leader>wq', ':wq<CR>',  {desc = "save current window's buffer and close current window"})
k.set('n', '<Leader>WW', ':wa<CR>',  {desc = 'save all open buffers'})
k.set('n', '<Leader>QQ', ':qa!<CR>', {desc = 'close all windows'})
k.set('n', '<Leader>WQ', ':wqa<CR>', {desc = 'salve all open buffers and close all windows'})

k.set('n', '<Tab>',         ':bn<CR>', {silent = true, desc = 'go to next buffer on list'})
k.set('n', '<S-Tab>',       ':bp<CR>', {silent = true, desc = 'go to previous buffer on list'})
k.set('n', '<Leader><Tab>', ':bd<CR>', {silent = true, desc = 'close current buffer (but not the window)'})

k.set('v', '<', '<gv', {silent = true, desc = 'indent left and reselect'})
k.set('v', '>', '>gv', {silent = true, desc = 'indent right and reselect'})

k.set('n', '<C-Up>',    ':resize +2<CR>',          {silent = true, desc = 'increase window height'})
k.set('n', '<C-Down>',  ':resize -2<CR>',          {silent = true, desc = 'decrease window height'})
k.set('n', '<C-Left>',  ':vertical resize -2<CR>', {silent = true, desc = 'decrease window width'})
k.set('n', '<C-Right>', ':vertical resize +2<CR>', {silent = true, desc = 'increase window width'})

k.set('n',       'x',         '"_x', {desc = 'delete charwise w/o yanking'})
k.set({'n','v'}, '<Leader>d', '"_d', {desc = 'delete operation w/o yanking'})
