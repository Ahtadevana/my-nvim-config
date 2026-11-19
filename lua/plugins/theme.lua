return {
	-- catppuccin theme
	--[[
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
    ]]
	--

	--tsoding theme (tweaked types)
	{
		"ring0-rootkit/ring0-dark.nvim",
		priority = 1000,
		init = function()
			vim.cmd.colorscheme("ring0dark")

			local yellow = "#ffdd33"

			for _, group in ipairs({
				"Type",
				"@type",
				"@type.builtin",
				"@type.definition",
			}) do
				vim.api.nvim_set_hl(0, group, {
					fg = yellow,
					bold = true,
				})
			end
		end,
	},

	{
		"xiyaowong/transparent.nvim",
	},
}
