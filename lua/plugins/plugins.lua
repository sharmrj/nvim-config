return {

  {
    'nvim-telescope/telescope.nvim',
    version = '*',
    branch = 'master',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzy-native.nvim',
        build = 'make',
      },
    },
  },

  {
    "anAcc22/sakura.nvim",
    dependencies = { "rktjmp/lush.nvim" },
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
  },
  {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    lazy = false,
    build = ':TSUpdate',
  },

  {
    'mbbill/undotree',
    cmd = 'UndotreeToggle',
  },

  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
  },

  {
    'mikavilpas/yazi.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      {
        '<leader>v',
        '<cmd>Yazi cwd<cr>',
        desc = 'Open yazi in the working directory',
      },
      {
        '<leader>V',
        '<cmd>Yazi<cr>',
        desc = 'Open yazi at the current file',
      },
    },
    opts = {},
  },

  {
    'f-person/git-blame.nvim',
    event = 'BufReadPost',
    config = function()
      require('gitblame').setup()
    end,
  },

  {
    'mfussenegger/nvim-dap',
    keys = {
      { '<F5>',  function() require('dap').continue() end },
      { '<F10>', function() require('dap').step_over() end },
      { '<F11>', function() require('dap').step_into() end },
      { '<F12>', function() require('dap').step_out() end },
      { '<Leader>b', function() require('dap').toggle_breakpoint() end },
    },
  },

  -- Haskell tools
  -- {
  --   'MrcJkb/haskell-tools.nvim',
  --   version = '^3',
  --   ft = { 'haskell', 'lhaskell', 'cabal' },
  -- },
  {
    "neovim/nvim-lspconfig", -- REQUIRED: for native Neovim LSP integration
    lazy = false, -- REQUIRED: tell lazy.nvim to start this plugin at startup
    config = function()
      -- Your LSP settings here
    end,
  },

  {
    'saghen/blink.cmp',
    version = '1.*', -- use the prebuilt Rust fuzzy-matcher binary
    dependencies = { 'rafamadriz/friendly-snippets' },
    event = 'InsertEnter',
    opts = {
      keymap = { preset = 'default' },
      appearance = {
        nerd_font_variant = 'mono',
      },
      completion = {
        documentation = { auto_show = true },
      },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
      fuzzy = { implementation = 'prefer_rust_with_warning' },
    },
    opts_extend = { 'sources.default' },
  },
}

