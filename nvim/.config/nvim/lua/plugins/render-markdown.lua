local opts = {
    anti_conceal = {enabled = false},
    sign = {enabled = false},
    heading = {position = 'inline'}
}
return {
    'MeanderingProgrammer/render-markdown.nvim',
    ft = 'markdown',
    config = function()
        require('render-markdown').setup(opts)
        vim.keymap.set('n', '<Leader>rt', ':RenderMarkdown toggle<CR>')
    end
}
