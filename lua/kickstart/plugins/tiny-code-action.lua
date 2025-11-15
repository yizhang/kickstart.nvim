return {
  'rachartier/tiny-code-action.nvim',
  dependencies = {
    { 'nvim-lua/plenary.nvim' },

    -- optional picker via telescope
    { 'nvim-telescope/telescope.nvim' },
  },
  event = 'LspAttach',
  opts = {},
  config = function()
    local tca = require 'tiny-code-action'
    vim.keymap.set({ 'n', 'x' }, '<leader>ca', tca.code_action, { noremap = true, silent = true })
  end,
}
