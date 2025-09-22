return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	branch = "main",
	build = ":TSUpdate",
	config = function()
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "*",
			callback = function(args)
				local lang = args.match
				local parsers = require("nvim-treesitter.parsers")
				if vim.tbl_contains(parsers, lang) then
					vim.treesitter.start()
				end
			end
		})
	end
}
