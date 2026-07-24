local dap = require("dap")

-- Keymaps
-- Continue / Start
vim.keymap.set("n", "<Leader>dc", dap.continue, {
  desc = "DAP: Continue",
})

-- Breakpoints
vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, {
  desc = "DAP: Toggle Breakpoint",
})

vim.keymap.set("n", "<Leader>dB", function()
  dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
end, {
  desc = "DAP: Conditional Breakpoint",
})

-- Stepping
vim.keymap.set("n", "<Leader>di", dap.step_into, {
  desc = "DAP: Step Into",
})

vim.keymap.set("n", "<Leader>do", dap.step_over, {
  desc = "DAP: Step Over",
})

vim.keymap.set("n", "<Leader>dO", dap.step_out, {
  desc = "DAP: Step Out",
})

-- REPL
vim.keymap.set("n", "<Leader>dr", dap.repl.open, {
  desc = "DAP: Open REPL",
})

-- Run last session
vim.keymap.set("n", "<Leader>dl", dap.run_last, {
  desc = "DAP: Run Last",
})
