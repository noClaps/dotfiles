return {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
        {
            "saghen/blink.cmp",
            version = "1.*",
            opts = {
                keymap = { preset = "enter" }
            }
        },
        {
            "stevearc/conform.nvim",
            opts = {}
        }
    },
}
