return {
    'stevearc/oil.nvim',
    priority = 998,
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = function()
        require('oil').setup({})
        vim.keymap.set('n', '<Leader>E', ':Oil<CR>', {silent = true, desc = 'browse the file system with Oil'})
    end
}
