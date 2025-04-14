return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            require("catppuccin").setup({
                flavour = "auto",
                color_overrides = {
                    all = {
                        base = "#000000",
                        mantle = "#000000",
                        crust = "#000000",
                    }
                }
            })

            vim.cmd.colorscheme("catppuccin-mocha")
        end
    }
}
