--vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

--vim.cmd("nnoremap <leader>w <C-w>")
--vim.keymap.set('n', '<leader>w', '<C-w>', { noremap = true, silent = true })

vim.keymap.set('n', ' w', '<C-w>', {})
vim.g.mapleader = "`"
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
