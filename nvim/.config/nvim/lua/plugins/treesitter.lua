return {
    'nvim-treesitter/nvim-treesitter',
    event = {'BufReadPre', 'BufNewFile'},  -- Carrega o plugin somente durante a leitura de um arquivo não vazio.
    build = ':TSUpdate',  -- Atualiza os parsers instalados a cada update do plugin.
    config = function()
        require('nvim-treesitter.configs').setup({
            highlight = {enable = true},  -- Difícil de notar diferença usando o colorscheme padrão do Neovim.
            indent = {enable = true},
            -- Declarar na tabela abaixo os parsers desejados:
            ensure_installed = {
                'python',
                'sql',
                'lua',
                'dockerfile',
                'bash',
                'c',
                'markdown'
            }
        })
    end
}
