return {
    "akinsho/bufferline.nvim",
    priority = 997,
    version = "*",
    config = function() 
        require("bufferline").setup({
            options = {
                indicator = {{'underline'}},
                show_buffer_close_icons = false,
                separator_style = {},  -- Remove o char separador
            }
        })
    end
}
