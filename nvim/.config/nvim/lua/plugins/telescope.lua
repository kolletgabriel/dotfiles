return {
    'nvim-telescope/telescope.nvim',
    tag = 'v0.2.1',  -- leave it by now
    dependencies = {
        'nvim-lua/plenary.nvim',
        {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'}  -- performance improvement
    },
    keys = {
        {'<leader>T', ':Telescope<CR>', silent = true, desc = 'telescope pickers'},
        {'<leader>ff', ':Telescope find_files<CR>', silent = true, desc = 'telescope find_files'},
        {'<leader>fg', ':Telescope live_grep<CR>', silent = true, desc = 'telescope live_grep'}, 
        {'<leader>fb', ':Telescope buffers<CR>', silent = true, desc = 'telescope buffers'},
        {'<leader>fx', ':Telescope diagnostics<CR>', silent = true, desc = 'telescope LSP diagnostics'},
    },
    config = function()
        require('telescope').setup({
            defaults = {
                layout_strategy = 'vertical',
                layout_config = {
                    vertical = {preview_cutoff = 0}
                },
            },
            pickers = {
                find_files = {
                    previewer = false,
                    theme = 'dropdown',
                    find_command = {'fd', '--hidden', '--color=never', '--type=f', '--exclude=.git'}
                },
                buffers = {
                    previewer = false,
                    theme = 'dropdown'
                },
            }
        })
        require('telescope').load_extension('fzf')  -- required for `fzf-native`
    end
}
