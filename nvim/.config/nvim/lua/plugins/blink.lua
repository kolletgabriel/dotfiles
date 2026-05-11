return {
    'saghen/blink.cmp',
    branch = 'v1',  -- needed for stable (by now)
    event = {'InsertEnter', 'CmdLineEnter'},
    opts = {
        keymap = { preset = 'enter' },
        fuzzy = {
            implementation = 'lua', -- don't install any binaries
        },
        sources = {
            default = {'lsp'}
        },
        -- signature = {enabled = true}  -- experimental atm
    }
}
