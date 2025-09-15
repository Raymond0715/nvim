vim.opt_local.wrap = true
vim.opt_local.linebreak = true
-- vim.opt.spell = true
-- vim.opt.spelllang = { "en_us" }

-- 可选：让 j/k/h/l 都按“视觉行”走
vim.keymap.set("n", "j", "gj", { buffer = true })
vim.keymap.set("n", "k", "gk", { buffer = true })
