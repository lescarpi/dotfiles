-- lazy.nvim
require("config.lazy")

-- Clipboard
vim.opt.clipboard = "unnamedplus"

vim.g.clipboard = {
        name = 'wl-clipboard',
        copy = {
                ['+'] = 'wl-copy',
                ['*'] = 'wl-copy',
        },
        paste = {
                ['+'] = 'wl-paste',
                ['*'] = 'wl-paste'
        },
        cache_enabled = 1
}

vim.keymap.set({"n", "v"}, "x", '"_x')
vim.keymap.set({"n", "v"}, "d", '"_d')

-- Scroll
vim.opt.scrolloff = 999

-- Save
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("i", "<C-s>", "<C-o>:w<CR>")

-- Linhas
vim.opt.number = true
vim.opt.relativenumber = true

-- Identação
vim.opt.tabstop = 8
vim.opt.shiftwidth = 8
vim.opt.expandtab = true

-- Cursor
vim.opt.cursorline = true
vim.opt.guicursor = "i-ci-ve:ver25-blinkwait700-blinkoff400-blinkon250"

-- PageUp and PageDown
vim.keymap.set("i", "<PageDown>", "<Nop>")
vim.keymap.set("i", "<PageUp>", "<Nop>")
vim.keymap.set("n", "<PageDown>", "<C-f>zz")
vim.keymap.set("n", "<PageUp>", "<C-b>zz")

-- Rust
vim.api.nvim_create_autocmd("Filetype", {
        pattern = "rust",
        callback = function()
                vim.opt_local.tabstop = 8
                vim.opt_local.shiftwidth = 8
                vim.opt_local.expandtab = true
        end
})
