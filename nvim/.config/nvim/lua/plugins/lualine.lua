return {
    'nvim-lualine/lualine.nvim',
    priority = 999,  -- right after colorscheme
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = function()
        require('lualine').setup({
            options = {
                theme = 'kanagawa',
                component_separators = {left = '', right = ''},  -- separe only by colors
                section_separators = {left = '', right = ''},    -- ...
                always_divide_middle = false,
                globalstatus = true,
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch'},
                lualine_c = {{
                    'filename',
                    file_status = true,
                    path = 3,
                    symbols = {modified = '●'}
                }},
                lualine_x = {},
                lualine_y = {'filetype'},
                lualine_z = {'location'}
            }
        })
    end
}
