return {
  'OXY2DEV/markview.nvim',
  lazy = false,
  dependencies = { 'saghen/blink.cmp' },
  config = function()
    require('markview').setup {
      preview = {
        icon_provider = 'mini',
      },
    }
    vim.keymap.set('n', '<leader>m', '<CMD>Markview<CR>', { desc = 'Toggle Markview' })
  end,
}
