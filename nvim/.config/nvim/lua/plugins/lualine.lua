return {
    'nvim-lualine/lualine.nvim',
    priority = 998,
    config = function()
        require('lualine').setup({
            options = {
                theme = 'kanagawa',
                component_separators = {left = '', right = ''},  -- Separadores vazios ainda mantém as cores das seções.
                section_separators = {left = '', right = ''},
                always_divide_middle = false,  -- Permite que uma seção ultrapasse o meio da tela.
                globalstatus = true,  -- Apenas uma linha por aba.
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch'},
                lualine_c = {{'filename', file_status = false, path = 3}},  -- `path = 3` mostra o caminho absoluto, porém com `~/`.
                lualine_x = {},
                lualine_y = {'filetype'},
                lualine_z = {'location'}
            }
        })
    end
}
