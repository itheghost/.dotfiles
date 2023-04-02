-- local var
local o = vim.opt
local g = vim.g

-- Set's
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.scrolloff = 8
o.smartindent = true
o.smartcase = true
o.incsearch = true
o.hlsearch = true
o.number = true
o.relativenumber = true
o.wrap = false
o.termguicolors = true

o.swapfile = false
o.backup = false
o.writebackup = false

g.mapleader = ' '
g.maplocalleader = ' '

-- Rainbow brackets
g.rainbow_active = 1

-- if g.airline_symbols == nil then
-- 	local g.airline_symbols = {}
-- end
g.airline_powerline_fonts = 1
g['airline#extensions#tabline#enabled'] = '1'
g['airline#extensions#tabline#left_sep'] = ' '
g['airline#extensions#tabline#left_alt_sep'] = '|'

-- Airline symobols
-- g.airline_left_sep = '»'
-- g.airline_left_sep = '»'
-- g.airline_left_sep = '▶'
-- g.airline_right_sep = '«'
-- g.airline_right_sep = '◀'
-- g.airline_symbols.linenr = '␤'
-- g.airline_symbols.branch = '⎇'
-- g.airline_symbols.paste = '∥'
-- g.airline_symbols.whitespace = 'Ξ'

-- g.airline_left_sep = ''
-- g.airline_left_alt_sep = ''
-- g.airline_right_sep = ''
-- g.airline_right_alt_sep = ''
-- g.airline_symbols.branch = ''
-- g.airline_symbols.readonly = ''
-- g.airline_symbols.linenr = ''
