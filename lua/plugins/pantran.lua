---@type LazySpec
return {
  "potamides/pantran.nvim",
  opts = {
    default_engine = "argos",
    engines = {
      google = {
        default_source = "auto",
        default_target = "zh",
      },
      argos = {
        default_source = "auto",
        default_target = "zh",
      },
    },
  },
}
