-- Basic settings

vim.wo.relativenumber = true
vim.wo.number = true
vim.bo.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.go.smarttab = true
vim.opt.softtabstop = 4
vim.opt.mouse = 'a'
vim.o.showmode = false
vim.opt.laststatus = 2
vim.g.mapleader = "<Space>"

-- Plugins



-- Keymaps

vim.keymap.set('n', '<C-s>', ':wa<CR>')
vim.keymap.set('n', '<C-q>', ':q<CR>')
vim.keymap.set('n', '<C-m>', ':wqa<CR>')
vim.keymap.set('n', 'm', '$')
vim.keymap.set('n', 'f', '0')

vim.keymap.set('n', '<C-d>', ':HopWord<CR>')

vim.keymap.set('n', '<C-a>', ':bprev!<CR>')
vim.keymap.set('n', '<C-z>', ':bnext!<CR>')

-- vim.keymap.set('n', '<A-C-n>', ':Veil<CR>')
vim.keymap.set('n', '<A-C-p>', ':PackerSync<CR>')
-- vim.keymap.set('n', '<A-n>', ':NvimTreeToggle<CR>a')
vim.keymap.set('n', '<C-o>', ':FloatermToggle<CR>')

vim.keymap.set('n', '<C-A-s>', ':SymbolsOutline<CR>')
vim.keymap.set('n', '<C-f>', ':Neotree<CR>')

-- amazing controls!

vim.keymap.set('n', '<A-j>', ':m .+1<CR>==')
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==')
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv'")
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv")
vim.keymap.set('n', '<A-C-j>', 'yyp')
vim.keymap.set('n', '<A-C-k>', 'yyP')


vim.keymap.set('n', '<A-s>', ':source %<CR>')

vim.keymap.set('v', '<Tab>', '>gv')
vim.keymap.set('v', '<S-Tab>', '<gv')

-- vim.keymap.set('n', '<leader>', ":WhichKey '<Space>'<CR>", {silent = true})
