return {
  {
    "mason-org/mason.nvim",
    opts = {},
    config = function()
      require("mason").setup({
        ensure_installed = {"lua_ls", "jdtls", "clangd", "marksman", "java-debug-adapter", "java-test" ,"pyright"},
      })
    end
  },

  {
    "mfussenegger/nvim-jdtls",
    dependenices = {
      "mfussenegger/nvim-dap",
    }
  },
}
