-- Lazy bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- require("lazy").setup({
--   "nvim-lua/plenary.nvim",
--   {
--     "nvim-treesitter/nvim-treesitter",
--     build = ":TSUpdate",
-- }
-- })

require("lazy").setup({
    spec = {
        {import = "plugins"}
    },
    change_detection = {notify = false}
})