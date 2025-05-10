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
    }
})
require("telescope").load_extension("file_browser")

vim.keymap.set("n", "<leader><leader>", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
vim.keymap.set("n", "<leader>g", ":Telescope live_grep<CR>")
