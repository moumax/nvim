vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps

-- use jk to exit insert mode
keymap.set("i", "jj", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
    -- split window vertically
keymap.set("n", "<leader>sv", "<C-w>v")
    -- split window horizontally
keymap.set("n", "<leader>sh", "<C-w>s")
    -- make split windows equal width & height
keymap.set("n", "<leader>se", "<C-w>=")
    -- close current split window
keymap.set("n", "<leader>sx", ":close<CR>")

    -- open new tab
keymap.set("n", "<leader>to", ":tabnew<CR>")
    -- close current tab
keymap.set("n", "<leader>tx", ":tabclose<CR>")
    --  go to next tab
keymap.set("n", "<leader>tn", ":tabn<CR>")
    --  go to previous tab
keymap.set("n", "<leader>tp", ":tabp<CR>")

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
    -- toggle split window maximization
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
    -- toggle file explorer
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
    -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
    -- find string in current working directory as you type
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
    -- find string under cursor in current working directory
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
    -- list open buffers in current neovim instance
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
    -- list available help tags
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
