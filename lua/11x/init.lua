require("11x.mappings")
require("11x.packer")

require("nvim-tree").setup()
require("nvim-dap-projects").search_project_config()

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
vim.opt.guifont = { "FiraCode NF", ":h12" }

vim.opt.termguicolors = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.signcolumn = "yes"
vim.opt.laststatus = 3
vim.opt.splitkeep = "screen"
