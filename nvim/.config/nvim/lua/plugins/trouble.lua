return {
    "folke/trouble.nvim",
    -- Lazy load com os atalhos abaixo:
    keys = {
        {'<Leader>xx', ':Trouble diagnostics toggle<Cr>'},
        {'<Leader>xX', ':Trouble diagnostics toggle filter.buf=0<Cr>'},
        {'<Leader>xs', ':Trouble symbols toggle focus=false<Cr>'},
        {'<Leader>xl', ':Trouble lsp toggle focus=false win.position=right<Cr>'},
        {'<Leader>xL', ':Trouble loclist toggle<Cr>'},
        {'<Leader>xQ', ':Trouble qflist toggle<Cr>'},
    },
    config = function()
        require('trouble').setup({})
    end
}
