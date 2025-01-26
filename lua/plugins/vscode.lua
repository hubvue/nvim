if not vim.g.vscode then return {} end

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      i = {
        ["jj"] = { "<ESC>", desc = "switch to normal mode" },
      },
      v = {
        -- 选中单行或多行移动
        ["J"] = { ":m '>+1<CR>gv=gv", desc = "Down move" },
        ["K"] = { ":m '<-2<CR>gv=gv", desc = "Up move" },
      },
    },
  },
}
