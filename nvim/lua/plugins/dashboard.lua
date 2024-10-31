return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  config = function()
    require("dashboard").setup({
      theme = "doom",
      disable_mode = true,
      hide = {
        statusline,
        tabline,
        winbar
      },
      shortcut_type = "number",
      config = {
        header = {
          "                                                   ",
          "                                                   ",
          "                                                   ",
          " ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓",
          " ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒",
          "▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░",
          "▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ ",
          "▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒",
          "░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░",
          "░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░",
          "   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   ",
          "         ░    ░  ░    ░ ░        ░   ░         ░   ",
          "                                ░                  ",
          "                                                   ",
          "                                                   ",
          "                                                   ",
        },
        center = {
          {
            icon = "󰈞",
            desc = " Find File",
            key = "f",
            action = "Telescope find_files",
          },
          {
            icon = "",
            desc = " Terminal",
            key = "t",
            action = "terminal"
          },
          {
            icon = "󱑤",
            desc = " Update",
            key = "u",
            action = "Lazy update"
          },
          {
            icon = "󰈆",
            desc = " Quit",
            key = "q",
            action = "quit"
          },
        },
        footer = {
          "",
          os.date("%D %H:%M:%S")
        },
      }
    })
  end,
  dependencies = { "nvim-tree/nvim-web-devicons" }
}
