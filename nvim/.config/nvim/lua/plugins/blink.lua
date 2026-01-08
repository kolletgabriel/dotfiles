return {
    'saghen/blink.cmp',
    event = {'InsertEnter', 'CmdLineEnter'},
    opts = {
        fuzzy = {
            implementation = 'lua', -- don't install any binaries
        },
        sources = {
            default = {'lsp'}
        },
        -- signature = {enabled = true}  -- experimental atm
    }
}
