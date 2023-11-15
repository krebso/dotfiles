-- leader
vim.g.mapleader = " "

-- netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- panes
vim.keymap.set("n", "<leader>s_", vim.cmd.sp)
vim.keymap.set("n", "<leader>s|", vim.cmd.vsp)

-- open error message virtual text
vim.keymap.set("n", "<leader>pe", vim.diagnostic.open_float)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set('n', '<leader>rr', vim.lsp.buf.rename)

