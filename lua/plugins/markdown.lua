return {
  "iamcco/markdown-preview.nvim",
  build = "cd app && yarn install",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  keys = {
    { "<leader><leader>", "<cmd>MarkdownPreviewToggle<cr>", ft='markdown', desc="Toggle Markdown Preview" },
  },
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
}
