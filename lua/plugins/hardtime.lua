return {
  "m4xshen/hardtime.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },

  opts = {
    disabled_filetypes = {
      "qf",

      "lazy",
      "mason",
      "NvimTree",
      "help",
      "netrw",   -- ← add this
    },
    max_count = 2,
  },

}

