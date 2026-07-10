function Color()
    color = "everforest"

    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    -- Line Number Colors
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#747e7e', bold = false })
    vim.api.nvim_set_hl(0, 'LineNr', { fg = '#CBE4DE', bold = false })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#747E7E', bold = false })
end

Color()
