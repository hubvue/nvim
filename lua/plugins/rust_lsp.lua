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
        ["<Leader>lt"] = { "<cmd>lua vim.cmd('RustLsp testables')<CR>", desc = "Rust testables" },
        ["<Leader>lw"] = { "<cmd>lua vim.cmd('RustLsp run')<CR>", desc = "Rust working" },
      },
    },
  },
}
