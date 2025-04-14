-- general
vim.keymap.set("n", "<leader>pv", "<cmd>Ex<CR>")

-- quickfix
vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")

-- terminal
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")
vim.keymap.set("n", "<leader>tt", "<cmd>Floaterminal<CR>")

-- formatting
vim.keymap.set("n", "<M-f>", vim.lsp.buf.format)
