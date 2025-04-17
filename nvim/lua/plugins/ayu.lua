return {
	"Shatur/neovim-ayu",
	name = "ayu",
	config = function()
		require('ayu').setup({
			mirage = true,
			terminal = true,
			overrides = {},
		})
		vim.cmd.colorscheme "ayu"
	end
}
