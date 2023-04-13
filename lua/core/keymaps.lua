vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'number'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.scrolloff = 8

-- spaces for tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.shiftround = true
vim.opt.expandtab = true


local function map(mode, key, command, description)
  local opts = {}
  opts.desc = description
  vim.keymap.set(mode, key, command, opts)
end

map({'n', 'v'}, 'q', '<NOP>', '')
map('n', '<leader>h', ':nohlsearch<CR>', 'Toggle [H]ighlight of search')
-- Disabled because Nvim Tree
-- map('n', '<leader>e', ':Ex<CR>', 'Return to [E]xporer')
