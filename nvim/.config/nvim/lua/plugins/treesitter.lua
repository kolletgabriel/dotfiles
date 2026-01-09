local parsers = {
    'bash',
    'dockerfile',
    'lua',
    'markdown',
    'markdown_inline',
    'python',
    'sql',
}

local ftypes = {
    'sh',
    'dockerfile',
    'lua',
    'markdown',
    'python',
    'sql',
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
