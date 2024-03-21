return {
    "nvim-neo-tree/neo-tree.nvim",
    -- Not lazy, we need it to hijack netrw
    lazy = false,
    cmd = "Neotree",
    branch = "v3.x",
    keys = {
        { "<leader>pv", "<cmd>Neotree<cr>", desc = "NeoTree" },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim",
        "aperezdc/vim-template",
    },
    config = {
        filesystem = {
            follow_current_file = {
                enabled = true,
            },
            hijack_netrw = "open_current",
        },
        event_handlers = {
            {
                event = "file_opened",
                handler = function()
                    -- auto close
                    require('neo-tree.command').execute({ action = 'close' })
                end,
            }, {
                event = "file_added",
                handler = function(path)
                    vim.cmd("e " .. path)
                    vim.cmd("Template")
                end,
            },
        },
    },
}
