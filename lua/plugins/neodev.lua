return {
    'folke/neodev.nvim',
    opts = {
        override = function(root_dir, library)
            if root_dir:find("/Users/jlopez/IdeaProjects/init.lua", 1, true) == 1 then
                library.enabled = true
                library.plugins = true
            end
        end,
    },
}
