return {
	"rmagatti/auto-session",
	config = function()
		require("auto-session").setup {
			enabled = true,
			auto_save = true,
			auto_restore = true,
			allowed_dirs = {
				"/Users/fla/Documents/Projects",
			}
		}
	end
}

