return {
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  {
    "Exafunction/codeium.vim", -- Add the Codeium plugin
    config = function()
      -- Optional: Customize Codeium settings here if needed
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        completion = {
          autocomplete = false, -- This disables automatic completion, so suggestions appear only on <C-n>
        },
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        
        window = {
          completion = {
            border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }, -- Change border style here
            winhighlight = "Normal:Normal,FloatBorder:Normal", -- Optional: Customize colors
          },
          documentation = {
            border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }, -- Change border style here
            winhighlight = "Normal:Normal,FloatBorder:Normal", -- Optional: Customize colors
          },
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = 'codeium' },
          { name = "nvim_lsp" },
          { name = "luasnip" }, -- For luasnip users.
        }, {
          { name = "buffer" },
        }),
      })
    end,
  },
}
