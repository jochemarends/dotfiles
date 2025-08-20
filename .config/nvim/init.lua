require("config.lazy")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

vim.opt.clipboard = "unnamedplus"

vim.opt.wildmenu = true
vim.diagnostic.config({ virtual_text = true })

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
