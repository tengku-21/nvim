local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", {bg ="none"})
    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "darkblue", fg="#ffffff"})
    vim.api.nvim_set_hl(0, "FloatBorder", {bg = "darkblue", fg="#ffffff"})
     vim.api.nvim_set_hl(0, "Keyword", {fg = "#C586C0" })
 vim.api.nvim_set_hl(0, "Comment", {fg = "#608B4E", italic= true})
 vim.api.nvim_set_hl(0, "String", {fg = "#CE9178"})
 vim.api.nvim_set_hl(0, "Function", {fg = "#DCDCAA"})

 vim.api.nvim_set_hl(0, "@variable", {fg = "blue"})
 vim.api.nvim_set_hl(0, "@variable.readonly", {fg = "#4FC1FF"})
 vim.api.nvim_set_hl(0, "@type.builtin", {fg = "#4EC9B0"})

vim.api.nvim_set_hl(0, "@tag", {fg = "#4ec9b0"})
 vim.api.nvim_set_hl(0, "@keyword.import", {fg = "#c586c0"})
 vim.api.nvim_set_hl(0, "@keyword.export", {fg = "#c586c0"})


  end
return {
    {
        "folke/tokyonight.nvim",
        config = function()
            vim.cmd.colorscheme "tokyonight"
            enable_transparency()
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies ={
            "nvim-tree/nvim-web-devicons"
        },
        opts = {
            theme = 'tokyonight'
        }
    }
}
