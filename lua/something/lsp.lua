local function on_attach(client, bufnr)
  local opts = { buffer = bufnr, remap = false }
  -- Completion popups are now driven by blink.cmp instead of the
  -- native vim.lsp.completion menu (which used to be driven by coq_nvim).
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
  vim.keymap.set('n', '<leader>g', function()
    vim.lsp.buf.format { async = true }
  end, opts)
end

vim.lsp.config('*', {
  on_attach = on_attach,
})

