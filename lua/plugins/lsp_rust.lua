return {
  "AstroNvim/astrolsp",
  opts = {
    config = {
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              extraEnv = { CARGO_PROFILE_RUST_ANALYZER_INHERITS = "dev" },
              extraArgs = { "--profile", "rust-analyzer" },
            },
          },
        },
      },
    },
    mappings = {
      n = {
        ["<Leader>lw"] = { "<cmd>lua vim.cmd('RustLsp run')<CR>", desc = "Rust working" },
      },
    },
  },
}
