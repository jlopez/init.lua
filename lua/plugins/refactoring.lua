return {
    'theprimeagen/refactoring.nvim',
    keys = {
        { '<leader>ri', '<cmd>lua require("refactoring").refactor("Inline Variable")<CR>', noremap = true, silent = true, expr = false },
    },
}
