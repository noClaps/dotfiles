return {
	"mks-h/treesitter-autoinstall.nvim",
	dependencies = {
		{
			"nvim-treesitter/nvim-treesitter",
			branch = "main",
			init = function()
				vim.g.loaded_nvim_treesitter = 1
			end
		}
	},
	opts = {
		highlight = true
	},
}
