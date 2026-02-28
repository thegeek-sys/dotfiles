--vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

--vim.cmd("nnoremap <leader>w <C-w>")
--vim.keymap.set('n', '<leader>w', '<C-w>', { noremap = true, silent = true })

vim.keymap.set('n', ' w', '<C-w>', {})
vim.g.mapleader = " "
vim.keymap.set('', '<up>', function () print('you can do it'); end)
vim.keymap.set('', '<down>', function () print('still in hard mode'); end)
vim.keymap.set('', '<left>', function () print('i believe in you'); end)
vim.keymap.set('', '<right>', function () print('you\'re doing great'); end)
vim.keymap.set('n', '<leader>h', '<C-w>h')
vim.keymap.set('n', '<leader>j', '<C-w>j')
vim.keymap.set('n', '<leader>k', '<C-w>k')
vim.keymap.set('n', '<leader>l', '<C-w>l')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.opt.number = true
vim.wo.relativenumber = true

vim.keymap.set('n', '<leader>1', ':tabn 1<CR>')
vim.keymap.set('n', '<leader>2', ':tabn 2<CR>')
vim.keymap.set('n', '<leader>3', ':tabn 3<CR>')
vim.keymap.set('n', '<leader>4', ':tabn 4<CR>')
vim.keymap.set('n', '<leader>5', ':tabn 5<CR>')
vim.keymap.set('n', '<leader>6', ':tabn 6<CR>')
vim.keymap.set('n', '<leader>7', ':tabn 7<CR>')
vim.keymap.set('n', '<leader>8', ':tabn 8<CR>')
vim.keymap.set('n', '<leader>9', ':tabn 9<CR>')
vim.keymap.set('n', '<leader>!', ':tabmove 0<CR>')  -- Shift+1
vim.keymap.set('n', '<leader>@', ':tabmove 1<CR>')  -- Shift+2
vim.keymap.set('n', '<leader>#', ':tabmove 2<CR>')  -- Shift+3
vim.keymap.set('n', '<leader>$', ':tabmove 3<CR>')  -- Shift+4
vim.keymap.set('n', '<leader>%', ':tabmove 4<CR>')  -- Shift+5
vim.keymap.set('n', '<leader>^', ':tabmove 5<CR>')  -- Shift+6
vim.keymap.set('n', '<leader>&', ':tabmove 6<CR>')  -- Shift+7
vim.keymap.set('n', '<leader>*', ':tabmove 7<CR>')  -- Shift+8
vim.keymap.set('n', '<leader>(', ':tabmove 8<CR>')  -- Shift+9

vim.keymap.set('n', '<leader>t', ':tabnew<CR>')
vim.api.nvim_set_keymap("n", "<leader>k", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })

vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function()
    local toggleterm = require("toggleterm.terminal")
    for _, term in pairs(toggleterm.get_all()) do
      term:shutdown()  -- kill i job ancora attivi
    end
  end
})
