return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },
  {
    "NeogitOrg/neogit",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "sindrets/diffview.nvim",        -- optional - Diff integration
      "nvim-telescope/telescope.nvim", -- optional
    },
    config = true
  },
  --{
    --'Exafunction/codeium.vim',
    --event = "InsertEnter",
    --config = function ()
      ---- Change '<C-g>' here to any keycode you like.
      --vim.keymap.set('i', '<C-e>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
      --vim.keymap.set('i', '<c-n>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
      --vim.keymap.set('i', '<c-p>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
      --vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
    --end
  --},
  'onsails/lspkind.nvim',
--  {
--    "iamcco/markdown-preview.nvim",
--    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
--    ft = { "markdown" },
--    build = function() vim.fn["mkdp#util#install"]() end,
--  },
--  {
--    "epwalsh/obsidian.nvim",
--    version = "*",  -- recommended, use latest release instead of latest commit
--    lazy = true,
--    ft = "markdown",
--    dependencies = {
--      "nvim-lua/plenary.nvim",
--    },
--  },
  'folke/zen-mode.nvim',
 -- 'tpope/vim-obsession',
  -- Tree
  -- {
  --   "nvim-tree/nvim-tree.lua",
  --   version = "*",
  --   lazy = true,
  --   requires = {
  --     "nvim-tree/nvim-web-devicons",
  --   },
  --   config = function()
  --     require("nvim-tree").setup({
  --       vim.api.nvim_set_keymap("n", "ff", ":NvimTreeToggle<enter>", { noremap=false }) 
  --       -- vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) 
  --       -- vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) 
  --       -- vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) 
  --     })
  --   end,
  -- },

  'ThePrimeagen/git-worktree.nvim',
  "tpope/vim-surround",
  'xiyaowong/nvim-transparent',
  -- {
    -- 'rmagatti/goto-preview',
    -- config = function()
      -- require('goto-preview').setup {
        -- width = 120; -- Width of the floating window
        -- height = 15; -- Height of the floating window
        -- border = {"↖", "─" ,"┐", "│", "┘", "─", "└", "│"}; -- Border characters of the floating window
        -- default_mappings = true;
        -- debug = false; -- Print debug information
        -- opacity = nil; -- 0-100 opacity level of the floating window where 100 is fully transparent.
        -- resizing_mappings = false; -- Binds arrow keys to resizing the floating window.
        -- post_open_hook = nil; -- A function taking two arguments, a buffer and a window to be ran as a hook.
        -- references = { -- Configure the telescope UI for slowing the references cycling window.
          -- telescope = require("telescope.themes").get_dropdown({ hide_preview = false })
        -- };
        -- -- These two configs can also be passed down to the goto-preview definition and implementation calls for one off "peak" functionality.
        -- focus_on_open = true; -- Focus the floating window when opening it.
        -- dismiss_on_move = false; -- Dismiss the floating window when moving the cursor.
        -- force_close = true, -- passed into vim.api.nvim_win_close's second argument. See :h nvim_win_close
        -- bufhidden = "wipe", -- the bufhidden option to set on the floating window. See :h bufhidden
        -- stack_floating_preview_windows = true, -- Whether to nest floating windows
        -- preview_window_title = { enable = true, position = "left" }, -- Whether 
      -- }
    -- end
  -- },

{
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Symbols (Trouble)",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "LSP Definitions / references / ... (Trouble)",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
      desc = "Location List (Trouble)",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List (Trouble)",
    },
  },
},

  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {}
    end
  },


--  {
    --"folke/noice.nvim",
    --config = function()
      --require("noice").setup({
        ---- add any options here
        --routes = {
          --{
            --filter = {
              --event = 'msg_show',
              --any = {
                --{ find = '%d+L, %d+B' },
                --{ find = '; after #%d+' },
                --{ find = '; before #%d+' },
                --{ find = '%d fewer lines' },
                --{ find = '%d more lines' },
              --},
            --},
            --opts = { skip = true },
          --}
        --},
      --})
    --end,
    --dependencies = {
      ---- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      --"MunifTanjim/nui.nvim",
      --"rcarriga/nvim-notify",
    --}
  --},

  { "catppuccin/nvim", as = "catppuccin" },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function() require("nvim-autopairs").setup {} end
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"}
  },
  'theHamsta/nvim-dap-virtual-text',
  'nvim-lualine/lualine.nvim', -- Fancier statusline
  {
    'numToStr/Comment.nvim', -- "gc" to comment visual regions/lines 
    event = { "BufRead", "BufNewFile" },
    config = true
  },
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- Fuzzy Finder (files, lsp, etc)
  'nvim-telescope/telescope-symbols.nvim',
  -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make', cond = vim.fn.executable 'make' == 1 },
  {
    "folke/twilight.nvim",
    ft = "markdown",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
}