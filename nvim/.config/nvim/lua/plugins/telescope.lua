local k = vim.keymap

return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',  -- Branch do repositório recomendado no guia.
    dependencies = {'nvim-lua/plenary.nvim'},
    -- Lazy load com o comando ou atalhos abaixo:
    cmd = 'Telescope',
    keys = {
        {'<leader>ff', ':Telescope find_files<CR>'},
        {'<leader>fg', ':Telescope live_grep<CR>'}, 
        {'<leader>fb', ':Telescope buffers<CR>'},
    },
    config = function()
        require('telescope').setup({
            pickers = {
                -- Configura o plugin de acordo com a funcionalidade usada:
                find_files = {previewer = false, theme = 'dropdown'},
                live_grep = {theme = 'dropdown'},
                buffers = {previewer = false, theme = 'dropdown'},
            }
        })
    end,
    vim.keymap.set('n', '<Leader>T', ':Telescope<Cr>', {silent = true})  -- Cria um atalho pra abrir o Telescope.
}
