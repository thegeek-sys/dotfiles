return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"mfussenegger/nvim-dap-python",  -- Estensione per Python
			"rcarriga/nvim-dap-ui",          -- UI per nvim-dap
			"theHamsta/nvim-dap-virtual-text", -- Mostra variabili inline
			"nvim-neotest/nvim-nio"
		},
		config = function()
			local dap = require("dap")
			local dap_python = require("dap-python")

			-- Imposta l'adapter per Python
			dap_python.setup("~/.virtualenvs/debugpy/bin/python") -- Cambia il percorso se necessario

			-- Configurazione personalizzata
			dap.configurations.python = {
				{
					type = "python",
					request = "launch",
					name = "Debug File",
					program = "${file}",
					pythonPath = function()
						return vim.fn.input("Path to Python: ", "/usr/bin/python3", "file")
					end,
				},
			}

			-- Configura UI
			require("dapui").setup()
			require("nvim-dap-virtual-text").setup()

			-- Auto-apertura UI
			dap.listeners.after.event_initialized["dapui_config"] = function() require("dapui").open() end
			dap.listeners.before.event_terminated["dapui_config"] = function() require("dapui").close() end
			dap.listeners.before.event_exited["dapui_config"] = function() require("dapui").close() end

			vim.keymap.set("n", "<F8>", dap.continue)
			vim.keymap.set("n", "<F9>", dap.step_over)
			vim.keymap.set("n", "<F10>", dap.step_into)
			vim.keymap.set("n", "<F12>", dap.step_out)
			vim.keymap.set("n", "<Leader>b", dap.toggle_breakpoint)
			vim.keymap.set("n", "<Leader>B", function()
				dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
			end)
		end,
	},
}

