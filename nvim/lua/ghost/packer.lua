-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
   -- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Misc
	use 'octol/vim-cpp-enhanced-highlight'

	-- Colorschemes
	use 'rmehri01/onenord.nvim'
	use{'dracula/vim', { ['tag'] = 'dracula' }}
	use 'rafi/awesome-vim-colorschemes'
	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	-- Plugins
	use 'preservim/tagbar'
	use 'nvim-lua/plenary.nvim'
	use{'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}}
	use{'nvim-telescope/telescope.nvim', {['tag'] = '1.1.0'}}
	use{'nvim-telescope/telescope-fzf-native.nvim', {run = 'cmake -S. -Bbuild -DCMATE_BUILD_TYPE=Release && cmake --install build --prefix build'}}
	use 'tpope/vim-fugitive'
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-tree/nvim-web-devicons'

	-- Lsp
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
			},
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	}
end)
