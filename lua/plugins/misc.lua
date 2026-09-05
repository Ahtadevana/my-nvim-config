return {
  -- transparent background to use terminal's
  {
    "xiyaowong/transparent.nvim",

    lazy = false,
    groups = {
      "Normal",
      "NormalNC",
      "Comment",
      "Constant",
      "Special",
      "Identifier",
      "Statement",
      "PreProc",
      "Type",
      "Underlined",
      "Todo",
      "String",
      "Function",
      "Conditional",
      "Repeat",
      "Operator",
      "Structure",
      "LineNr",
      "NonText",
      "SignColumn",
      "CursorLine",
      "CursorLineNr",
      "StatusLine",
      "StatusLineNC",
      "EndOfBuffer",
    },
    -- table: additional groups that should be cleared
    extra_groups = {},
    -- table: groups you don't want to clear
    exclude_groups = {},
    -- function: code to be executed after highlight groups are cleared
    -- Also the user event "TransparentClear" will be triggered
    on_clear = function() end,
  },

  -- discord rich presence
  {
    "vyfor/cord.nvim",

    lazy = false,
    opts = {
      display = {
        theme = "atom", -- 'default', 'atom', 'catppuccin', 'minecraft', 'void', 'classic'
        flavor = "dark", -- 'dark', 'light', 'accent'
        view = "asset",
      },

      text = {
        editing = function(opts)
          return string.format("Editing %s: [%d:%d]", opts.filename, opts.cursor_line, opts.cursor_char)
        end,
        workspace = "in Konsole",
      },

      idle = {
        details = function(opts)
          return "Taking a break from " .. opts.workspace
        end,
        state = "Be right back, bro",
        tooltip = "😴",
      },

      advanced = {
        discord = {
          reconnect = {
            enabled = true,
          },
        },
      },
    },
  },
}
