# My Neovim Config

_Using [Lazy](https://github.com/folke/lazy.nvim) and [NvChad](https://github.com/nvchad/nvchad)_

## Intro

This is just a simple neovim config to provide me an IDE-like experience through Neovim. I use the config NvChad provides and add some plugins i thought were necessary for my workflow. 

## Installed Plugins

Current plugins i've installed are:

- Main:

[X] DAP | mfusseneger's Neovim Debug Adapter
[X] DAP UI | rcarriga's DAP Interface
[X] Conform | stevearc's Formatter (NvChad built-in)
[X] Lsp-config | Lsp config for Neovim  (NvChad built-in)
[X] Blink Auto complete (NvChad built-in)
[X] Tree-sitter | Color coding made simple for each languages (NvChad built-in)
[X] Neo-tree | File Tree Explorer
[+] Mason installer, Which-key nvim, Telescope nvim
 
- Optional:

[ ] Transparent | xiayowong's transparent Neovim background
[ ] Cord | vyfor's Neovim Discord Rich Presence
[ ] Smear Cursor | sphamba'smear cursor look in Neovim

## Directory Tree
```
.
├── init.lua
├── lazy-lock.json
├── LICENSE
├── README.md
└── lua
    ├── autocmds.lua
    ├── chadrc.lua
    ├── mappings.lua
    ├── options.lua
    ├── configs
    │   ├── conform.lua
    │   ├── lazy.lua
    │   ├── lspconfig.lua
    │   └── debugger
    │       ├── dap.lua
    │       ├── dapmap.lua
    │       └── dapui.lua
    └── plugins
        ├── dap.lua
        ├── init.lua
        └── misc.lua
```

## Configuration

To install and configure new plugins, i usually does it in `lua/plugins/` and add a new file there. I usually store small configs and optimizations together  the plugin installation. Lazy will automatically loads it whenever you launch nvim (small exception if you do want to make it launch early, you use `lazy = false`). 

If your config files become bigger/you want to group them into a single dir. You might want to use NvChad configs directory in `lua/configs/`. Then i'd separate them like this:

- `lua/plugins/foo.lua`:

```
return {
  "foo.nvim",
  config = function()
    require("configs.foo")
  end,
}
```

- `lua/configs/foo.lua`:

```
require("foo").setup[(
  -- some config you'd place
)]
```

## Features

- Mason, simply just insert `:Mason` command in nvim to start installing LSP, DAP, Linter, or Formatter. For lsp, be sure to put it to `lua/configs/lspconfig.lua` lsp-servers. For formatter, be sure to configure it again in `lua/configs/conform.lua`.

- DAP (Debug Adapter Protocol) and DAP-UI to debug inside Neovim. DAP-UI is solely used for convenience in navigating debugger interface. For debuggers you're using, be sure to edit it in `lua/configs/dap/`. Current configured debugger is lldb (C, C++) for now.

- Neo-tree, toggling a file tree explore inside Neovim on separate buffer. Toggle it using the command `:Neotree` (will be mapped in the future).

- Current loaded lsp-server: Html, Css, Clangd, Marksman.

## Mappings

All mappings are NvChad built-in except for debugger that i mapped myself:

```
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

```

## Xerv's Note

All credits to NvChad, Lazy, and the plugin developers. This config only serve me a storage so that i can load in my IDE whenever i wanted to switch between devices. Feel free to use this config since it's not very original anyway. Please star the official plugins listed above. 

Thanks for reading, and toodles!
