
-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true, noremap = true }

-- Nvim Tree
keymap("n", "<F2>", "<cmd>NvimTreeToggle<cr>", opts)
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", opts)

-- Telescope
keymap("n", "<C-p>", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<F6>", "<cmd>Telescope oldfiles<cr>", opts)
