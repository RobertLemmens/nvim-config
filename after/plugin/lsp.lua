local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.set_preferences({
  sign_icons = { }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  -- vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
  vim.keymap.set("n", "gh", vim.cmd.ClangdSwitchSourceHeader)
  vim.cmd('imap <silent><script><expr> <C-j> copilot#Accept("")')
  vim.cmd("let g:copilot_no_tab_map = v:true")
  vim.g.copilot_assume_mapped = true
end)
-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()

-- require("lspconfig").clangd.setup {
--   on_attach = on_attach,
--   cmd = {
--     "clangd",
--     "--offset-encoding=utf-16",
--   },
-- }
