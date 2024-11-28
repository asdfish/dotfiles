return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "c", "cpp", "make",
        "rust",
        "bash",
        "javascript", "typescript", "html", "css",
        "lua", "vim", "vimdoc",
        "markdown",
      },
      auto_install = true,
      highlight = {
        enable = true
      },
      indent = {
        enable = true
      },
    })

    vim.opt.foldmethod = "expr"
    vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
  end,
}
