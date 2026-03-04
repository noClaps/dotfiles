return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.enable({
            "gopls",
            "lua_ls",
            "rust_analyzer",
            "tinymist",
            "ruff",
            "ty",
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
                    local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
                    client.server_capabilities.completionProvider.triggerCharacters = chars
                    vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
                end
            end
        })
    end
}
