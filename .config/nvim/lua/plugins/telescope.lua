
return {  {"nvim-telescope/telescope.nvim",
  name = "telescope",
  tag = '0.1.6',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
      vim.keymap.set('n', '<C-p>', builtin.git_files, {})
      vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({ search = vim.fn.input("Grep > ")})
      end)
  end
} ,
{'nvim-treesitter/nvim-treesitter', 
opts = {
  highlight = { enable = true },
  indent = { enable = true },
  ensure_installed = {
    "bash",
    "c",
    "diff",
    "html",
    "javascript",
    "jsdoc",
    "json",
    "jsonc",
    "lua",
    "luadoc",
    "luap",
    "markdown",
    "markdown_inline",
    "python",
    "query",
    "regex",
    "toml",
    "tsx",
    "typescript",
    "vim",
    "vimdoc",
    "xml",
    "yaml",
  }}},
  {'ThePrimeagen/harpoon',
  config = function()
	local mark = require('harpoon.mark') 
	local ui = require('harpoon.ui')

	vim.keymap.set('n', '<leader>a', mark.add_file)
	vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)
	vim.keymap.set('n', '<C-h>', function() ui.nav_file(1) end)
  end}
}
