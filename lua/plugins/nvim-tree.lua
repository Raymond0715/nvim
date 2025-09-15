return {
	{
	  "nvim-tree/nvim-tree.lua",
	  version = "*",
	  lazy = false,
	  dependencies = {
	    "nvim-tree/nvim-web-devicons",
	  },
		keys = {
			{"<C-n>", "<cmd>NvimTreeToggle<CR>"}
		},
	  opts = {
			sort = { sorter = "case_sensitive" },
			view = { width = 30 },
  		renderer = { group_empty = true },
  		filters = { dotfiles = true },
		},
	}
}
