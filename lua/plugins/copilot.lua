return {
  'github/copilot.vim',
  config = function()
      vim.g.copilot_filetypes = {
          yaml = true,
      }
  end,
}
