require('rose-pine').setup({
    disable_background = true
})

function ColorMyPencils(color) 
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    -- Enable cursorline
    vim.cmd('set cursorline')

    -- Set cursorline to have a transparent background and a thin underline
    vim.cmd('highlight CursorLine cterm=underline gui=underline guibg=NONE ctermbg=NONE')
    vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')
end

ColorMyPencils()
