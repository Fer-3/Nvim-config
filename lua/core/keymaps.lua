keymap = vim.keymap.set

-- General keymaps
keymap("n", "!q", ":q!<CR>", {})
keymap("n", ",q", ":q<CR>", {})
keymap("n", ",w", ":w<CR>", {})
keymap("n", ".w", ":wq<CR>", {})
keymap("n", ";", ":", {})
keymap("n", "M", ":Mason<CR>", {})
keymap("n", "<leader>e", ":Neotree filesystem reveal float<CR>", {})

-- Telescope
local builtin = require("telescope.builtin")
keymap("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
keymap("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
keymap("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
keymap("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- Hop
local hop = require("hop")
keymap("n", "<leader>hc", ":HopChar1<CR>", {})
keymap("n", "<leader>h2", ":HopChar2<CR>", {})
keymap("n", "<leader>hw", ":HopWord<CR>", {})
keymap("n", "<leader>hl", ":HopLine<CR>", {})
keymap("n", "<leader>hs", ":HopLineStart<CR>", {})
keymap("n", "<leader>ha", ":HopAnywhere<CR>", {})

-- Conform
local conform = require("conform")
keymap({ "n", "v" }, "f", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	})
end, { desc = "Conform format" })
