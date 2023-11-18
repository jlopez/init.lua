local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(_, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({
        buffer = bufnr,
    })

   local opts = {buffer = bufnr, remap = false}
   vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
   vim.keymap.set("n", "gh", function() vim.lsp.buf.hover() end, opts)
   vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
   vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
   vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
   vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
   vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
   vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
   vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
   vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'tsserver',
        'rust_analyzer',
        'lua_ls',
    },
    handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)
        end,
    },
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

require('luasnip.loaders.from_vscode').lazy_load()

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

cmp.setup({
    preselect = 'item',
    completion = {
        completeopt = 'menu,menuone,noinsert',
    },
--    mapping = cmp.mapping.preset.insert({
--        -- confirm completion item
--        ['<CR>'] = cmp.mapping.confirm({select = false}),
--
--        -- toggle completion menu
--        ['<C-e>'] = cmp_action.toggle_completion(),
--
--        -- tab complete
--        ['<Tab>'] = cmp_action.tab_complete(),
--        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
--
--        -- navigate between snippet placeholder
--        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
--        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
--
--        -- scroll documentation window
--        ['<C-d>'] = cmp.mapping.scroll_docs(-5),
--        ['<C-u>'] = cmp.mapping.scroll_docs(5),
--    }),
    sources = {
        {name = 'path'},
        {name = 'nvim_lsp'},
        {name = 'nvim_lua'},
        {name = 'buffer', keyword_length = 3},
        {name = 'luasnip', keyword_length = 2},
    },
})

-- lsp_zero.preset("recommended")
--
-- lsp_zero.ensure_installed({
--   'tsserver',
--   'rust_analyzer',
-- })
--
-- -- Fix Undefined global 'vim'
-- lsp_zero.nvim_workspace()
--
--
-- local cmp = require('cmp')
-- local cmp_select = {behavior = cmp.SelectBehavior.Select}
-- local cmp_mappings = lsp_zero.defaults.cmp_mappings({
--   ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
--   ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
--   ['<C-y>'] = cmp.mapping.confirm({ select = true }),
--   ["<C-Space>"] = cmp.mapping.complete(),
-- })
--
-- cmp_mappings['<Tab>'] = nil
-- cmp_mappings['<S-Tab>'] = nil
--
-- lsp_zero.setup_nvim_cmp({
--   mapping = cmp_mappings
-- })
--
-- lsp_zero.set_preferences({
--     suggest_lsp_servers = false,
--     sign_icons = {
--         error = 'E',
--         warn = 'W',
--         hint = 'H',
--         info = 'I'
--     }
-- })
--
-- lsp_zero.on_attach(function(_, bufnr)
--   local opts = {buffer = bufnr, remap = false}
--
--   vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
--   vim.keymap.set("n", "gh", function() vim.lsp.buf.hover() end, opts)
--   vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
--   vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
--   vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
--   vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
--   vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
--   vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
--   vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
--   vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
-- end)
--
-- lsp_zero.setup()
--
-- vim.diagnostic.config({
--     virtual_text = true
-- })
