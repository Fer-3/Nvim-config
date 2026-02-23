require("lsp.clangd")
require("lsp.lua-ls")
require("lsp.jdtls")
require("lsp.pyright")

vim.lsp.enable({
	"jdtls",
	"lua_ls",
	"pyright",
	"clangd",
})

vim.diagnostic.config({
	virtural_lines = true,
	underline = true,
	update_in_insert = true,
	severity_sort = true,
	float = {
		border = "rounded",
		source = true,
	},

	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = " ",
			[vim.diagnostic.severity.WARN] = " ",
			[vim.diagnostic.severity.INFO] = " ",
			[vim.diagnostic.severity.HINT] = " ",
		},
		numh1 = {
			[vim.diagnostic.severity.ERROR] = "ErrorMsg",
			[vim.diagnostic.severity.WARN] = "WarningMsg",
		},
	},
})

vim.diagnostic.enable(true)
