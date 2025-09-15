local opts = { noremap = true, silent = true }

-- System
vim.keymap.set("n", "tt", "<cmd>tabnew<CR>", opts)
vim.keymap.set("n", "ts", "<cmd>tab split<CR>", opts)
vim.keymap.set("n", "tc", "<cmd>tabclose<CR>", opts)
vim.keymap.set("n", "tr", "<cmd>tabp<CR>", opts)
vim.keymap.set("n", "tg", "<cmd>tabn<CR>", opts)
vim.keymap.set("n", "tk", "<cmd>tabmove -1<CR>", opts)
vim.keymap.set("n", "tj", "<cmd>tabmove +1<CR>", opts)

vim.keymap.set("n", "<A-d>", "<C-w><C-]><C-w>T", opts)
vim.keymap.set("n", "<A-j>", "<C-W><C-J>", opts)
vim.keymap.set("n", "<A-k>", "<C-W><C-K>", opts)
vim.keymap.set("n", "<A-l>", "<C-W><C-L>", opts)
vim.keymap.set("n", "<A-h>", "<C-W><C-H>", opts)
vim.keymap.set("n", "<A-w>", "<cmd>w<CR>", opts)
vim.keymap.set("n", "<A-q>", "<Esc>", opts)

vim.keymap.set("n", "<F4>", "<cmd>set hlsearch! hlsearch?<CR>", opts)

vim.keymap.set({"n", "v"}, "<leader>y", '"+y', opts)
vim.keymap.set({"n", "v"}, "<leader>p", '"+p', opts)

vim.keymap.set("i", "<A-w>", "<Esc><cmd>w<CR>", opts)
vim.keymap.set("i", "<A-q>", "<Esc>", opts)

vim.keymap.set("t", "<A-q>", [[<C-\><C-n>]], opts)
