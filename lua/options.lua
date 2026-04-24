vim.opt.clipboard = "unnamedplus"

vim.o.number = true

-- Folding
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.wo.foldmethod = 'expr'
vim.o.foldlevel = 99 -- Start with all folds open
vim.o.foldlevelstart = 99 -- Ensure this applies when opening new files

-- Indentation, provided by nvim-treesitter
-- Fixes bad indentation
vim.o.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

-- Indenting
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2

-- enable mouse mode
vim.o.mouse = 'a'
-- Enable undo/redo changes even after closing and reopening a file
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Configure how new splits should be opened
-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.o.splitright = true
vim.o.splitbelow = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
