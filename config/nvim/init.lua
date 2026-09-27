-- globals
vim.g.loaded_netrw = 1
vim.g.loaded_netrw_plugin = 1
vim.g.mapleader = " "
vim.g.no_plugin_maps = true

-- plugins
vim.pack.add({
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/nvim-treesitter/nvim-treesitter",
    "https://github.com/lewis6991/gitsigns.nvim"
})

-- settings
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.softtabstop = 0
vim.o.shiftwidth = 0
vim.o.expandtab = true
vim.o.winborder = "single"
vim.o.clipboard = "unnamedplus"
vim.o.cursorline = true
vim.o.signcolumn = "yes"
vim.o.mouse = "a"
vim.o.completeopt = "noselect,menuone,popup"
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.api.nvim_create_user_command("Packupdate", function ()
    vim.pack.update(nil, { force = true })
    require("nvim-treesitter").update():wait(300000)
end, {}
) -- add :Packupdate command
vim.api.nvim_create_user_command("Packdel", function (opts) vim.pack.del(opts.fargs) end, {
    nargs = "+",
    bang = true,
    complete = function (arglead)
        local plugins = vim.pack.get(nil, { info = false })
        local names = {}
        for _, plugin in ipairs(plugins) do
            local name = plugin.spec.name
            if vim.startswith(name, arglead) then
                names[#names + 1] = name
            end
        end
        return names
    end
}) -- add :Packdel command
vim.diagnostic.config({ virtual_lines = true })

-- keybinds
vim.keymap.set("n", "<ESC>", ":nohlsearch<CR>")
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
vim.keymap.set("i", "<C-space>", vim.lsp.completion.get)
vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help)
vim.keymap.set("x", "[", function () vim.treesitter.select("parent") end, { nowait = true })
vim.keymap.set("x", "]", function () vim.treesitter.select("child") end, { nowait = true })

-- lsp
vim.lsp.enable({
    "emmylua_ls",
    "rust_analyzer",
    "ruff",
    "sourcekit",
    "tinymist",
    "ty"
})
vim.lsp.config("emmylua_ls", {
    settings = {
        emmylua = {
            runtime = { version = 'LuaJIT' },
            diagnostics = { globals = { 'vim' } },
            workspace = { library = vim.api.nvim_get_runtime_file('', true) }
        }
    }
})
vim.lsp.config("tinymist", {
    settings = {
        typstExtraArgs = { "--features=html,bundle" },
        syntaxOnly = "enable"
    }
})
vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function () vim.lsp.buf.format() end
})
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function (args)
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
    callback = function (args)
        local treesitter = require("nvim-treesitter")
        local lang = vim.treesitter.language.get_lang(args.match)

        if vim.list_contains(treesitter.get_installed(), lang) then
            vim.treesitter.start()
            return
        end

        if vim.list_contains(treesitter.get_available(), lang) then
            treesitter.install(lang):await(function ()
                vim.treesitter.start()
            end)
        end
    end
})
