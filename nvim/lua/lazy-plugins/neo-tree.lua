return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    ---- Setup Neo-tree but do not open it automatically
    --require("neo-tree").setup({
      --window = {
        --position = "float",
        --float = {
          --enable = true,
          --border = "single", -- Options: "none", "single", "double", "rounded", "solid", "shadow"
        --},
      --},
      --filesystem = {
        --filtered_items = {
          --visible = true, -- Show hidden files by default
          --hide_dotfiles = false, -- Ensure dotfiles are not hidden
          --hide_gitignored = false, -- Show files that are ignored by git
        --},
      --},
    --})

    

    -- Set key mappings for opening Neo-tree
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal float<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", { noremap = true, silent = true })
    -- vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})

    -- Ensure the border and background are set to a simple look
    vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#1E1E2E", bg = "none" }) -- Adjust fg color to desired border color
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) -- Transparent background for float
  end,
}
