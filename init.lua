-- ~/.config/nvim/init.lua
--vim.cmd("source " .. vim.fn.stdpath("config") .. "/legacy.vim")

require('raymond.options')
require('config.lazy')
require('raymond.highlight')
require('raymond.keymaps')
require('raymond.autocmds')
require('raymond.env')

vim.cmd[[colorscheme tokyonight-storm]]
