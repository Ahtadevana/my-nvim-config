return {
  {
    "xiyaowong/transparent.nvim",

    lazy = false,
    groups = {
      'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
      'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
      'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
      'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
      'EndOfBuffer',
    },
    -- table: additional groups that should be cleared
    extra_groups = {},
    -- table: groups you don't want to clear
    exclude_groups = {},
    -- function: code to be executed after highlight groups are cleared
    -- Also the user event "TransparentClear" will be triggered
    on_clear = function() end,
  },

  {
    "vyfor/cord.nvim",

    lazy = false;
    opts = {
      display = {
        theme = "atom",   -- 'default', 'atom', 'catppuccin', 'minecraft', 'void', 'classic'
        flavor = "dark",   -- 'dark', 'light', 'accent'
        view = "asset",
      },

      text = {
        editing = function(opts)
          return string.format("Editing %s: [%d:%d]", opts.filename, opts.cursor_line, opts.cursor_char)
        end,
        workspace = "in kitty";
      },

      idle = {
        details = function(opts)
          return 'Taking a break from ' .. opts.workspace
        end,
        state = 'Be right back',
        tooltip = '😴',
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

  {
    "sphamba/smear-cursor.nvim",

    lazy = false,
    opts = {
      smear_between_buffers = true,
      smear_between_neighbor_lines = true,
      scroll_buffer_space = true,
      legacy_computing_symbols_support = false,
      smear_insert_mode = true,


      stiffness = 0.8,                      -- 0.6      [0, 1]
      trailing_stiffness = 0.6,             -- 0.45     [0, 1]
      stiffness_insert_mode = 0.9,          -- 0.5      [0, 1]
      trailing_stiffness_insert_mode = 0.7, -- 0.5      [0, 1]
      damping = 0.95,                       -- 0.85     [0, 1]
      damping_insert_mode = 0.95,           -- 0.9      [0, 1]
      distance_stop_animating = 0.5,        -- 0.1      > 0
    },
  },
}
