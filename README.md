# My NVIM Config
This config has everything for your basic NeoVim development workflow. It's fast, simple, and has a convenient file structure to add your own plugins and configuration. It uses the commonly used Lazy plugin manager. Here's the file structure:

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
- Basic vim motions and custom keybindings
- Automatic bracket and quotation pairing
- File explorer and filesystem navigation - oil
- Fuzzyfinder, buffer navigation, and livegrep - telescope
- LSP setup and automatic server configuration - mason
- Autocompletion - blinkcmp
- Inline diagnostics
- Syntax highlighting - treesitter
- Auto formatting & save on format - conform
- Git integration, indicators, hunk management - gitsigns
- Terminal buffer
### Misc:
- Discord rich presence - cord
- Customizable statusline - lualine
- Image rendering - snacks
- Catppuccin colorscheme - catppuccin
- Transparent background

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
This configuration serves as basic Neovim setup managed by Lazy. 

Add native vim related settings and keymaps in init.lua. Specific plugin configuration can be added directly in `plugins/` plugin installation, or in the designated `config/` directory.

## Notes from da xerv
Just a small config i like to mantain and share from time to time. If you're looking for a simple Neovim environment to code in, feel free to use mine! Consider to support the plugins i've listed above.

Thank you for reading, and Toodles!
