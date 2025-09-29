return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.enable({
                "cssls",
                "eslint",
                "gopls",
                "jsonls",
                "lua_ls",
                "rust_analyzer",
                "superhtml",
                "tombi",
            })
            vim.api.nvim_create_autocmd("BufWritePre", {
                callback = function()
                    vim.lsp.buf.format()
                end
            })
        end
    },
    {
        "saghen/blink.cmp",
        version = "1.*",
        ---@module "blink.cmp"
        ---@type blink.cmp.Config
        opts = {
            keymap = { preset = "super-tab" }
        }
    },
    {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
            library = {
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    }
}
