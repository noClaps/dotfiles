return {
    "stevearc/oil.nvim",
    ---@module "oil"
    ---@type oil.SetupOpts
    opts = {
        view_options = {
            show_hidden = true,
            is_always_hidden = function(name)
                local ignore_list = { ".git", ".DS_Store" }
                return vim.list_contains(ignore_list, name)
            end
        }
    },
    lazy = false
}
