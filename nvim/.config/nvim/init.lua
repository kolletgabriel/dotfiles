require('options')
require('keymaps')

-- Instala o Lazy caso não tenha sido instalado ainda:
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
vim.opt.rtp:prepend(lazypath)  -- Adiciona ele ao runtimepath.

-- Carrega o Lazy, junto com os plugins declarados:
require('lazy').setup({
    spec = {  -- Table que importa os plugins.
        {import = 'plugins.colorscheme'},
        {import = 'plugins.comments'},
        {import = 'plugins.autopairs'},
        {import = 'plugins.treesitter'},
        {import = 'plugins.telescope'},
        {import = 'plugins.lualine'},
        -- {import = 'plugins.bufferline'},
        {import = 'plugins.mason'},
        {import = 'plugins.lspconfig'},
        {import = 'plugins.cmp'},
        {import = 'plugins.trouble'},
        {import = 'plugins.bullets'},
        {import = 'plugins.markdown-preview'},
    },
    install = {
        colorscheme = {'zenbones'}
    }
})

-- Cria um atalho pra abrir o Lazy:
vim.keymap.set('n', '<Leader>L', ':Lazy<CR>', {silent = true})
