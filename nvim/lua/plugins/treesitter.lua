return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = true
    })
  end,
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  }
}
