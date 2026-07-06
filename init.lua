local orig = vim.lsp.handlers["textDocument/completion"]

vim.lsp.handlers["textDocument/completion"] = function(err, result, ctx, config)
  if result and result.items then
    for _, item in ipairs(result.items) do
      if item.commitCharacters then
        print("COMMIT CHARS for:", item.label, vim.inspect(item.commitCharacters))
        break -- one example is enough
      end
    end
  end
  return orig(err, result, ctx, config)
end

require("config.lazy")
require("something")
vim.lsp.enable({ "haskell", "js", "go" })
