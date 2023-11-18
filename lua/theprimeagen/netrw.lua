vim.g.netrw_keep = 0
vim.g.netrw_banner = 0
vim.g.netrw_localcopydircmd = 'cp -r'
vim.cmd('hi! link netrwMarkFile Search')

-- https://www.reddit.com/r/neovim/comments/ud2w4k/how_to_remap_netrw_to_n_in_keybindingsinitlua/
vim.api.nvim_create_autocmd('filetype', {
  pattern = 'netrw',
  desc = 'Better mappings for netrw',
  callback = function()
    local bind = function(lhs, rhs)
      vim.keymap.set('n', lhs, rhs, {remap = true, buffer = true})
    end

    -- Show/hide hidden files
    bind('.', 'gh')

    -- Close preview
    bind('P', '<C-w>z')

    -- Close netrw
    bind('<Leader>dd', ':Lexplore<CR>') end
})
