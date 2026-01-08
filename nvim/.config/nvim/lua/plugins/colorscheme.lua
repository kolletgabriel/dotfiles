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
                    lualine_c_normal = {link =  'linenr'},
                    TelescopeNormal = {bg = '#282727'},  -- same as `linenr` but no link since it overrides other values
                    TelescopeBorder = {bg = '#282727'},  -- ...
                    WinSeparator = {fg = '#282727'},     -- ...
                    CursorLine = {bg = '#1a1a1a'},
                }
            end
        })
        vim.cmd.colorscheme('kanagawa-dragon')
    end
}
