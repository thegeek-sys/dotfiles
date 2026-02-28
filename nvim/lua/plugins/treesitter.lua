return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			auto_install = true,
			ensure_installed = {"lua", "java", "python", "html", "css", "javascript", "vue", "go"},
			highlight = { enable = true },
			indent = { enable = true },
			install = { prefer_git = true },
		})

	end
}
