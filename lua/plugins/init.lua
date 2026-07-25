return {
  -- nvim formatter
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink / autocomplete nvChad built-in
  { import = "nvchad.blink.lazyspec" },

--[[

  -- nvim tree sitter / color coding
  {
    "nvim-treesitter/nvim-treesitter",
      opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "clangd",
      },
    },
  },

]]

  -- tree explorer inside neovim called with :Neotree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself

    opts = {
      window = {
        position = "left",
        width = 20,
      },
    },
  },

}
