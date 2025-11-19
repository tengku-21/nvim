-- Set <space> as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<S-A-f>", function()
    vim.lsp.buf.format()
end, { desc = "Format file using LSP" })

-- Normal mode
vim.keymap.set("n", "gd", vim.lsp.buf.definition)       -- Go to definition
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)      -- Go to declaration
vim.keymap.set("n", "gr", vim.lsp.buf.references)       -- Find references
vim.keymap.set("n", "K", vim.lsp.buf.hover)             -- Hover info
vim.keymap.set("n", "E", vim.diagnostic.open_float, { desc = "Show diagnostics" })

-- Toggle netrw (:Ex)
vim.keymap.set("n", "<leader>e", function()
    if vim.bo.filetype == "netrw" then
        -- if netrw is open, close it safely
        vim.cmd("bd")
    else
        -- otherwise, open netrw
        vim.cmd("Ex")
    end
end, { desc = "Toggle Explorer" })

-- Map <leader>cd to change to current file's directory
vim.keymap.set("n", "<leader>cd", ":cd %:p:h<CR>:pwd<CR>", { desc = "CD to current file dir" })

vim.keymap.set("n", "<leader>E", function()
    vim.cmd("Vexplore")  -- opens netrw vertically
end)

