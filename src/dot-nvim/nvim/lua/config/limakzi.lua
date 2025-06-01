-- {{{1 Reading and writing.
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

-- {{{1 Appearance.
vim.opt.termguicolors = true

vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.laststatus = 0

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
-- {{{2 Enable characters matching.
vim.opt.matchtime = 0
vim.opt.matchpairs:append "<:>"
-- }}}2

-- {{{2 Configure line numbers.
vim.opt.number = true
vim.opt.numberwidth = 2
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes'
-- }}}2

-- }}}1

-- {{{1 Splits.
vim.opt.splitright = true
vim.opt.splitbelow = true
-- }}}1

-- {{{1 Foldings.
vim.opt.foldlevelstart = 0
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldtext = "v:lua.vim.treesitter.foldtext()"
-- }}}1

-- {{{1 Searching and highlighting.
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.infercase = true
vim.opt.wrapscan = false
-- }}}1

-- {{{1 Scrolling.
vim.opt.scrolloff = 16
-- }}}1

-- {{{1 Indentations.
vim.opt.autoindent = true
vim.opt.copyindent = true
vim.opt.preserveindent = true
vim.opt.smartindent = true

vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
-- }}}1
--
-- {{{1 Spell-checking.
vim.opt.spell = false
vim.opt.spelllang = 'en_gb'
-- }}}1

-- {{{1 Keyboard and mouse.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.mouse = "a"

-- {{{2 Keymaps -- indentations.
vim.keymap.set('v', '>', '>gv', { silent = true })
vim.keymap.set('v', '<', '<gv', { silent = true })
-- }}}2

-- {{{2 Keymaps -- improve movement.
vim.keymap.set('n', 'j', 'gj', { silent = true })
vim.keymap.set('n', 'k', 'gk', { silent = true })

vim.keymap.set('n', '<Tab>', '%', { silent = true })
vim.keymap.set('v', '<Tab>', '%', { silent = true })
-- }}}2

-- }}}1

-- {{{1 Errors and bells.
vim.opt.errorbells = true
vim.opt.visualbell = true
-- }}}1

-- {{{1 Timeout.
vim.opt.timeout = true
vim.opt.timeoutlen = 500
vim.opt.updatetime = 500
-- }}}1
