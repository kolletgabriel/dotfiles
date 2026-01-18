return {
    'windwp/nvim-autopairs',
    -- event = 'InsertEnter',  -- eager loading so `autolist.nvim` overrides the keymap for `<CR>`
    config = function()
        require('nvim-autopairs').setup({
            map_c_w = true
        })
    end
}
