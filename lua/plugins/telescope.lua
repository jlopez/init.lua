return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { '<leader>pf', '<cmd>Telescope find_files<cr>' },
        { '<C-p>'     , '<cmd>Telescope git_files<cr>' },
        { '<leader>ph', '<cmd>Telescope help_tags<cr>' },
        { '<leader>p*', '<cmd>Telescope builtin<cr>' },
        { '<leader>pk', '<cmd>Telescope keymaps<cr>' },
        { '<leader>pm', '<cmd>Telescope man_pages<cr>' },
        { '<leader>pl', '<cmd>Telescope live_grep<cr>' },
        { '<leader>pg', '<cmd>Telescope grep_string<cr>' },
        { '<leader>pr', '<cmd>Telescope registers<cr>' },
        { '<leader>pb', '<cmd>Telescope buffers<cr>' },
        { '<leader>p/', '<cmd>Telescope current_buffer_fuzzy_find<cr>' },
    },
}
