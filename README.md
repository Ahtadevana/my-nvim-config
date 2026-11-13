# My NVIM Config
This config has everything for your basic NeoVim development workflow. It's fast, simple, and have a convenient file structure to add your plugins and configuration. It uses the commonly used, Lazy plugin manager. The config structure shown below:

## File Structure
```
.
├── init.lua
├── lazy-lock.json
└── lua
    ├── config
    │   ├── lazy.lua
    │   ├── lualine.lua
    │   ├── mason.lua
    │   └── treesitter.lua
    └── plugins
        ├── blinkcmp.lua
        ├── coding.lua
        ├── conform.lua
        ├── cord.lua
        ├── gitsigns.lua
        ├── lualine.lua
        ├── mason.lua
        ├── oil.lua
        ├── snacks.lua
        ├── telescope.lua
        ├── theme.lua
        └── treesitter.lua
```

## Feature
Features added in this config are:
### Main:
- Basic vim motions configuration/keymaps
- Autopairs - nvim-autopairs
- File explorer - oil.nvim
- Fuzzyfind, buffer management, live grep - telescope.nvim
- LSP and auto enable - mason.nvim
- Autocompletion - blink.cmp
- Inline diagnostics - tiny-inline-diagnostics.nvim
- Treesitter - nvim-treesitter
- Auto formatting - Conform.nvim
- Git integration - Gitsigns
- Terminal buffer
### Misc:
- Discord live presence to show off - cord.nvim
- Pretty status line - lualine.nvim
- Rendering png support - snacks.nvim
- Catppuccin color theme - catppuccin
- Use terminal background - transparent.nvim

## Keymaps
### Vim Builtin:
```
Native vim:
<Leader>: space (" ")
clear search highlighting: <Esc>
Summon terminal buffer: <Leader>tt
(LSP) goto definition: gd
(LSP) goto implementation: gi
(LSP) references: gr
(LSP) hover info: K
(LSP) type definition: gt
```
### Telescope:
```
Find files: <Leader>ff
Live grep: <Leader>fg
Manager buffer: <Leader>fb
Help tags: <Leader>fh
```
### Oil:
```
Toggle oil file explorer: -
```

## Maintenance
Serves as basic Lazy plugin configuration. Add native vim related configuration or keymaps in init.lua. Specific plugin configuration can be added directly in `plugins/` plugin installation, or in the designated `config/` directory.

## Notes from da xerv
Just a small config i like to save from time to time. If you're looking for a simple Neovim environment to code in, feel free to use mine! Support the plugins i've listed above, and thank you for reading. Toodles!
