return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  dependencies = {
    {
      "windwp/nvim-ts-autotag",
      config = function()
        require("nvim-ts-autotag").setup()
      end,
    },
  },
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            highlight = {
                enabled = true,
            },
            indent = {
                enabled = true,
            },
            ensure_installed = {"lua", "javascript", "tsx", "typescript"},
            auto_install = false,
        })
    end
}