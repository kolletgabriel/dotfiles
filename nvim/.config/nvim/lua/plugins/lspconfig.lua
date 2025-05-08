return {
    'neovim/nvim-lspconfig',
    event = {'BufReadPre', 'BufNewFile'},  -- Lazy loading, pois precisa carregar depois do Mason.
    dependencies = {'hrsh7th/cmp-nvim-lsp'},  -- Carrega o "miniplugin" que integra o `cmp` ao LSP.
    config = function()
        require('lspconfig').pyright.setup({
            capabilities = require('cmp_nvim_lsp').default_capabilities()  -- Avisa ao lsp que com o plugin `cmp` o editor pode enviar sugestão de autocomplete.
        })
        require('lspconfig').marksman.setup({
            capabilities = require('cmp_nvim_lsp').default_capabilities() 
        })
    end,
    vim.diagnostic.config({  -- Leremos as mensagens de erro com o `trouble.nvim`.
        virtual_text = false,
        signs = false
    })
}
