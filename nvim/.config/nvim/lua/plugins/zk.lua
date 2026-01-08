local zk1 = function()
    require('zk.commands').get('ZkNotes')({ hrefs = { '1-pessoais' } })
end
local jrn = function()
    require('zk.commands').get('ZkNotes')({ hrefs = { '1-pessoais/_diarios' } })
end
local zk2 = function()
    require('zk.commands').get('ZkNotes')({ hrefs = { '2-tecnicas' } })
end
local zk3 = function()
    require('zk.commands').get('ZkNotes')({ hrefs = { '3-genericas' } })
end
return {
    'zk-org/zk-nvim',
    ft = 'markdown',
    config = function()
        require('zk').setup({ picker = 'telescope' })
        vim.keymap.set('n', '<Leader>z1', zk1)
        vim.keymap.set('n', '<Leader>zj', jrn)
        vim.keymap.set('n', '<Leader>z2', zk2)
        vim.keymap.set('n', '<Leader>z3', zk3)
    end
}
