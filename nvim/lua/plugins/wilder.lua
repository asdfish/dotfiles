return {
  "gelguy/wilder.nvim",
  dependencies = {
    "roxma/vim-hug-neovim-rpc",
    "roxma/nvim-yarp"
  },
  config = function()
    wilder = require("wilder")
    wilder.set_option('renderer', wilder.popupmenu_renderer(
      wilder.popupmenu_border_theme({
        highlighter = wilder.basic_highlighter(),
        min_width = '100%', -- minimum height of the popupmenu, can also be a number
        max_height = '30%', -- to set a fixed height, set max_height to the same value
        reverse = 0,        -- if 1, shows the candidates from bottom to top
      })
    ))
    wilder.setup({
      modes = { ":", "/", "?" },
    })
  end
}
