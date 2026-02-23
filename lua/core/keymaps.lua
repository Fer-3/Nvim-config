keymap = vim.keymap.set
api = vim.api

-- General keymaps
keymap("n", "!q", ":q!<CR>", {})
keymap("n", ",q", ":q<CR>", {})
keymap("n", ",w", ":w<CR>", {})
keymap("n", ".w", ":wq<CR>", {})
keymap("n", ";", ":", {})
keymap("n", "M", ":Mason<CR>", {})
keymap("n", ",la", ":Lazy<CR>", {})
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

-- Complier
api.nvim_set_keymap('n', '<F6>', "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })
api.nvim_set_keymap('n', '<S-F6>',
     "<cmd>CompilerStop<cr>"
  .. "<cmd>CompilerRedo<cr>",
 { noremap = true, silent = true })
api.nvim_set_keymap('n', '<S-F7>', "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })

-- Persistence
keymap("n", "<leader>qs", function() require("persistence").load() end)
keymap("n", "<leader>qS", function() require("persistence").select() end)
keymap("n", "<leader>ql", function() require("persistence").load({ last = true }) end)
keymap("n", "<leader>qd", function() require("persistence").stop() end)
