return {
	{ "rafamadriz/friendly-snippets" },
	{
	  "L3MON4D3/LuaSnip",
	  dependencies = { "rafamadriz/friendly-snippets" },
		version = "v2.4.0",
		build = "make install_jsregexp",
		opts = function()
  	  require("luasnip.loaders.from_vscode").lazy_load()
  	  return {}
		end
	},
}
