return {
    'rest-nvim/rest.nvim',
    keys = {
        { '<leader>hr', '<Plug>RestNvim' },
        { '<leader>hp', '<Plug>RestNvimPreview' },
    },
    -- Remove commit line when this PR is merged:
    -- https://github.com/rest-nvim/rest.nvim/pull/255
    commit = '8b62563',
    dependencies = { 'nvim-lua/plenary.nvim' }
}
