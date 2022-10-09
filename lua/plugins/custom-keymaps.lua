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

-- Gitsign
keymap("n", "<F12>", "<cmd>Gitsigns blame_line<cr>", opts)

-- Coc
keymap("n", "<F9>", "<cmd>Format<cr>", {silent = true})
keymap("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', {silent = true, noremap = true, expr = true, replace_keycodes=false})
keymap("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], {silent = true, noremap = true, expr = true, replace_keycodes=false})
keymap("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], {silent = true, noremap = true, expr = true, replace_keycodes=false})
keymap("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})

keymap("n", "<C-j>", "<Plug>(coc-diagnostic-prev)", opts)
keymap("n", "<C-k>", "<Plug>(coc-diagnostic-next)", opts)

keymap("n", "gd", "<Plug>(coc-definition)", opts)
keymap("n", "gy", "<Plug>(coc-type-definition)", opts)
keymap("n", "gi", "<Plug>(coc-implementation)", opts)
keymap("n", "gr", "<Plug>(coc-references)", opts)
keymap("n", "K", '<cmd>lua _G.show_docs()<cr>', opts)
keymap("x", "<leader>f", "<Plug>(coc-format-selected)", opts)
keymap("n",   "<leader>f", "<Plug>(coc-format-selected)", opts)
keymap("n", "<leader>ac", "<Plug>(coc-codeaction)", opts)
keymap("n", "<leader>qf", "<Plug>(coc-fix-current)", opts)
keymap("n", "<leader>cl", "<Plug>(coc-codelens-action)", opts)
keymap("n", "<space>a", ":<C-u>CocList diagnostics<cr>", opts)
keymap("n", "<space>o", ":<C-u>CocList outline<cr>", opts)

