return {
  "lervag/vimtex",
	lazy = false,
  init = function()
    vim.g.vimtex_view_method = "zathura" -- 可换成 skim, okular 等
    vim.g.vimtex_compiler_method = "latexmk"
  end,
}

