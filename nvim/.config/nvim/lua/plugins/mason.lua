return {
    'williamboman/mason.nvim',
    config = function ()
        require('mason').setup({})
        vim.keymap.set('n', '<Leader>M', ':Mason<CR>', {silent = true, desc = 'opens Mason'})
    end,
}
