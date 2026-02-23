vim.lsp.config["clangd"] = {
	cmd = { "clangd" },
	filetypes = { "cpp", "c" },
	root_markers = { ".clangd", ".git" },
}
