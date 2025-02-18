return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>pf', function() builtin.find_files() end, { desc = 'Find files' })
    vim.keymap.set('n', '<leader>pg', builtin.live_grep, { desc = 'Live Grep' })
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end, { desc = 'Grep input' })
  end
}


