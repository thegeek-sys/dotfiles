return {
	"goolord/alpha-nvim",
	-- dependencies = { 'echasnovski/mini.icons' },
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local startify = require("alpha.themes.dashboard")
		startify.section.buttons.val = {
			startify.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
			startify.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
			startify.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
			-- startify.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
			startify.button("c", " " .. " Config", ":cd ~/.config/nvim/<CR>:Neotree filesystem reveal left<CR>:e ~/.config/nvim/init.lua<CR>"),
			startify.button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
			startify.button("s", " " .. " Mason", ":Mason<CR>"),
			startify.button("q", " " .. " Quit", ":qa<CR>"),
		}
		-- available: devicons, mini, default is mini
		-- if provider not loaded and enabled is true, it will try to use another provider
		--startify.file_icons.provider = "devicons"
		require("alpha").setup(startify.config)
	end,
}
