require'nvim-treesitter.configs'.setup {
  -- 添加需要识别的语言
  ensure_installed = { "c", "lua", "vim", "vimdoc", "bash", "javascript", "rust", "go" },



  highlight = { enable = true },
  indent = { enable = true },

  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
