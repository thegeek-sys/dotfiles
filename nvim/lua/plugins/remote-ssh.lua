return {
    "inhesrom/remote-ssh.nvim",
    branch = "master",
    dependencies = {
        "inhesrom/telescope-remote-buffer",
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
        "neovim/nvim-lspconfig",
        "rcarriga/nvim-notify",
    },
    config = function()
        -- FIX 1: Pass a table with actual keys to avoid "lhs: expected string, got nil"
        require('telescope-remote-buffer').setup({
            fzf = "<leader>fz",
            match = "<leader>gb",
            oldfiles = "<leader>rb"
        })

        -- FIX 2: Define on_attach and capabilities locally so 'remote-ssh' doesn't crash
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        local on_attach = function(client, bufnr)
            -- Example keymap: gd for definition
            -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr })
        end

        require('remote-ssh').setup({
            on_attach = on_attach,
            capabilities = capabilities,
            
            -- FIX 3: Map filetypes to server names (Required for remote-ssh)
            filetype_to_server = {
                python = "pyright",
                lua = "lua_ls",
                rust = "rust_analyzer",
                javascript = "ts_ls",
                typescript = "ts_ls",
            },
            ssh_config = {
                ssh_binary = "ssh",
                scp_binary = "scp",
            }
        })
    end
}
