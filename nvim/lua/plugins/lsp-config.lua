return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		version = "1.28.0",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"arduino_language_server",
					"html",
					"pyright",
					"clangd"
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config("lua_ls", {})
			vim.lsp.config("jdtls", {})
			vim.lsp.config("arduino_language_server", {})
			vim.lsp.config("html", {})
			vim.lsp.config("ts_ls", {})
			vim.lsp.config("pyright", {})
			vim.lsp.config("clangd", {})

			-- abilita i server che hai configurato
			vim.lsp.enable({
				"lua_ls",
				"jdtls",
				"arduino_language_server",
				"html",
				"ts_ls",
				"pyright",
				"clangd",
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
