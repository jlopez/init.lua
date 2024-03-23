return {
    'voldikss/vim-browser-search',
    keys = {
        { '<leader>s', '<Plug>SearchNormal' },
        { '<leader>s', '<Plug>SearchVisual', mode='v' },
    },
    cmd = { 'Git', 'Gbrowse' },
}
