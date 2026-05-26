local parsers = {
    'bash',
    'css',
    'dockerfile',
    'ecma',
    'html',
    'html_tags',
    'javascript',
    'jsx',
    'lua',
    'markdown',
    'markdown_inline',
    'python',
    'sql',
    'svelte',
    'tsx',
}

local ftypes = {
    'css',
    'dockerfile',
    'html',
    'javascript',
    'javascriptreact',
    'lua',
    'markdown',
    'python',
    'sh',
    'sql',
    'svelte',
    'typescript',
    'typescriptreact',
}

return {  -- new config for the `main` branch
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter').install(parsers)
        vim.api.nvim_create_autocmd(
            'FileType',
            { pattern = ftypes, callback = function() vim.treesitter.start() end }
        )
    end
}
