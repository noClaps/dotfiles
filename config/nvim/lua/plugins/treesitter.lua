return {
	"lewis6991/ts-install.nvim",
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
		auto_install = true
	},
}
