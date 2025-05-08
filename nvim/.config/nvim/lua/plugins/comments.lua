return {
    'numToStr/Comment.nvim',
    -- event = 'LSPAttach',  -- Só precisamos deste plugin quando formos programar.
    config = function()
        require('Comment').setup({
            -- Remapeamos tudo pra usar a tecla líder:
            toggler = {line = '<Leader>cc', block = '<Leader>cb'},
            extra = {above = '<Leader>cO', below = '<Leader>co', eol = '<Leader>cA'},
        })
    end
}
