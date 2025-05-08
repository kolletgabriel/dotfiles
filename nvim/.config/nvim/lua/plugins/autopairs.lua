return {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',  -- Só carrega no modo insert.
    config = function()
        require('nvim-autopairs').setup({
            check_ts = true  -- Recorre ao Treesitter pra incrementar a funcionalidade.
        })
    end
}
