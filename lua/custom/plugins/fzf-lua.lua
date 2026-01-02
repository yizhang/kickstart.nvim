return {
  'ibhagwan/fzf-lua',
  -- optional for icon support
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    oldfiles = { include_current_session = true },
  },
  config = function()
    local fzflua = require 'fzf-lua'
    fzflua.register_ui_select()
    fzflua.setup {
      { 'ivy', 'hide' },
    }
    vim.keymap.set('n', '<leader>f', fzflua.files, { desc = 'Files' })
    vim.keymap.set('n', '<leader>b', fzflua.buffers, { desc = 'Buffers' })
    vim.keymap.set('n', '<leader>c', fzflua.changes, { desc = 'Changes' })
    vim.keymap.set('n', '<leader>g', fzflua.global, { desc = 'Global (files, buffers, symbols)' })
    vim.keymap.set('n', '<leader>j', fzflua.jumps, { desc = 'Jumps' })
    vim.keymap.set('n', '<leader>k', fzflua.keymaps, { desc = 'Keymaps' })
    vim.keymap.set('n', '<leader>q', fzflua.diagnostics_document, { desc = 'Diagnostics document' })
    vim.keymap.set('n', '<leader>Q', fzflua.diagnostics_workspace, { desc = 'Diagnostics workspace' })
    vim.keymap.set('n', '<leader>r', fzflua.resume, { desc = 'Resume search' })
    vim.keymap.set('n', '<leader>.', fzflua.oldfiles, { desc = 'Recent (old) files' })
    vim.keymap.set('n', '<leader>sw', fzflua.grep_cword, { desc = 'Search current Word' })
    vim.keymap.set('n', '<leader>sg', fzflua.live_grep, { desc = 'Live grep' })
    vim.keymap.set('n', '<leader>sc', function()
      fzflua.files { cwd = vim.fn.stdpath 'config' }
    end, { desc = 'Search Neovim config files' })
    vim.keymap.set({ 'n', 'v', 'i' }, '<C-x><C-f>', function()
      fzflua.complete_file()
    end, { silent = true, desc = 'Fuzzy complete path' })
  end,
}
