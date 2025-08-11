-- options
--------------------------------------------------------------------------------
-- Relative and absolute line numbers combined
vim.opt.number = true
vim.opt.relativenumber = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Cursorline
vim.opt.cursorline = true

-- Show whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Search
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

-- Preview substitutions
-- vim.opt.inccommand = 'split'

-- Text wrapping
vim.opt.wrap = true
vim.opt.breakindent = true

-- Tabstops
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Window splitting
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Save undo history
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Set the default border for all floating windows
vim.opt.winborder = 'rounded'

----------
vim.opt.mouse = 'a' -- turn on mouse mode (idk what that does)
vim.opt.scrolloff = 8 -- Minimal number of screen lines to keep above and below the cursor.
vim.opt.updatetime = 50 -- make vim faster
vim.opt.colorcolumn = "80" -- line at 80 char width
vim.opt.linebreak = true -- Companion to wrap, don't split words (default: false)
vim.opt.showmode = false -- Don't show the mode, since it's already in the status line
vim.opt.confirm = true -- popup to confirm instead of fail
vim.opt.termguicolors = true -- 24 bit color
vim.opt.formatoptions:remove "o" -- o won't make a comment after a comment
--vim.opt.timeoutlen = 300

--Prime
--vim.opt.isfname:append("@-@")

--hendrikmi
--vim.o.conceallevel = 0 -- So that `` is visible in markdown files (default: 1)
--vim.opt.iskeyword:append '-' -- Hyphenated words recognized by searches (default: does not include '-')

--TEEJ
--vim.opt.more = false
--vim.opt.foldmethod = "manual"
vim.opt.title = true
vim.opt.titlestring = '%t%( %M%)%( (%{expand("%:~:h")})%)%a (nvim)'


