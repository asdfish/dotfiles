return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = true,
      ensure_installed = {
        "c", "cpp", "make",
        "bash",
        "markdown", "markdown_inline",
        "regex",
        "vim", "vimdoc",
        "lua",
        "rust",
        "html", "css", "javascript", "typescript"
      },
      highlight = {
        enable = true
      },
      indent = {
        enable = true
      }
    })
  end,
}
