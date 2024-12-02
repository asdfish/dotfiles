vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true

vim.opt.cursorline = true
vim.opt.cursorcolumn = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.termguicolors = true

vim.opt.clipboard = "unnamedplus"

vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    if require("nvim-treesitter.parsers").has_parser() then
      vim.opt.foldmethod = "expr"
      vim.opt.foldexpr = "nvim_tresitter#foldexpr()"
    else
      vim.opt.foldmethod = "syntax"
    end
  end,
})
