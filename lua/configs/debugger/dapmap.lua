local dap = require("dap")

-- DAP:
-- START / CONTINUE
vim.keymap.set("n", "<Leader>dc", dap.continue, {
  desc = "DAP: Continue",
})

-- BREAKPOINTS
vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, {
  desc = "DAP: Toggle Breakpoint",
})

-- BREAKPOINT CONDITION
vim.keymap.set("n", "<Leader>dB", function()
  dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
end, {
  desc = "DAP: Conditional Breakpoint",
})

-- STEP INTO
vim.keymap.set("n", "<Leader>di", dap.step_into, {
  desc = "DAP: Step Into",
})

-- STEP OVER
vim.keymap.set("n", "<Leader>do", dap.step_over, {
  desc = "DAP: Step Over",
})

-- STEP OUT OF
vim.keymap.set("n", "<Leader>dO", dap.step_out, {
  desc = "DAP: Step Out",
})

-- REPL
vim.keymap.set("n", "<Leader>dr", dap.repl.open, {
  desc = "DAP: Open REPL",
})

-- RUN LAST SESSION
vim.keymap.set("n", "<Leader>dl", dap.run_last, {
  desc = "DAP: Run Last",
})
