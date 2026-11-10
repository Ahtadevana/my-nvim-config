return {
    {
      "windwp/nvim-autopairs",
      event = "InsertEnter",
      -- This automatically calls setup() with default options
      config = true,
    },
    {
      "rachartier/tiny-inline-diagnostic.nvim",
      event = "LspAttach",
      priority = 1000,
      config = function()
        require("tiny-inline-diagnostic").setup({
          preset = "modern", -- Styles: "modern", "classic", "minimal", "powerline", etc.
          transparent_cursorline = true,
        })
        vim.diagnostic.config({ virtual_text = false }) -- Disable default virtual text
      end,
    },
}
