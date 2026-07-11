vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = false

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.signcolumn = 'no'

vim.opt.clipboard = vim.env.SSH_TTY and "" or 'unnamed'

vim.opt.synmaxcol = 300 -- Limit Syntax Highlighting (prevents freezes on minified files)
-- vim.opt.updatetime = 50
vim.opt.updatetime = 300 -- Faster Completions
vim.opt.redrawtime = 10000
vim.opt.maxmempattern = 20000

-- fold markers
vim.opt.fillchars = {
  foldopen = "▢",
  foldclose = "▣",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
