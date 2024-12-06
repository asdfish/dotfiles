return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  lazy = true,
  event = "BufEnter",
  config = function()
    local bufferline = require("bufferline") 

    bufferline.setup({
      options = {
        mode = "buffers", -- buffers | tabs
        style = bufferline.style_preset.default, -- bufferline.style_preset.default | bufferline.style_preset.minimal
        themable = true, -- true | false
        numbers = "none", -- none | ordial | buffer_id | both | function({ordial, id, lower, raise}): string
        close_command = "bdelete! %d", -- string | functions | nil
        right_mouse_command = false, -- string | function | false
        left_mouse_command = false, -- string | funciton | false
        middle_mouse_command = false, -- string | function | false
        indicator = {
          -- icon = "▎", -- only set if style is icon
          style = "icon", -- icon | underline | none
        },
        buffer_close_icon = '󰅖',
        modified_icon = '● ',
        close_icon = ' ',
        left_trunc_marker = ' ',
        right_trunc_marker = ' ',
        max_name_length = 18,
        max_prefix_length = 15,
        truncate_names = true,
        diagnostics = false, -- false | nvim_lsp | coc
        -- diagnostics_update_in_insert = false, -- applies to coc
        diatnostics_update_on_event = false, -- use nvim diagnostic handler
        -- The diagnostics indicator can be set to nil to keep the buffer name highlight but delete the highlighting
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          return "("..count..")"
        end,
        -- NOTE: this will be called a lot so don't do any heavy processing here
        custom_filter = function(buf_number, buf_numbers)
          -- filter out filetypes you don't want to see
          if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
            return true
          end
          -- filter out by buffer name
          if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
            return true
          end
          -- filter out based on arbitrary rules
          -- e.g. filter out vim wiki buffer from tabline in your work repo
          if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
            return true
          end
          -- filter out by it's index number in list (don't show first buffer)
          if buf_numbers[1] ~= buf_number then
            return true
          end
        end,
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer", -- string | function
            text_align = "left", -- left | center | right
            separator = true,
          }
        },
        color_icons = true, -- whether or not to add filetype icons
        -- get_element_icon = function(element)
        --   -- element consists of {filetype: string, path: string, extension: string, directory: string}
        --   -- This can be used to change how bufferline fetches the icon
        --   -- for an element e.g. a buffer or a tab.
        --   -- e.g.
        --   local icon, hl = require('nvim-web-devicons').get_icon_by_filetype(element.filetype, { default = false })
        --   return icon, hl
        --   -- or
        --   local custom_map = {my_thing_ft: {icon = "my_thing_icon", hl}}
        --   return custom_map[element.filetype]
        -- end,
        show_buffer_icons = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = true,
        show_duplicate_prefix = true,
        duplicates_across_groups = true, -- whether or not to consider duplicate paths in different groups as duplicates
        persist_buffer_sort = true,
        move_wraps_at_end = false, -- whether or not wraps goes to first or last position
        separator_stype = "slant", -- slant | slope | thick | thin | {'any', 'any'}
        enforce_regular_tabs = true,
        always_show_bufferline = true,
        auto_toggle_bufferline = true,
        hover = {
          enabled = false,
          -- delay = 200 -- only applies for enabled
          -- reveal = {"close"} -- only applies if enabled
        },
        -- sort_by = "tabs",
        -- sort_by = 'insert_after_current' |'insert_at_end' | 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
        --   -- add custom logic
        --   local modified_a = vim.fn.getftime(buffer_a.path)
        --   local modified_b = vim.fn.getftime(buffer_b.path)
        --   return modified_a > modified_b
        -- end
      }
    })
  end,
}
