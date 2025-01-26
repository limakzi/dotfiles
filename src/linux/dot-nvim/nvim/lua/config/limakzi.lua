-- {{{1 reading and writing
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.fileformats = 'unix'
vim.opt.autoread = true
vim.opt.autowrite = false
vim.opt.autowriteall = false

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true
vim.opt.swapfile = false

vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.cache/nvim/undodir"
-- }}}1

-- {{{1 appearance
vim.opt.termguicolors = true

vim.opt.cursorline = true
vim.opt.cursorcolumn = true

vim.opt.ruler = true
vim.opt.showcmd = false
vim.opt.showmode = false

-- {{{2 invisibles
vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:¬"
vim.opt.listchars:append "trail:~"
vim.opt.listchars:append "extends:⟩"
vim.opt.listchars:append "precedes:⟨"
vim.opt.listchars:append "nbsp:␣"
vim.opt.showbreak = "↳"
-- }}}2
--
-- {{{2 matching
vim.opt.matchtime = 0
vim.opt.matchpairs:append "<:>"
-- }}}2

-- }}}1

-- {{{1 line numbers
vim.o.number = true
vim.o.numberwidth = 2
vim.o.relativenumber = true
vim.o.signcolumn = 'yes'
-- }}}1

-- {{{1 splits
vim.opt.splitright = true
vim.opt.splitbelow = true
-- }}}1

-- {{{1 foldings
vim.opt.foldlevelstart = 0
vim.opt.foldmethod = 'marker'
-- }}}1

-- {{{1 searching and highlighting
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.infercase = true
vim.opt.wrapscan = false
-- }}}1

-- {{{1 scrolling
vim.opt.scrolloff = 16
-- }}}1

-- {{{1 indentations
vim.opt.autoindent = true
vim.opt.copyindent = true
vim.opt.preserveindent = true
vim.opt.smartindent = true

vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = -1
-- }}}1
--
-- {{{1 spell-checking
vim.opt.spell = false
vim.opt.spelllang = 'en_gb'
-- }}}1

-- {{{1 keyboard and mouse
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.mouse = "a"

-- {{{2 keymaps -- indentations
vim.keymap.set('v', '>', '>gv', { silent = true })
vim.keymap.set('v', '<', '<gv', { silent = true })
-- }}}2

-- {{{2 keymaps -- movement
vim.keymap.set('n', 'j', 'gj', { silent = true })
vim.keymap.set('n', 'k', 'gk', { silent = true })
-- }}}2

-- {{{2 keymaps -- movement
vim.keymap.set('n', '<Tab>', '%', { silent = true })
-- }}}2

-- }}}1

-- {{{1 errors
vim.opt.errorbells = true
vim.opt.visualbell = true
-- }}}1

-- {{{1 timeout
vim.opt.timeout = true
vim.opt.timeoutlen = 500
vim.opt.updatetime = 200
-- }}}1
