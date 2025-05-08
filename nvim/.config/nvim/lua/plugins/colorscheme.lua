return {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
        require('kanagawa').setup({
            compile = true,
            transparent = true,
            theme = 'dragon',
            overrides = function()
                return {
                    bufferlinefill = {link =  'linenr'},
                    lualine_c_normal = {link =  'linenr'},
                    cursorline = {bg = '#1a1a1a'}
                }
            end
        })
        vim.cmd.colorscheme('kanagawa-dragon')
    end
}
