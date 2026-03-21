-- File: lua/plugins/telescope-lazy.lua
return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "tsakirist/telescope-lazy.nvim", -- Extension for Lazy.nvim plugins
    },
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)

      -- Load the extension
      telescope.load_extension("lazy")
    end,
  },
}

