return {
    {{"rose-pine/neovim", name = "rose-pine"}},
    {{"rebelot/kanagawa.nvim"}},
    {{"folke/tokyonight.nvim"}},
    {{"EdenEast/nightfox.nvim"}},
    {
        "rafi/awesome-vim-colorschemes",
        config = function()
            vim.opt.termguicolors = true
            vim.cmd("colorscheme terafox")
        end,
    },
}

-- mountaineer
-- lunaperche
-- hybrid_reverse
-- paramount
-- jellybeans
-- pablo

