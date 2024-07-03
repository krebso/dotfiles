function ColorMyPencils(color)
    color = color or "no-clown-fiesta"
    vim.cmd.colorscheme(color)

    -- Function to set transparent background
    local function set_transparent_bg(group)
        vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
    end

    -- Set transparent background for various elements
    local groups = {
        'Normal', 'NormalNC', 'NormalFloat',
        'FloatBorder', 'Pmenu', 'PmenuSel', 'PmenuSbar', 'PmenuThumb',
        'WinBar', 'WinBarNC',
        'TabLine', 'TabLineFill', 'TabLineSel',
        'SignColumn', 'MsgArea', 'ModeMsg', 'MsgSeparator',
        'MoreMsg', 'NonText', 'Question'
    }

    for _, group in ipairs(groups) do
        set_transparent_bg(group)
    end

    -- Set specific highlight groups
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#777777", bg = "NONE" })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE", underline = true, sp = "#5c6370" })
    vim.api.nvim_set_hl(0, "Visual", { bg = "#d8dee9", fg = "NONE" })
    vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE", fg = "white" })
    vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "NONE", fg = "white" })
    vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#2C323C" })

    -- Force transparency for all buffers
    vim.api.nvim_create_autocmd("BufEnter", {
        pattern = "*",
        callback = function()
            set_transparent_bg("Normal")
        end
    })
    vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#888888", bg = "NONE" })
    vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = "#3B4252", fg = "#ECEFF4" })

    vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#3B4252", fg = "#ECEFF4" })
    vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE", fg = "#ECEFF4" })
    vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#4C566A" })

end

ColorMyPencils()

