return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        component_separators = "|",
        section_separators = "",
      },
      sections = {
        lualine_a = {
          {
            "buffers",
          },
        },
        lualine_x = {
          {
            function()
              return require("noice").api.statusline.mode.get()
            end,
            cond = function()
              return require("noice").api.statusline.mode.has()
            end,
            color = { fg = "#ff9e64" },
          },
          {
            function()
              return require("noice").api.status.command.get()
            end,
            cond = function()
              return require("noice").api.status.command.has()
            end,
            color = { fg = "#ff9e64" },
          },
        },
      },
    })
  end,
}
