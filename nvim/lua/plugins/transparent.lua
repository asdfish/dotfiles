return {
  "xiyaowong/transparent.nvim",
  config = function()
    -- Optional, you don't have to run setup.
    require("transparent").setup({
      -- table: default groups
      groups = {
        'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
        'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
        'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
        'SignColumn', 'StatusLine', 'StatusLineNC', -- "CursorLine", "CursorLineNr",
        'EndOfBuffer'
      }, -- CursorLine, CursorLineNr
      -- table: additional groups that should be cleared
      extra_groups = {
      },
      -- table: groups you don't want to clear
      exclude_groups = {},
      -- function: code to be executed after highlight groups are cleared
      -- Also the user event "TransparentClear" will be triggered
      on_clear = function() end,
    })
    require("transparent").clear_prefix("Lazy")
    require("transparent").clear_prefix("Mason")
    require("transparent").clear_prefix("NvimTree")
    require("transparent").clear_prefix("telescope")
  end,
}
