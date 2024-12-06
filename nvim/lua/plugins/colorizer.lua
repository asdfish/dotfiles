return {
  "norcalli/nvim-colorizer.lua",

  lazy = true,
  ft = { "css", "conf", "dosini" },

  config = function()
    require("colorizer").setup({
      "*"
    })
  end,
}
