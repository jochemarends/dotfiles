return {
    "rafi/awesome-vim-colorschemes",
    config = function()
        vim.opt.termguicolors = true
        vim.cmd("colorscheme lunaperche")
    end,
}
