local k = vim.keymap

vim.g.mapleader = ' '  -- A tecla líder é <Space>.
vim.g.maplocalleader = ' '

k.set('n', '<Leader>nh', ':nohl<CR>', {silent = true})  -- Limpa as marcações nas palavras da busca.

k.set('n', '<Leader>ww', ':w<CR>')  -- Salva o buffer da janela.
k.set('n', '<Leader>qq', ':q!<CR>')  -- Fecha a janela.
k.set('n', '<Leader>wq', ':wq<CR>')  -- Salva o buffer da janela e a fecha.
k.set('n', '<Leader>W', ':wa<CR>')  -- Salva os buffers de todas as janelas.
k.set('n', '<Leader>Q', ':qa!<CR>') -- Fecha todas as janelas e buffers.
k.set('n', '<Leader>WQ', ':wqa<CR>')  -- Salva os buffers de todas as janelas e as fecha.

k.set('n', '<Tab>', ':bn<CR>', {silent = true})  -- Entra no buffer seguinte.
k.set('n', '<S-Tab>', ':bp<CR>', {silent = true})  -- Entra no buffer anterior.
k.set('n', '<Leader><Tab>', ':bd<CR>', {silent = true})  -- Fecha o buffer.
