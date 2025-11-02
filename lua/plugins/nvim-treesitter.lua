return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate", -- 安装或更新语法解析器
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"python",
					"lua",
          			"c",
          			"cpp",
          			"bash",
          			"markdown",
          			"json",
          			"yaml",
				},
				highlight = { enable = true, },
        		indent = { enable = true, },
				fold = { enable = true },
			})
			-- 👇 确保文件打开后强制刷新折叠
			vim.api.nvim_create_autocmd("BufWinEnter", {
    		  pattern = "*",
    		  callback = function()
    		    vim.defer_fn(function()
    		      vim.cmd("normal! zx")
    		    end, 100)
    		  end,
    		})
		end,
	}
}
