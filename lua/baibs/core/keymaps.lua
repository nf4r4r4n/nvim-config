vim.g.mapleader = " "

local keymap = vim.keymap

-- General
-- mode ; key ; cmd

-- Moves in insert mode
-- keymap.set("i", "<C-h>", "<Left>")
-- keymap.set("i", "<C-l>", "<Right>")
-- keymap.set("i", "<C-k>", "<Up>")
-- keymap.set("i", "<C-j>", "<Down>")

-- Buffers
keymap.set("n", "<leader>bp", ":bp<CR>") -- buffer previous
keymap.set("n", "<leader>bn", ":bn<CR>") -- buffer next
keymap.set("n", "<leader>bd", ":bd<CR>") -- buffer delete
keymap.set("n", "<leader>bb", ":buffers<CR>") -- buffers

-- Clear highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- Splits
keymap.set("n", "<leader>sv", "<C-w>v") -- vertical split
keymap.set("n", "<leader>s", "<C-w>s") -- horizontal split
keymap.set("n", "<leader>se", "<C-w>=") -- make split equals
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- Save & Quit
keymap.set("n", "<leader>w", ":w<CR>") -- Save
keymap.set("n", "<leader>q", ":q<CR>") -- Quit

-- NvimTree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")

-- C Formatter 42
local function c_format()
	local current_file = vim.fn.expand('%:p')
	local command = ":!python3 -m c_formatter_42 " .. current_file .. "<CR>"
	return command
end
keymap.set("n", "<leader>cf", c_format())
