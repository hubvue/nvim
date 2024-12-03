local lsp_status, lsp = pcall(require, 'lspconfig')
local mason_status, mason = pcall(require, 'mason')
local mason_lsp_status, mason_lsp = pcall(require, 'mason-lspconfig')

if (not lsp_status or not mason_status or not mason_lsp_status) then return end

-- local protocal = require('vim.lsp.protocal')

local on_attach = function(client, bufnr)
  -- formatting
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
    vim.api.nvim_command [[augroup END]]
  end
end

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

mason_lsp.setup({
  ensure_installed = {
    "lua_ls",
  },
})


local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
