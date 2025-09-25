return {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
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
            "stevearc/conform.nvim",
            ---@module "conform"
            ---@type conform.setupOpts
            opts = {
                format_on_save = {
                    lsp_format = "fallback",
                    timeout_ms = 500,
                }
            }
        }
    },
}
