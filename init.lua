require("config.lazy")

vim.g.mapleader = " "

-- line number
vim.opt.number = true
vim.opt.relativenumber = true

-- persistent undo
vim.opt.undofile = true

-- clipboard integration
vim.opt.clipboard = "unnamedplus"

-- search
vim.opt.hlsearch = true
vim.opt.incsearch = true -- immediate preview
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- clear search highlighting
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- indentation
vim.opt.autoindent = true
vim.opt.smartindent = true

-- indentation tab size
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- sign line column
vim.opt.signcolumn = "yes:1"

-- inline diagnostics
--[[
vim.diagnostic.config({
  virtual_text = true, -- Show diagnostics as inline virtual text
  signs = true,        -- Show signs in the sign column
  underline = true,    -- Underline lines with diagnostics
  update_in_insert = false,
})
--]]

-- command autocompletion
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.opt.wildoptions = "pum"

-- ================================ KEYMAPS ================================
-- telescope - ff, livegrep buffer, help
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- oil - file explorer
vim.keymap.set("n", "-", "<CMD>Oil<CR>")

-- terminal integration
vim.keymap.set("n", "<leader>tt", function()
	vim.cmd("botright 6split | terminal")
	vim.cmd("startinsert")
end)

-- rename all
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {
	desc = "Rename Symbol",
})

-- goto keymaps
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(event)
		local opts = { buffer = event.buf }

		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts)
	end,
})

-- visual line on narrowed text
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
