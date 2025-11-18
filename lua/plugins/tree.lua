return{
    "nvim-tree/nvim-tree.lua",
    dependencies= {
        "nvim-tree/nvim-web-devicons",
    },
config = function()
    local api = require("nvim-tree.api")

    require("nvim-tree").setup({
        view = { side = "right" },
        sync_root_with_cwd = true,
    })

    -- Global keymap to toggle tree
    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

    -- Keymap inside nvim-tree only:
    vim.api.nvim_create_autocmd("FileType", {
        pattern = "NvimTree",
        callback = function()
            -- leader + enter => change CWD to folder under cursor
            vim.keymap.set("n", "<leader><CR>", function()
                api.tree.change_root_to_node()
            end, { buffer = true, noremap = true, silent = true })
        end
    })
end

}