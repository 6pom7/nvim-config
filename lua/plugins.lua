-- For nvim treesitter
vim.api.nvim_create_autocmd('PackChanged', { callback = function(ev)
  local name, kind = ev.data.spec.name, ev.data.kind
  if name == 'nvim-treesitter' and kind == 'update' then
    if not ev.data.active then vim.cmd.packadd('nvim-treesitter') end
    vim.cmd('TSUpdate')
  end
end })

vim.pack.add({
	'https://github.com/nvim-mini/mini.nvim', -- Basic stuff
	'https://github.com/vague-theme/vague.nvim', -- Theme
	'https://github.com/stevearc/oil.nvim', -- Oil file management
	'https://github.com/neovim/nvim-lspconfig', -- LSP 
	'https://github.com/mason-org/mason.nvim', -- Mason (for lsp servers)
	'https://github.com/nvim-treesitter/nvim-treesitter', -- Treesitter
	-- For telescope
	'https://github.com/nvim-lua/plenary.nvim',
	'https://github.com/nvim-tree/nvim-web-devicons', -- Icons
	'https://github.com/nvim-telescope/telescope.nvim', -- Telescope
	-- Other
	'https://github.com/folke/todo-comments.nvim', -- Higlight TODOS
})


vim.cmd.colorscheme('vague')

require('todo-comments').setup()
require('mini.basics').setup()
require('mini.pairs').setup()
require('mini.completion').setup()

-- Allows searching for code actions
require('mini.pick').setup()
vim.ui.select = require('mini.pick').ui_select

require('mini.clue').setup({
	triggers = {{ mode = { 'n', 'x' }, keys = '<Leader>' },},
	clues = {
		{ mode = 'n', keys = '<Leader>c', desc = '+code' },
		{ mode = 'n', keys = '<Leader>f', desc = '+find' },
		{ mode = 'n', keys = '<Leader>w', desc = '+window' },
	}
})

require('oil').setup()

require('telescope').setup()

-- LSP Stuff
require("mason").setup()

vim.lsp.enable({ 'lua_ls', 'dartls' })

vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = {
          'vim',
          'require'
        },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
})
