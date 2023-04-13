local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = '[F]ind Files'})
vim.keymap.set('n', '<leader>o', builtin.oldfiles, { desc = '[O]ld Files'})
vim.keymap.set('n', '<leader>g', builtin.live_grep, { desc = '[G]rep in files (Search)'})
vim.keymap.set('n', '<leader>hp', builtin.help_tags, { desc = '[H]el[P] on Tag'})
