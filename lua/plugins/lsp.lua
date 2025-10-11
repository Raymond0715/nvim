return {
	{
		'neovim/nvim-lspconfig', opts = {},
		event = { "BufReadPre", "BufNewFile" },
		config = function()
      local lspconfig = require("lspconfig")
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local on_attach = function(client, bufnr)
				local opts = { buffer = bufnr }
				vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to Definition' })
				vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'Go to Declaration' })
				vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = 'Go to Implementation' })
				vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'Find References' })
				vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Show Hover' })
			end

			vim.lsp.config("clangd", {
				on_attach = on_attach,
				capabilities = capabilities
			})

			vim.lsp.config("pyright", {
				on_attach = on_attach,
				capabilities = capabilities
			})

			vim.lsp.config("lua_ls", {
				on_attach = on_attach,
				capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
			})

			vim.api.nvim_create_autocmd("FileType", {
  			pattern = "python",
			  callback = function()
			    vim.lsp.enable("pyright")
			  end,
			})
			
			vim.api.nvim_create_autocmd("FileType", {
			  pattern = { "c", "cpp", "objc", "objcpp" },
			  callback = function()
			    vim.lsp.enable("clangd")
			  end,
			})
			
			vim.api.nvim_create_autocmd("FileType", {
			  pattern = "lua",
			  callback = function()
			    vim.lsp.enable("lua_ls")
			  end,
			})
    end,
	},
}
