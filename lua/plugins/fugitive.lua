return {
    'tpope/vim-fugitive',
    dependencies = {
        'tpope/vim-rhubarb',
        'cedarbaum/fugitive-azure-devops.vim',
    },
    keys = {
        { '<leader>gs', '<cmd>Git<CR>' },
        { '<leader>gb', '<cmd>GBrowse<CR>' },
        { '<leader>gb', "<cmd>'<,'>GBrowse<CR>", mode='x' },
        { '<leader><leader>', '<cmd>GBrowse<CR>', ft='fugitive', buffer=0, remap=false },
        { '<leader>p', '<cmd>Git push<CR>', ft='fugitive', buffer=0, remap=false },
        { '<leader>P', '<cmd>Git push --amend<CR>', ft='fugitive', buffer=0, remap=false },
    },
    cmd = { 'Git', 'Gbrowse' },
}
