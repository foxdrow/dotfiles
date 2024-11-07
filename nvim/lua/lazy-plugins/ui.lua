return {
	{
		"nvimdev/dashboard-nvim",
		enabled = false,
	},
	{
		"nvim-lualine/lualine.nvim",
		enabled = true,
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		}
	},
	{
		"rcarriga/nvim-notify",
		opts = {
			timeout = 5000,
			background_colour = "#000000",
			render = "wrapped-compact",
		},
	},
	--{
	--	"b0o/incline.nvim",
	--	event = "BufReadPre",
	--	priority = 1200,
	--	config = function()
	--		local helpers = require("incline.helpers")
	--		require("incline").setup({
	--			window = {
	--				padding = 0,
	--				margin = { horizontal = 0 },
	--			},
	--			render = function(props)
	--				local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
	--				local ft_icon, ft_color = require("nvim-web-devicons").get_icon_color(filename)
	--				local modified = vim.bo[props.buf].modified

	--				local buffer = {}
	--				if ft_icon then
	--					table.insert(buffer, { " ", ft_icon, " ", guibg = ft_color, guifg = helpers.contrast_color(ft_color) })
	--				end
	--				table.insert(buffer, " ")
	--				table.insert(buffer, { filename, gui = modified and "bold,italic" or "bold" })
	--				table.insert(buffer, " ")
	--				buffer.guibg = "#363944"

	--				return buffer
	--			end,
	--		})
	--	end,
	--},
	{
		"kdheepak/lazygit.nvim",
		keys = {
			{
				";c",
				":LazyGit<Return>",
				silent = true,
				noremap = true,
			},
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"kristijanhusak/vim-dadbod-ui",
		dependencies = {
			{ "tpope/vim-dadbod", lazy = true },
			{ "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
		},
		cmd = {
			"DBUI",
			"DBUIToggle",
			"DBUIAddConnection",
			"DBUIFindBuffer",
		},
		init = function()
			vim.g.db_ui_use_nerd_fonts = 1
		end,
		keys = {
			{
				"<leader>d",
				"<cmd>NvimTreeClose<cr><cmd>tabnew<cr><bar><bar><cmd>DBUI<cr>",
			},
		},
	},
}