return {
  {
    "nvim-telescope/telescope-project.nvim",
    specs = {
      {
        "nvim-telescope/telescope.nvim",
        dependencies = {
          "nvim-telescope/telescope-project.nvim",
          {
            "AstroNvim/astrocore",
            opts = {
              mappings = {
                n = {
                  ["<leader>fp"] = {
                    function()
                      require("telescope").extensions.project.project {
                        display_type = "full",
                        hide_workspace = true,
                      }
                    end,
                    desc = "Telescope Projects",
                  },
                },
              },
            },
          },
        },
        opts = function(_, opts)
          local project_actions = require "telescope._extensions.project.actions"
          opts.defaults.path_display = { "smart" }
          if not opts.extensions then opts.extensions = {} end
          opts.extensions.project = {
            base_dirs = {
              "~/Documents/code/",
              "/Users/didi/Documents/code/didi/driver-operation/driver-rewards/",
            },
            hidden_files = true, -- default: false
            theme = "dropdown",
            order_by = "asc",
            search_by = "title",
            sync_with_nvim_tree = true, -- default false
            on_project_selected = function(prompt_bufnr)
              -- Do anything you want in here. For example:
              project_actions.change_working_directory(prompt_bufnr, false)
              require("harpoon.ui").nav_file(1)
            end,
            mappings = {
              n = {
                ["d"] = project_actions.delete_project,
                ["r"] = project_actions.rename_project,
                ["c"] = project_actions.add_project,
                ["C"] = project_actions.add_project_cwd,
                ["f"] = project_actions.find_project_files,
                ["b"] = project_actions.browse_project_files,
                ["s"] = project_actions.search_in_project_files,
                ["R"] = project_actions.recent_project_files,
                ["w"] = project_actions.change_working_directory,
                ["o"] = project_actions.next_cd_scope,
              },
              i = {
                ["<c-d>"] = project_actions.delete_project,
                ["<c-v>"] = project_actions.rename_project,
                ["<c-a>"] = project_actions.add_project,
                ["<c-A>"] = project_actions.add_project_cwd,
                ["<c-f>"] = project_actions.find_project_files,
                ["<c-b>"] = project_actions.browse_project_files,
                ["<c-s>"] = project_actions.search_in_project_files,
                ["<c-r>"] = project_actions.recent_project_files,
                ["<c-l>"] = project_actions.change_working_directory,
                ["<c-o>"] = project_actions.next_cd_scope,
                ["<c-w>"] = project_actions.change_workspace,
              },
            },
          }
          require("telescope").load_extension "project"
        end,
      },
    },
  },
}
