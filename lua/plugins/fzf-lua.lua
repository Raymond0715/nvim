return {
	{
	  "ibhagwan/fzf-lua",
	  -- optional for icon support
	  dependencies = { "nvim-tree/nvim-web-devicons" },
	  -- or if using mini.icons/mini.nvim
	  -- dependencies = { "echasnovski/mini.icons" },
		lazy = false,
		keys = {
			{"<leader>o", "<cmd>FzfLua files<CR>"},
			{"<leader>ff", "<cmd>FzfLua live_grep<CR>"},
			{"<leader>fw", "<cmd>FzfLua grep_cword<CR>"},
		},
	  opts = {}
	},
}
