return {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
                require("rose-pine").setup({
                        highlight_groups = {
                                CursorLineNr = { fg = "gold", bold = true },
                        }
                })
                vim.cmd("colorscheme rose-pine")
        end
}
