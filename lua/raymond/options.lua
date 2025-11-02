vim.opt.mouse='a'
vim.opt.cursorline = true         -- 高亮当前行
vim.opt.splitbelow = true         -- 新窗口在下方打开
vim.opt.relativenumber = true     -- 显示相对行号
vim.opt.number = true             -- 显示绝对行号（当前行）
vim.opt.completeopt = { "menu", "menuone" }
vim.opt.pumheight = 20
vim.opt.termguicolors = true
vim.opt.wrap = false

-- fold
vim.opt.sessionoptions:remove("folds")
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99

vim.o.tabstop = 4          -- 一个 Tab 显示为 4 个空格
vim.o.shiftwidth = 4       -- >> 或 << 命令移动时的宽度
vim.o.softtabstop = 4      -- 插入模式下，按 Tab 键插入空格数
