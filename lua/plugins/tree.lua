return{
    "nvim-tree/nvim-tree.lua",
    dependencies= {
        "nvim-tree/nvim-web-devicons",
    },
config = function()
    local api = require("nvim-tree.api")

    require("nvim-tree").setup({
        view = { side = "left" },
        sync_root_with_cwd = true,
    })

    -- Global keymap to toggle tree
    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

    -- Keymap inside nvim-tree only:
    

vim.api.nvim_create_autocmd("FileType", {
    pattern = "NvimTree",
    callback = function()
        vim.keymap.set("n", "<leader><CR>", function()
            local api = require("nvim-tree.api")

            -- Change tree root
            api.tree.change_root_to_node()

            -- Get node
            local node = api.tree.get_node_under_cursor()
            if not node then return end

            -- Directory to switch to
            local path = node.absolute_path
            if node.type == "file" then
                path = vim.fn.fnamemodify(path, ":h")
            end

            -- 🔥 Make the cwd permanent
            vim.api.nvim_set_current_dir(path)
            print("CWD set to: " .. path)
        end, { buffer = true, noremap = true, silent = true })
    end
})

end

}
