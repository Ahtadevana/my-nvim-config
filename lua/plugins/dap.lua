return {
  {
    lazy = false,
    "mfussenegger/nvim-dap",
    config = function()
      require("configs.debugger.dap")
      require("configs.debugger.dapmap")
    end,
  },

  {
    lazy = false,
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      require("configs.debugger.dapui")
    end,
  },
}
