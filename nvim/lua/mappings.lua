-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- movement
vim.api.nvim_set_keymap("n", "<s-j>", "gj", { desc = "Move down by visible line" })
vim.api.nvim_set_keymap("n", "<s-k>", "gk", { desc = "Move up by visible line" })

vim.api.nvim_set_keymap("n", "<c-j>", "10j", { desc = "Move down fast" })
vim.api.nvim_set_keymap("n", "<c-k>", "10k", { desc = "Move up fast" })

-- buffer
vim.api.nvim_set_keymap("n", "<c-q>", "<cmd>bp<cr>", { desc = "Previous buffer" })
vim.api.nvim_set_keymap("n", "<c-e>", "<cmd>bn<cr>", { desc = "Next buffer" })
vim.api.nvim_set_keymap("n", "<c-c>", "<cmd>bdelete<cr>", { desc = "Delete buffer" })

-- terminal
vim.api.nvim_set_keymap("t", "<c-e>", "<c-\\><c-n>", { desc = "Exit terminal insert mode" })
vim.api.nvim_set_keymap("n", "<leader>ot", "<cmd>terminal<cr>", { desc = "Open terminal" })
