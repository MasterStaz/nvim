require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "ltex", "sqlls", "rust_analyzer" }
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { desc = 'LSP [R]ename' })
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'LSP [C]ode [A]ction' })

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'LSP [G]o to [D]efinition' })
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = 'LSP [G]o to [I]mplementation' })
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, { desc = 'LSP [G]o to [R]eferences' })
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'LSP Display Hover Information' })
end

require("lspconfig").lua_ls.setup {
  on_attach = on_attach
}
require("lspconfig").ltex.setup {
  on_attach = on_attach
}
require("lspconfig").sqlls.setup {
  on_attach = on_attach
}
require("lspconfig").rust_analyzer.setup {
  on_attach = on_attach
}
