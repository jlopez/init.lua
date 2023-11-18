return {
    'rose-pine/neovim',
    name = 'rose-pine',
    opts = {
        disable_background = true,
    },
    config = function()
        vim.cmd.colorscheme('rose-pine')
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
}
