return {
    'williamboman/mason.nvim',
    dependencies = {'williamboman/mason-lspconfig.nvim'},
    config = function ()
        require('mason').setup({})
        -- require('mason-lspconfig').setup({  -- Unneeded since 0.11!
        --     ensure_installed = {'pyright'}
        -- })
    end,
    vim.keymap.set('n', '<Leader>M', ':Mason<CR>', {silent = true}) -- Cria um atalho pra abrir o Mason.
}
