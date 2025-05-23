-- AsAstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.troCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.lsp.lspsaga-nvim" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.recipes.vscode" },
  { import = "astrocommunity.test.neotest" },
  -- { import = "astrocommunity.completion.copilot-cmp" },
  { import = "astrocommunity.editing-support.refactoring-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.completion.blink-cmp" },
}
