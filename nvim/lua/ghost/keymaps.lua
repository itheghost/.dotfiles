local Utils = require('ghost.utils')

local nnoremap = Utils.nnoremap
local tnoremap = Utils.tnoremap

vim.g.mapleader = ' '
vim.g.localmapleader = ' '

nnoremap("<leader>cnf", ":e ~/.config/nvim/<CR>")

nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<CR>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<CR>")

nnoremap("<leader>t", ":NvimTreeToggle<CR>")
nnoremap("<leader>T", ":NvimTreeClose<CR>")

nnoremap("<leader>gs", ":Git<CR>")
nnoremap("<leader>ga", ":Git add .<CR>")
nnoremap("<leader>gp", ":Git push<CR>")


nnoremap("<leader>g", ":so %<CR>")
nnoremap("<leader>vr", ":vertical resize 25<CR>")
nnoremap("<leader>vr3", ":vertical resize 30<CR>")
nnoremap("<leader>5", ":vertical resize +5<CR>")
nnoremap("<leader>-5", ":vertical resize -5<CR>")
nnoremap("<leader>e", ":edit newfile<CR>")
nnoremap("<leader>d", ":bdelete<CR>")
nnoremap("<leader>ls", ":buffers<CR>")
nnoremap("<leader>b", ":bnext<CR>")
nnoremap("<leader>B", ":bprevious<CR>")
nnoremap("<leader>term", ":terminal<CR>")
tnoremap("<Esc>", "<C-\\><C-n>")

