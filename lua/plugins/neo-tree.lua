return {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "NeoTree",
    branch = "v3.x",
    keys = {
        { "<leader>pv", "<cmd>Neotree<cr>", desc = "NeoTree" },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim",
    },
    config = {
        filesystem = {
            follow_current_file = true,
            hijack_netrw = "open_current",
        },
        event_handlers = {
            {
                event = "file_opened",
                handler = function()
                    -- auto close
                    require('neo-tree.command').execute({ action = 'close' })
                end,
            },
        },
    },
}
