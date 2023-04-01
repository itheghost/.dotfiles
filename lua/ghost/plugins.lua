local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'frazrepo/vim-rainbow'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/tagbar'
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', {['tag'] = '0.1.0'})
Plug('nvim-telescope/telescope-fzf-native.nvim', {['do'] = 'cmake -S. -Bbuild -DCMATE_BUILD_TYPE=Release && cmake --install build --prefix build'})
Plug 'nvim-lualine/lualine.nvim'
-- Plug ''

vim.call('plug#end')
