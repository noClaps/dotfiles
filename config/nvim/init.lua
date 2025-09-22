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
vim.o.winborder = "rounded"
vim.o.clipboard = "unnamedplus"
vim.o.cursorline = true
vim.o.signcolumn = "yes"
vim.api.nvim_create_user_command("Q", "q", {}) -- alias :Q to :q
vim.api.nvim_create_user_command("W", "w", {}) -- alias :W to :w

-- plugins
require("lazy").setup({
	spec = { import = "plugins" },
	checker = { enabled = true },
})

-- keybinds
vim.keymap.set("n", "<leader><leader>", ":Neotree focus<CR>")
vim.keymap.set("n", "<ESC>", ":nohlsearch<CR>")

-- autocmds
vim.api.nvim_create_augroup("AutoFormatting", {})
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	group = "AutoFormatting",
	callback = function()
		vim.lsp.buf.format()
	end
})
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
	end
})
