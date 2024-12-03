local status, telescope = pcall(require, 'telescope')

if (not status) then return end

local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require 'telescope'.extensions.file_browser.actions

telescope.setup {
  defaults = {
    n = {
      ['q'] = actions.close
    },
    initial_mode = 'normal'
  },
  extensions = {
    file_browser = {
      theme = 'dropdown',
      hijack_netrw = true,
      mappings = {
        ['i'] = {

        },
        ['n'] = {

        }
      }
    }
  }
}

telescope.load_extension('file_browser')


local opts = { noremap = true, silent = true }

vim.keymap.set('n', ';f', function ()
  builtin.find_files({
    previewer = false,
    no_ignore = false,
    hidden = false
  })
end, opts)

vim.keymap.set('n', ';r', builtin.live_grep, opts)
vim.keymap.set('n', '////', builtin.buffers, opts)
vim.keymap.set('n', ';t', builtin.help_tags, opts)
vim.keymap.set('n', ';b', function ()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_git_ignore =false,
    hidden = true,
    grouped = true,
    previewer = false,
    layout_config = {
      height = 40
    }
  })
end, opts)
