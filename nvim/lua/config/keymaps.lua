local map_key = require("utils.key_mapper").map_key

map_key('<leader>e', ':Neotree toggle<cr>')

map_key('<C-h>', '<C-w>h') --left
map_key('<C-j>', '<C-w>j') --down
map_key('<C-k>', '<C-w>k') --up
map_key('<C-l>', '<C-w>l') --right

map_key('<leader>h', ':nohlsearch<CR>')

map_key('<', '<gv', 'v')
map_key('>', '>gv', 'v')
