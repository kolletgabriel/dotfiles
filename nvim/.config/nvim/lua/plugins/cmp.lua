return {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    config = function()
        require('cmp').setup({
            mapping = {
                -- Importante declarar `Ctrl+n` e `Ctrl+p` pra selecionar as opções disponíveis pra sobrepor o autocomplete nativo do editor:
                ['<C-n>'] = require('cmp').mapping.select_next_item(),
                ['<C-p>'] = require('cmp').mapping.select_prev_item(),
                ['<C-Cr>'] = require('cmp').mapping.confirm({select = true}), -- `select = true` recorre à 1st opção se nada for explicitamente selecionado.
                ['<C-e>'] = require('cmp').mapping.abort(),
            },
            -- A tabela abaixo lista todas as "fontes" das quais o plugin puxa as sugestões de autocomplete.
            sources = {
                {name = 'nvim_lsp'},
            }
        })
    end
}
