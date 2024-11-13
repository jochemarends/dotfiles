return {
    {
        'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',
        dependencies = {
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/nvim-cmp'},
            {'L3MON4D3/LuaSnip'},
        },
        config = function()
            local lsp = require('lsp-zero')

            lsp.on_attach(function(client, bufnr)
                -- see :help lsp-zero-keybindings
                -- to learn the available actions
                lsp.default_keymaps({buffer = bufnr})
                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
                vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end)
                vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end)
                vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end)
                vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end)
                vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end)
            end)

            require('mason').setup({})
            require('mason-lspconfig').setup({
                -- Replace the language servers listed here 
                -- with the ones you want to install
                ensure_installed = { 'gopls', 'clangd', 'tsserver' },
                handlers = {
                    function(server_name)
                        require('lspconfig')[server_name].setup({})
                    end,
                },
            })
        end,
    }
}

