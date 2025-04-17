return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				--null_ls.builtins.diagnostics.checkstyle.with({
				--	extra_args = { "-c", "/google_checks.xml" },
				--}),
				--null_ls.builtins.formatting.checkstyle,
				null_ls.builtins.diagnostics.semgrep,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.black,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
