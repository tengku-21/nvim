return { 'nvim-mini/mini.nvim', version = false,
config = function()
require('mini.completion').setup({
  lsp_completion = {
    source_func = 'completefunc',
    auto_setup = true,
  },
  delay = {
    completion = 50,
    info = 100,
    signature = 50,
  }
})

require('mini.surround').setup()
require('mini.pairs').setup()
require('mini.comment').setup()
require('mini.ai').setup()
require('mini.indentscope').setup()
require('mini.tabline').setup()
require('mini.files').setup()
require('mini.statusline').setup()

end

}