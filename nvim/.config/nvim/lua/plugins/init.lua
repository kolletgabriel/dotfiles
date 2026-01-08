-- Check installation for the plugin manager:
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Start the plugin manager with the plugins:
require('lazy').setup({
    spec = {
        {import = 'plugins.autolist'},
        {import = 'plugins.render-markdown'},
        {import = 'plugins.autopairs'},
        {import = 'plugins.blink'},
        {import = 'plugins.colorscheme'},
        {import = 'plugins.lualine'},
        {import = 'plugins.mason'},
        {import = 'plugins.oil'},
        {import = 'plugins.surround'},
        {import = 'plugins.telescope'},
        {import = 'plugins.treesitter'},
        {import = 'plugins.zk'},
    },
    install = {
        colorscheme = {'kanagawa-dragon'}  -- keep colorscheme during installation of new plugins
    }
})

vim.keymap.set('n', '<Leader>L', ':Lazy<CR>', {silent = true, desc = 'opens Lazy'})
