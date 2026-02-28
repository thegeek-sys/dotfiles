return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup {
			size = 11,
			direction = "horizontal",
			close_on_exit = true,
			start_in_insert = true,
		}
	end
}
