return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },

	opts = {
		format_on_save = {
			timeout_ms = 1000,
			lsp_format = "fallback",
		},

		formatters_by_ft = {
			go = { "gofumpt", "goimports" },
			sh = { "shfmt" },
			bash = { "shfmt" },
			lua = { "stylua" },
		},
	},
}
