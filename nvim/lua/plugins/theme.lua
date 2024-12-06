-- return {
--   "rebelot/kanagawa.nvim",
--   config = function()
--     vim.cmd("colorscheme kanagawa")
--   end
-- }

return {
  "folke/tokyonight.nvim",

  lazy = true,
  event = "VimEnter",

  config = function()
    vim.cmd("colorscheme tokyonight")
  end
}
