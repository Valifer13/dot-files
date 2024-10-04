-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
--
-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- File Explorer
keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Project view netrw" })

-- Cursor center
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- harpoon
keymap.set("n", "<leader>a", mark.add_file)
keymap.set("n", "<C-e>", ui.toggle_quick_menu)

keymap.set("n", "<C-t>", ui.nav_next)
keymap.set("n", "<C-n>", ui.nav_prev)

-- undotree
keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle, { desc = "Toggle Undotree" })

-- figitive
keymap.set("n", "<leader>gS", vim.cmd.Git, { desc = "Manipulate" })

keymap.set("n", "J", "mzJ`z")

keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
