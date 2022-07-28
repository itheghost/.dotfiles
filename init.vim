" Enables syntax
syntax on

" Map Leader for key mappings
let mapleader=" "

" Set's 
set noerrorbells
set nowrap
set backspace=indent,eol,start
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set smartcase
set incsearch
set hlsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
set nu
set relativenumber

set noswapfile
set backupdir=~/.config/nvim/backups/
if exists("&undodir")
	set undodir=~/.config/nvim/undo/
endif


" Plugin's 
call plug#begin()

Plug 'gruvbox-community/gruvbox'
Plug 'preservim/nerdtree'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'frazrepo/vim-rainbow'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ThePrimeagen/vim-be-good'
Plug 'dracula/vim',{'as': 'dracula'}
Plug 'preservim/tagbar'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.0'}
Plug 'github/copilot.vim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'ryanoasis/vim-devicons'

call plug#end()

" Rainbow brackets
let g:rainbow_active = 1

" AirLine 
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" Unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" Airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Colorsheme 
colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE

" Mapping's
nnoremap <C-t> :NERDTree ~/Work/Code\ Work<CR>

" Github Copilot Mapping's
nnoremap <leader>cc :Copilot enable<CR>
nnoremap <leader>ce :Copilot disable<CR>
nnoremap <leader>c :Copilot status<CR>

" Telescope Mapping's
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>

" General use mapping's
nnoremap <leader>g :so % <CR>
nnoremap <leader>vr :vertical resize 25<CR>
nnoremap <leader>vr3 :vertical resize 30<CR>
nnoremap <leader>5 :vertical resize +5<CR>
nnoremap <leader>-5 :vertical resize -5<CR>
nnoremap <leader>tab :tabnew<CR>
nnoremap <leader>t :tabnext<CR>
nnoremap <leader>T :tabprevious<CR>
nnoremap <leader>st :tabs<CR>
nnoremap <leader>term :terminal<CR>

" Quick access to init.vim
nnoremap <leader>cnf :tabnew ~/.config/nvim/init.vim<CR>
" Quick exit from terminal mode
tnoremap <Esc> <C-\><C-n>


