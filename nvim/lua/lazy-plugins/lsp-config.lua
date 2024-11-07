return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.ts_ls.setup({
        capabilities = capabilities
      })
      lspconfig.tailwindcss.setup({
        capabilities = capabilities
      })
      lspconfig.jsonls.setup({
        capabilities = capabilities
      })
      lspconfig.bashls.setup({
        capabilities = capabilities
      })
      lspconfig.yamlls.setup({
        capabilities = capabilities
      })
      lspconfig.solargraph.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })

      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})

     -- LSP key mappings (just the new ones you requested)
      vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { buffer = 0 })
      vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { buffer = 0 })
      vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { buffer = 0 })
      vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { buffer = 0 })

      -- LSP key mappings (for actions like rename, code action, etc.)
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer = 0 })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = 0 })
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0 })
      vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, { buffer = 0 })
      vim.keymap.set('n', 'gI', vim.lsp.buf.implementation, { buffer = 0 })
      vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, { buffer = 0 })
      vim.keymap.set('n', '<leader>ds', require('telescope.builtin').lsp_document_symbols, { buffer = 0 })
      vim.keymap.set('n', '<leader>ww', require('telescope.builtin').lsp_dynamic_workspace_symbols, { buffer = 0 })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { buffer = 0 })

      -- Workspace management key mappings
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = 0 })
      vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, { buffer = 0 })
      vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, { buffer = 0 })
      vim.keymap.set('n', '<leader>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, { buffer = 0 })

      -- Local format command for LSP buffer
      vim.api.nvim_buf_create_user_command(0, 'Format', function(_)
        if vim.lsp.buf.format then
          vim.lsp.buf.format()
        elseif vim.lsp.buf.formatting then
          vim.lsp.buf.formatting()
        end
      end, { desc = 'Format current buffer with LSP' }) vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
    end,
  },
}
