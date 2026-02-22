keymap = vim.keymap.set

keymap("n", ",q", ":q<CR>", {})
keymap("n", ",w", ":w<CR>", {})
keymap("n", ";", ":", {})
keymap("n", "<leader>e", ":Neotree filesystem reveal float<CR>", {})
