
local function enable_transparency()
  -- Base UI
  vim.api.nvim_set_hl(0, "Normal",       { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat",  { bg = "#0f1117", fg = "#ffffff" })
  vim.api.nvim_set_hl(0, "FloatBorder",  { bg = "#0f1117", fg = "#ffffff" })

  -- Syntax (VSCode-ish)
  vim.api.nvim_set_hl(0, "Keyword",      { fg = "#C586C0" })
  vim.api.nvim_set_hl(0, "Comment",      { fg = "#608B4E", italic = true })
  vim.api.nvim_set_hl(0, "String",       { fg = "#CE9178" })
  vim.api.nvim_set_hl(0, "Function",     { fg = "#DCDCAA" })

  -- Treesitter groups (TS colors)
  vim.api.nvim_set_hl(0, "@variable",               { fg = "#9CDCFE" })       -- normal variable
  vim.api.nvim_set_hl(0, "@variable.builtin",       { fg = "#4EC9B0" })       -- built-in
  vim.api.nvim_set_hl(0, "@variable.readonly",      { fg = "#4FC1FF" })
  vim.api.nvim_set_hl(0, "@type.builtin",           { fg = "#4EC9B0" })

  vim.api.nvim_set_hl(0, "@tag",                    { fg = "#569CD6" })       -- JSX/TSX tags
  vim.api.nvim_set_hl(0, "@keyword.import",         { fg = "#C586C0" })
  vim.api.nvim_set_hl(0, "@keyword.export",         { fg = "#C586C0" })
end

return {
  {
    "folke/tokyonight.nvim",
    config = function()
      vim.cmd.colorscheme("tokyonight")
      enable_transparency()
    end
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = { theme = "tokyonight" }
  }
}

