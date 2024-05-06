return {
    'rest-nvim/rest.nvim',
    ft = 'http',
    -- Making the plugin lazy breaks filetype detection
    keys = {
        { '<leader>rr', '<cmd>Rest run<cr>' },
        { '<leader>rl', '<cmd>Rest run last<cr>' },
    },
    dependencies = { 'luarocks.nvim' },
    config = function()
        require('rest-nvim').setup({
        });
        -- vim.keymap.set("n", "<leader>rr", "<cmd>Rest run<cr>")
        -- vim.keymap.set("n", "<leader>rl", "<Plug>Rest run last<cr>")
    end,
}
