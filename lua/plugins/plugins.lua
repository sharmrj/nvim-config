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

  { "shaunsingh/nord.nvim", name = "nord", priority = 1000 },

  {
    'nvim-treesitter/nvim-treesitter',
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
    'ms-jpq/chadtree',
    branch = 'chad',
    cmd = { 'CHADopen', 'CHADopenCurrent' },
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
    dependencies = {
      -- main one
      { "ms-jpq/coq_nvim", branch = "coq" },
  
      -- 9000+ Snippets
      { "ms-jpq/coq.artifacts", branch = "artifacts" },
  
      -- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
      -- Need to **configure separately**
      { 'ms-jpq/coq.thirdparty', branch = "3p" }
      -- - shell repl
      -- - nvim lua api
      -- - scientific calculator
      -- - comment banner
      -- - etc
    },
    init = function()
      vim.g.coq_settings = {
          auto_start = true, -- if you want to start COQ at startup
          -- Your COQ settings here
          keymap = {
            jump_to_mark = "c-;",
          },
      }
    end,
    config = function()
      -- Your LSP settings here
    end,
  }
}

