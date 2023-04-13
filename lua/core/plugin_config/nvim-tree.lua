vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

vim.keymap.set('n', '<C-n>', ':NvimTreeFindFileToggle<CR>', { desc = 'Toggle [N]vimTree' }) 
vim.keymap.set('n', '<leader>e', ':NvimTreeFocus<CR>', { desc = 'Focus NvimTree [E]xplorer' })
