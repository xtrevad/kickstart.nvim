return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        size = 20,
        open_mapping = [[<c-\>]],
        shade_terminals = true,
        start_in_insert = true,
        direction = 'float',
      }

      -- Lazygit terminal
      local Terminal = require('toggleterm.terminal').Terminal
      local lazygit = Terminal:new {
        cmd = 'lazygit',
        hidden = true,
        direction = 'float',
      }

      function _LAZYGIT_TOGGLE()
        lazygit:toggle()
      end

      -- Keymap: <leader>gg to open Lazygit
      vim.keymap.set('n', '<leader>gg', _LAZYGIT_TOGGLE, { desc = 'Toggle Lazygit' })
    end,
  },
}
