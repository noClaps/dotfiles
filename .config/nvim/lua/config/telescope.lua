local actions = require("telescope.actions")
require("telescope").setup({
    extensions = {
        file_browser = {
            hidden = true,
            prompt_path = true,
            hijack_netrw = true,
            mappings = {
                ["i"] = {
                    ["<esc>"] = actions.close
                }
            }
        }
    },
    pickers = {
        find_files = {
            find_command = { "fd", "-H", "--type", "f", "--strip-cwd-prefix", "--exclude", ".git" }
        }
    }
})
require("telescope").load_extension("file_browser")

vim.keymap.set("n", "<leader><leader>", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
vim.keymap.set("n", "<leader>f", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>g", ":Telescope live_grep<CR>")
