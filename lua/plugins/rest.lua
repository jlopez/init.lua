return {
    'rest-nvim/rest.nvim',
    -- Making the plugin lazy breaks filetype detection
    -- keys = {
    --     { '<leader>hr', '<Plug>RestNvim' },
    --     { '<leader>hp', '<Plug>RestNvimPreview' },
    -- },
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        vim.keymap.set("n", "<leader>hr", "<Plug>RestNvim")
        vim.keymap.set("n", "<leader>hp", "<Plug>RestNvimPreview")
    end,
}
