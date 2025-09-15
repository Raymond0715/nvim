return {
	{ 'hrsh7th/cmp-nvim-lsp', opts = {} },
	-- { 'hrsh7th/cmp-buffer', opts = {} },
	-- { 'hrsh7th/cmp-path', opts = {} },
	-- { 'hrsh7th/cmp-cmdline', opts = {} },
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
    },
		keys = {
			{"<leader>e", vim.diagnostic.open_float}
		},
		opts = function()

			local cmp = require('cmp')
			local luasnip = require("luasnip")

			local cmp_autopairs = require('nvim-autopairs.completion.cmp')
			local handlers = require('nvim-autopairs.completion.handlers')

			cmp.event:on(
			  'confirm_done',
			  cmp_autopairs.on_confirm_done({
			    filetypes = {
			      -- "*" is a alias to all filetypes
			      ["*"] = {
			        ["("] = {
			          kind = {
			            cmp.lsp.CompletionItemKind.Function,
			            cmp.lsp.CompletionItemKind.Method,
			          },
			          handler = handlers["*"]
			        }
			      },
			      lua = {
			        ["("] = {
			          kind = {
			            cmp.lsp.CompletionItemKind.Function,
			            cmp.lsp.CompletionItemKind.Method
			          },
			          ---@param char string
			          ---@param item table item completion
			          ---@param bufnr number buffer number
			          ---@param rules table
			          ---@param commit_character table<string>
			          handler = function(char, item, bufnr, rules, commit_character)
			            -- Your handler function. Inspect with print(vim.inspect{char, item, bufnr, rules, commit_character})
			          end
			        }
			      },
			      -- Disable for tex
			      tex = false
			    }
			  })
			)

			cmp.setup({
			  mapping = {
			    ["<Tab>"] = function(fallback)
			      if cmp.visible() then
			        cmp.select_next_item()
			      elseif luasnip.expand_or_jumpable() then
			        luasnip.expand_or_jump()
			      else
			        fallback()
			      end
			    end,
			    ["<S-Tab>"] = function(fallback)
			      if cmp.visible() then
			        cmp.select_prev_item()
			      elseif luasnip.jumpable(-1) then
			        luasnip.jump(-1)
			      else
			        fallback()
			      end
			    end,
			  },
			})

			return{
				snippet = {
    		  expand = function(args)
    		    require('luasnip').lsp_expand(args.body)
					end,
    		},
    		window = {
    		  -- completion = require('cmp').config.window.bordered(),
    		  -- documentation = require('cmp').config.window.bordered(),
    		},
    		mapping = cmp.mapping.preset.insert({
    		  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    		  ['<C-f>'] = cmp.mapping.scroll_docs(4),
    		  ['<C-Space>'] = cmp.mapping.complete(),
    		  ['<C-e>'] = cmp.mapping.abort(),
    		  ['<CR>'] = cmp.mapping.confirm({ select = true }),
				}),
    		sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
    		  { name = 'luasnip' },
				}, {
    		  { name = 'buffer' },
    		}),
			}
		end,
	},

}
