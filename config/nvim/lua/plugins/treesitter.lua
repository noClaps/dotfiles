return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",
    config = function()
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "*",
            callback = function(args)
                local treesitter = require("nvim-treesitter")
                local lang = args.match

                if vim.list_contains(treesitter.get_installed(), lang) then
                    vim.treesitter.start()
                    return
                end

                if not vim.list_contains(treesitter.get_available(), lang) then
                    return
                end
                treesitter.install(lang):await(function()
                    vim.treesitter.start()
                end)
            end,
        })
    end
}
