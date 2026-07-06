local function on_attach(client, bufnr)
  local opts = { buffer = bufnr, remap = false }
  vim.lsp.completion.enable(true, client.id, bufnr, {
    autotrigger = true,
    })
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
  vim.diagnostic.config({
    virtual_lines = true,
  })
end

vim.lsp.config('*', {
  on_attach = on_attach,
})

