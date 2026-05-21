return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        -- return true to skip lspconfig auto-setup; we use native vim.lsp.config instead
        ts_ls = function()
          return true
        end,
        denols = function()
          return true
        end,
      },
    },
  },
}
