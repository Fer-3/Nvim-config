return {
	"stevearc/conform.nvim",
	opts = {},

	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "ast-grep"},
        c = { "ast-grep", stop_after_first = true},
        cpp = { "ast-grep", stop_after_first = true},
				javascript = { "prettierd", "prettier", stop_after_first = true },
        java = { "google-java-format", "ast-grep", stop_after_first = true},
			},
		})
	end,
}
