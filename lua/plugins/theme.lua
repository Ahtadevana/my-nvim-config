return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = false,

		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				no_italic = false,

				styles = {
					comments = { "italic" },
					conditionals = { "italic" },
					loops = { "italic" },
					functions = { "italic" },
					keywords = { "italic" },
					strings = {},
					variables = {},
					numbers = {},
					booleans = { "italic" },
					properties = {},
					types = { "italic" },
				},

				custom_highlights = function(colors)
					return {
						["@keyword.return"] = { style = { "italic" } },
						["@keyword.exception"] = { style = { "italic" } },
						["@keyword.operator"] = { style = { "italic" } },

						["@type.builtin"] = { style = { "italic" } },
						["@constant.builtin"] = { style = { "italic" } },

						["@function.builtin"] = { style = { "italic" } },
						["@constructor"] = { style = { "italic" } },
					}
				end,
			})

			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},

	{
		"xiyaowong/transparent.nvim",
	},
}
