return {
  "AstroNvim/astrocore",
  opts = {
    mappings = {
      n = {
        ["<Leader>ap"] = { "<cmd>lua vim.cmd('Copilot panel')<CR>", desc = "Copilot panel" },
      },
    },
  },
}
