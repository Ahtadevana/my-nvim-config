local dap = require("dap")

dap.adapters.lldb = {
  type = "executable",
  command = "/usr/bin/lldb-dap",
  name = "lldb",
}

dap.configurations.cpp = {
  {
    name = "Launch executable",
    type = "lldb",
    request = "launch",

    program = function()
      return vim.fn.input(
        "Path to executable: ",
        vim.fn.getcwd() .. "/",
        "file"
      )
    end,

    cwd = "${workspaceFolder}",
    stopOnEntry = false,
    args = {},

    runInTerminal = false,
  },
}

dap.configurations.c = dap.configurations.cpp
