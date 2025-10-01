return {

    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.enable({
            "cssls",
            "eslint",
            "gopls",
            "jsonls",
            "lua_ls",
            "rust_analyzer",
            "superhtml",
            "tombi",
        })
        vim.lsp.config.lua_ls = {

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
        }
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
