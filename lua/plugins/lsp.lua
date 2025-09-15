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

      lspconfig.clangd.setup({
				on_attach = on_attach,
				capabilities = capabilities
			})
			lspconfig.pyright.setup({
				on_attach = on_attach,
				capabilities = capabilities
			})
      lspconfig.lua_ls.setup({
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
    end,
	},
}
