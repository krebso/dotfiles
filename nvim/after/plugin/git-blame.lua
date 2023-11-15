local blame = require('gitblame')

blame.setup {
     --Note how the `gitblame_` prefix is omitted in `setup`
    enabled = false,
}

vim.keymap.set("n", "<leader>gb", vim.cmd.GitBlameToggle);
