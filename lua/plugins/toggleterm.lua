return   {
    'akinsho/toggleterm.nvim', 
    version = "*", 
    config = function()
        require("toggleterm").setup({
            direction = "horizontal",
        })
        vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<cr>", {desc = "Toggle Terminal"})
    end
}