return {
    "goolord/alpha-nvim",
    enabled = false,
    dependencies = {
        "kyazdani42/nvim-web-devicons",
    },
    config = function()
        require("alpha").setup(require("alpha.themes.dashboard").opts)
    end
}
