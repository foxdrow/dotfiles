vim.g.mapleader = " "

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"


--[[ KEYBINDINGS ]]

-- Map <leader>ws to save with sudo in Neovim
vim.keymap.set('n', '<leader>ws', ':w !sudo tee % > /dev/null<CR>', { silent = true })

-- modification when C-A is the tmux prefix
-- vim.keymap.set({"n", "v"}, "<C-s>", "<C-a>")
-- vim.keymap.set({"n", "v"}, "g<C-s>", "g<C-a>")

vim.keymap.set('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v' }, '<leader>h', '^', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v' }, '<leader>l', '$', { noremap = true, silent = true })

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

-- Map <leader>pv to open the file explorer using vim's Ex command
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- In visual mode, move the selected lines down by one
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
-- In visual mode, move the selected lines up by one
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
-- In visual mode, duplicate selection down and keep it highlighted
vim.keymap.set("v", "<A-j>", "y'>p<CR>gv", { noremap = true, silent = true })
-- In visual mode, duplicate selection up and keep it highlighted
vim.keymap.set("v", "<A-k>", "y'<P<CR>gv", { noremap = true, silent = true })

-- In normal mode, join the current line with the next line and maintain cursor position
vim.keymap.set("n", "J", "mzJ`z")
-- In normal mode, scroll down and keep the cursor centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- In normal mode, scroll up and keep the cursor centered
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- In normal mode, move to the next search result and center the cursor
vim.keymap.set("n", "n", "nzzzv")
-- In normal mode, move to the previous search result and center the cursor
vim.keymap.set("n", "N", "Nzzzv")

-- The "greatest remap ever": paste from the unnamed register and delete the copied text from the default register
-- vim.keymap.set("x", "<leader>p", [["_dP]])
-- Paste from the clipboard in normal and visual modes
-- vim.keymap.set("v", "<leader>p", [["+p]])
-- Paste the entire line from the clipboard in normal mode
vim.keymap.set("n", "<leader>P", [["+P]])

-- Copy to the clipboard in normal and visual modes
vim.keymap.set("v", "<leader>y", [["+y]])
-- Copy the entire line to the clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete to the unnamed register in normal and visual modes (i.e., it won't affect the default register)
vim.keymap.set("v", "<leader>d", "\"_d")

-- Map <C-c> to escape insert mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disable the Q command
vim.keymap.set("n", "Q", "<nop>")
-- Open a new tmux session using <C-f>
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- Format the current buffer using LSP with <leader>f
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Navigate to the next quickfix entry and center the cursor
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- Navigate to the previous quickfix entry and center the cursor
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- Navigate to the next location in the location list and center the cursor
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- Navigate to the previous location in the location list and center the cursor
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replace the current word under the cursor with the last word yanked, preserving case
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/cI<Left><Left><Left>]])
-- Make the current file executable using <leader>x
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- In normal mode, quit without saving
-- vim.keymap.set("n", "QQ", ":q!<CR>", { noremap = false })
-- In normal mode, save the file
-- vim.keymap.set("n", "WW", ":w!<CR>", { noremap = false })
-- In normal mode, move to the end of the line
-- vim.keymap.set({"n", "v"}, "E", "$", { noremap = false })
-- In normal mode, move to the beginning of the line
-- vim.keymap.set({"n", "v"}, "B", "^", { noremap = false })
-- In normal mode, toggle transparency
vim.keymap.set("n", "TT", ":TransparentToggle<CR>", { noremap = true })

-- Map Ctrl + Backspace to delete the last word in insert mode
vim.keymap.set('i', '<C-H>', '<C-W>', { noremap = true, silent = true })

-- -- Reload the current Neovim configuration with <leader><leader>
-- vim.keymap.set("n", "<leader><leader>", function()
    -- vim.cmd("so")
-- end)
