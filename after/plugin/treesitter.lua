require'nvim-treesitter'.setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  install_dir = vim.fn.stdpath('data') .. '/site'
}

-- Only run the (slow, subprocess-spawning) installer when a parser is actually
-- missing. Calling install() unconditionally cost ~175ms per parser on every
-- startup, blocking the main loop for ~2s.
local parsers = { 'haskell', 'c', 'cpp', 'rust', 'javascript', 'typescript', 'css', 'go' }
local installed = require('nvim-treesitter.config').get_installed('parsers')
local missing = vim.tbl_filter(function(p)
  return not vim.list_contains(installed, p)
end, parsers)
if #missing > 0 then
  require('nvim-treesitter').install(missing)
end