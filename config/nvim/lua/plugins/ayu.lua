return {
	"ayu-theme/ayu-vim",
	config = function()
		vim.g.ayucolor = "mirage"
		vim.cmd(":colorscheme ayu")
	end
}
