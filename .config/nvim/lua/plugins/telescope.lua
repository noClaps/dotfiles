return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        local actions = require("telescope.actions")
        require("telescope").setup({
            defaults = {
                mappings = {
                    i = {
                        ["<esc>"] = actions.close
                    }
                }
            },
            pickers = {
                find_files = {
                    find_command = { "fd", "-H", "--type", "f", "--strip-cwd-prefix", "--exclude", ".git" }
                }
            }
        })

        vim.keymap.set("n", "<leader><leader>", ":Telescope find_files<CR>")
        vim.keymap.set("n", "<leader>g", ":Telescope live_grep<CR>")

        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        vim.api.nvim_create_autocmd("VimEnter", {
            callback = function()
                local arg = vim.fn.expand("%:p")
                if vim.fn.isdirectory(arg) == 1 then
                    vim.cmd("bd")
                    vim.cmd("Telescope find_files cwd=" .. arg)
                end
            end
        })
    end
}
