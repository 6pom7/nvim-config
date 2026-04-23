vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Open oil normally
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open Oil" })

-- Toggle Oil Float
vim.keymap.set("n", "<leader>o", function()
require("oil").toggle_float()
end, { desc = "Toggle [O]il" })


-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Window commands
vim.keymap.set('n', '<leader>ws', ':split<CR>', { desc = '[s]plit horizontally' })
vim.keymap.set('n', '<leader>wv', ':vsplit<CR>', { desc = 'split [v]ertically' })
vim.keymap.set('n', '<leader>wq', ':close<CR>', { desc = '[c]lose' })


-- LSP keymaps
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = '[a]ction'})
vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, { desc = '[r]ename'})
vim.keymap.set('n', '<leader>cd', vim.lsp.buf.definition, { desc = 'go to [d]efinition'})
vim.keymap.set('n', '<leader>cD', vim.diagnostic.open_float, { desc = 'show [D]iagnostics'})

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[f]iles' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'live [g]rep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[b]uffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[h]elp tags' })
