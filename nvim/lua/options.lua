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

if not os.getenv("TERM") == "linux" then
  vim.opt.termguicolors = true
end

vim.opt.clipboard = "unnamedplus"
