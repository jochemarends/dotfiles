return {
    {{"rose-pine/neovim", name = "rose-pine"}},
    {{"rebelot/kanagawa.nvim"}},
    {{"folke/tokyonight.nvim"}},
    {{"EdenEast/nightfox.nvim"}},
    {
        "vague2k/vague.nvim",
        config = function()
            require("vague").setup({
                -- optional configuration here
            })
        end
    },
    {
        "rafi/awesome-vim-colorschemes",
        config = function()
            vim.opt.termguicolors = true
            vim.cmd("colorscheme lunaperche")
        end,
    },
}

-- mountaineer
-- lunaperche
-- hybrid_reverse
-- paramount
-- jellybeans
-- pablo

