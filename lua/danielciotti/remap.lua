-- Vim File Explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Visual selection can be moved around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- appends the line without moving cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Page Up/Down keeps cursor on center of screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Text search keeps matching Words on center of screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Kills Q function
vim.keymap.set("n", "Q", "<nop>")

-- Buffer Next/Previous
vim.keymap.set("n", "<Tab>", vim.cmd.bn)
vim.keymap.set("n", "<S-Tab>", vim.cmd.bp)

-- Window movements
vim.keymap.set('n', '<leader>h', '<C-w>h')
vim.keymap.set('n', '<leader>j', '<C-w>j')
vim.keymap.set('n', '<leader>k', '<C-w>k')
vim.keymap.set('n', '<leader>l', '<C-w>l')
