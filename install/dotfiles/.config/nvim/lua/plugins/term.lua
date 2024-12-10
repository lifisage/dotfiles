return {
  'akinsho/toggleterm.nvim',
  config = function()
    require('toggleterm').setup {
      size = 20, -- Default terminal size (in lines or percentage of the screen)
      open_mapping = [[<c-\>]], -- Keybinding to toggle the terminal
      shade_filetypes = {},
      shade_terminals = true, -- Dim the terminal when not in focus
      shading_factor = 2, -- Amount of dimming (higher = darker)
      start_in_insert = true, -- Start in insert mode when the terminal opens
      persist_size = true, -- Maintain the terminal size across sessions
      direction = 'horizontal', -- Options: 'horizontal', 'vertical', 'tab', 'float'
      close_on_exit = true, -- Automatically close the terminal when the process exits
      shell = vim.o.shell, -- Shell to use for the terminal
      float_opts = { -- Configuration for 'float' direction
        border = 'curved', -- Border style: 'single', 'double', 'shadow', etc.
        winblend = 3, -- Transparency for the floating terminal
      },
    }
  end,
}
