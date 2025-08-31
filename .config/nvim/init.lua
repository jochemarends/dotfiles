require("config.lazy")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

vim.opt.clipboard = "unnamedplus"

vim.opt.wildmenu = true
vim.diagnostic.config({ virtual_text = true })

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pw", "<cmd>write<cr>")
vim.keymap.set("n", "<leader>pc", "<cmd>write | make<cr>")

vim.api.nvim_create_autocmd("FileType", {
    pattern = "elixir",
    -- command = "setlocal makeprg=elixir\\ %",
    callback = function()
        vim.bo.makeprg = "elixir %"
        vim.keymap.set("n", "<leader>pt", "<cmd>write | !mix test<cr>")
    end
})
