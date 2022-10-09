-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true, noremap = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Normal --
-- Save and quit --
keymap("n", "<C-q>", ":q <CR>", opts)
keymap("n", "<C-s>", ":w <CR>", opts)

-- copy yank
keymap("v", "<C-c>", '"+y', opts)
-- Better paste
keymap("v", "p", '"_dP', opts)

-- Better Redo Option
keymap("n", "U", "<C-r>", opts)

-- For not yanking when deleting chars
keymap("n", "x", '"_x', opts)

-- Show/Unshow Relative line Numbers
keymap("n", "<leader>z", "<CMD>set invrnu invnu<CR>", opts)

keymap("n", "<leader>so", "<CMD>so %<CR>", opts)
keymap("n", "<CR>", "<CMD>noh<CR><CR>", opts)

-- For copy in system clipboard
keymap("v", "<C-c>", '"+y', opts)

-- For Easier Splitting of buffer
keymap("n", "<leader>|", "<C-w>v", opts)
keymap("n", "<leader>_", "<C-w>s", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-M-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-M-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-M-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-M-Right>", ":vertical resize +2<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Navigate buffers
keymap("n", "<A-Right>", "<CMD>bnext<CR>", opts)
keymap("n", "<A-Left>", "<CMD>bprevious<CR>", opts)
keymap("n", "<A-Down>", "<CMD>bdelete<CR>", opts)

-- Insert --
-- Better Navigation in insert mode
keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-l>", "<Right>", opts)
keymap("i", "<C-j>", "<Down>", opts)
keymap("i", "<C-k>", "<Up>", opts)

-- Visual --
-- Better paste
keymap("v", "p", '"_dP', opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
