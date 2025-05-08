return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install",
    init = function()
        vim.g.mkdp_echo_preview_url = 1
        vim.g.mkdp_browser = '/opt/brave-bin/brave'
        vim.g.mkdp_filetypes = { "markdown" }
        vim.g.mkdp_auto_close = 0
        vim.g.mkdp_combine_preview = 1
    end,
    ft = { "markdown" },
}
