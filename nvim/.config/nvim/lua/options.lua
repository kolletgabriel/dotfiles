local o = vim.opt

o.tabstop = 4  -- Tabs têm tamanho de 4 espaços.
o.shiftwidth = 4  -- Indentações automáticas têm tamanho de 4 espaços.
o.expandtab = true  -- O caractere `Tab` é mapeado p/ uma sequência de espaços.

o.ignorecase = true  -- Não diferencia maiúsculas de minúscula na busca...
o.smartcase = true  -- ...a menos que digitemos letras maiúsculas.

o.number = true  -- Mostra a numeração das linhas...
o.relativenumber = true  -- ...relativa à linha em que o cursor está.
o.cursorline = true  -- Destaca a linha em que o cursor está.
o.fillchars = {eob = ' '}
o.wrap = false  -- Não expande a linha pra baixo quando ela ultrapassa o limite da tela.
o.scrolloff = 10  -- Mantém no mínimo 10 linhas visíveis acima ou abaixo da linha em que o cursor está.

o.laststatus = 3  -- Somente uma statusline por tela.
o.showmode = false  -- Não mostra o modo do editor abaixo da statusline.

o.termguicolors = true  -- Aproveita todo o range de cores disponível no terminal.
o.clipboard:append('unnamedplus')  -- Compartilha o clipboard com o SO.
o.mouse:append('a')  -- Habilita o uso do mouse.

o.swapfile = false  -- Não cria swapfiles automaticamente.
o.backup = false  -- Não seta backups automaticamente.

o.splitright = true  -- Nova janela sempre à direita no split vertical.
o.splitbelow = true  -- Nova janela sempre abaixo no split horizontal.
