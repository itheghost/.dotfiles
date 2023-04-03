require('ghost.settings')
require('ghost.keymaps')
require('ghost.packer')
require('nvim-tree').setup({
	filters = {
		dotfiles = true,
	},
})
--require('lualine').setup { options = { theme = 'nord' } }
vim.cmd "colorscheme nord"
vim.cmd "syntax on"
