return {
  { "simrat39/rust-tools.nvim", lazy = true }, -- lsp plugin
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      setup_handlers = {
        rust_analyzer = function(_, opts) require("rust-tools").setup { server = opts } end,
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "rust_analyzer",
      },
    },
  },
}
