local zen = require("zen-mode")

vim.keymap.set("n", "<leader>zm", function()
    zen.setup {
        window = {
            width = 90,
            options = { }
        },
    }
    zen.toggle()
    vim.wo.wrap = false
    vim.wo.number = true
    vim.wo.rnu = true
    ColorMyPencils()
end)
