-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

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
vim.diagnostic.config({
    virtual_text = true,
    virtual_lines = true,
})

-- plugins
require("lazy").setup({
    spec = { import = "plugins" },
    checker = { enabled = true },
})

-- keybinds
vim.keymap.set("n", "<leader><leader>", ":Oil<CR>")
vim.keymap.set("n", "<ESC>", ":nohlsearch<CR>")
vim.keymap.set("i", "<C-space>", "<C-x><C-o>")
vim.keymap.set({ "i", "s" }, "<Tab>", function()
    if vim.fn.pumvisible() == 1 then
        return "<C-n>"
    elseif vim.snippet.active({ direction = 1 }) then
        return "<cmd>lua vim.snippet.jump(1)<CR>"
    else
        return "<Tab>"
    end
end, { expr = true, noremap = true })
vim.keymap.set("i", "<S-Tab>", function()
    if vim.fn.pumvisible() == 1 then
        return "<C-p>"
    elseif vim.snippet.active({ direction = -1 }) then
        return "<cmd>lua vim.snippet.jump(-1)<CR>"
    else
        return "<S-Tab>"
    end
end, { expr = true, noremap = true })
vim.keymap.set("i", "<CR>", function()
    return vim.fn.pumvisible() == 1 and "<C-y>" or "<CR>"
end, { expr = true, noremap = true })
