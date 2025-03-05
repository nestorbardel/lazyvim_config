-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.autoformat = false
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting
vim.opt.hidden = false
vim.g.neovide_transparency = 0.97
vim.g.neovide_normal_opacity = 0.97
vim.o.guifont = "JetBrainsMono Nerd Font:h10"
vim.g.neovide_cursor_trail_size = 0.8
vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_input_macos_option_key_is_meta = 'only_left'
vim.keymap.set({ "n", "v" }, "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<M-a>", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
vim.keymap.set("v", "ga", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })

-- Expand 'cc' into 'CodeCompanion' in the command line
vim.cmd([[cab cc CodeCompanion]])
-- vim.g.neovide_cursor_vfx_mode = "sonicboom"
-- vim.o.guifont = "MartianMono Nerd Font Mono:h10.5"
-- vim.g.neovide_cursor_animation_length = 0.13
