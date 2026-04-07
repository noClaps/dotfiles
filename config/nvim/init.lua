-- plugins
vim.pack.add({
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/nvim-treesitter/nvim-treesitter",
    "https://github.com/benomahony/oil-git.nvim",
    "https://github.com/JezerM/oil-lsp-diagnostics.nvim",
    "https://github.com/stevearc/oil.nvim",
})
require("oil-lsp-diagnostics").setup()
require("oil").setup({
    view_options = {
        show_hidden = true,
        is_always_hidden = function(name)
            local ignore_list = { ".git", ".DS_Store" }
            return vim.list_contains(ignore_list, name)
        end
    }
})

-- my settings
vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.softtabstop = 0
vim.o.shiftwidth = 0
vim.o.expandtab = true
vim.o.winborder = "rounded"
vim.o.clipboard = "unnamedplus"
vim.o.cursorline = true
vim.o.signcolumn = "yes"
vim.o.mouse = "a"
vim.o.completeopt = "noselect,menuone,popup"
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.api.nvim_create_user_command("Q", "q", {})              -- alias :Q to :q
vim.api.nvim_create_user_command("Q", "q", { bang = true }) -- alias :Q! to :q!
vim.api.nvim_create_user_command("W", "w", {})              -- alias :W to :w
vim.api.nvim_create_user_command("Packupdate", function()
    vim.pack.update(nil, { force = true })
    require("nvim-treesitter").update()
end, {}) -- add :Packupdate command
vim.diagnostic.config({
    virtual_text = true,
    virtual_lines = true,
})

-- keybinds
vim.keymap.set("n", "<leader><leader>", ":Oil<CR>")
vim.keymap.set("n", "<ESC>", ":nohlsearch<CR>")
vim.keymap.set("i", "<C-space>", "<C-x><C-o>")

-- lsp
vim.lsp.enable({
    "clangd",
    "emmylua_ls",
    "gopls",
    "rust_analyzer",
    "ruff",
    "tinymist",
    "ty",
})
vim.lsp.config("emmylua_ls", {
    settings = {
        Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = {
                library = {
                    vim.env.VIMRUNTIME,
                    "${3rd}/luv/library",
                },
                checkThirdParty = false
            }
        }
    }
})
vim.lsp.config("tinymist", {
    settings = {
        exportTarget = "html",
        syntaxOnly = "enable",
        formatterMode = "typstyle"
    }
})
vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        vim.lsp.buf.format()
    end
})
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
        if client:supports_method("textDocument/completion") then
            local chars = {}
            for i = 32, 126 do
                table.insert(chars, string.char(i))
            end

            if not client.server_capabilities then return end
            if not client.server_capabilities.completionProvider then return end
            client.server_capabilities.completionProvider.triggerCharacters = chars

            vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
        end
    end
})

-- treesitter
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
