return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},
	lazy = false, -- neo-tree will lazily load itself
	---@module "neo-tree"
	---@type neotree.Config?
	opts = {
		filesystem = {
			window = {
				auto_expand_width = true,
				width = 0
			},
			filtered_items = {
				visible = true,
				never_show = { ".git" },
			}
		}
	}
}
