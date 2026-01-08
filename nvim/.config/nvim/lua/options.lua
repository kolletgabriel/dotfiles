local o = vim.opt

o.tabstop = 4         -- <Tab> size is the size of 4*<Space>
o.shiftwidth = 4      -- same for auto indent
o.expandtab = true    -- <Tab> actually maps to <Space>
o.autoindent = true   -- helps with indentation

o.ignorecase = true  -- case insensitive search ...
o.smartcase = true   -- ... except when we type uppercase characters

o.number = true            -- shows line numbers ...
o.relativenumber = true    -- ... relative to the line where the cursor is
o.cursorline = true        -- highlights the line where the cursor is
o.fillchars = {eob = ' '}  -- no more `~` characters
o.wrap = false             -- don't show one single line broken into multiple ones
o.scrolloff = 10           -- at least 10 visible lines above/below the cursor

o.completeopt = "menuone,noinsert,noselect"  -- autocompletion behavior
o.pumheight = 15                             -- autocompletion menu max lenght

o.laststatus = 3    -- only 1 status line per screen (and not 1 per window)
o.showmode = false  -- no mode below the line (mode is shown in the line itself)

o.termguicolors = true             -- uses 24 bit colors
o.clipboard:append('unnamedplus')  -- uses OS clipboard
o.mouse:append('a')                -- enables mouse support

o.swapfile = false  -- no swap files ...
o.backup = false    -- ... and no backups

o.splitright = true  -- new window when `:vsplit` goes right
o.splitbelow = true  -- new window when `:split` goes below
