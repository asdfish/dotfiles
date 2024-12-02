return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup()

    vim.api.nvim_set_keymap("n", "<leader>tg", "<cmd>Telescope live_grep<cr>", { desc = "Telescope live grep" })
    vim.api.nvim_set_keymap("n", "<leader>th", "<cmd>Telescope keymaps<cr>", { desc = "Telescope keymaps" })
  end,
}
