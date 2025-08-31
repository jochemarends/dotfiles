return {
    {
       "rafi/awesome-vim-colorschemes",
        config = function()
            vim.opt.termguicolors = true
            vim.cmd("colorscheme lunaperche")
        end,
    },
    { "https://github.com/davidosomething/vim-colors-meh" },
}
