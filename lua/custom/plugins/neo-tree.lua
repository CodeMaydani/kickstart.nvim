-- lua/custom/plugins/neo-tree.lua
-- TODO: check nui.nvim layout
return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'main',
  dependencies = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons' },
  opts = {
    close_if_last_window = false, -- prevents auto-close
    filesystem = {
      follow_current_file = true,
    },
  },
  keys = {
    -- Explorer (toggle filesystem)
    {
      '<leader>e',
      function()
        vim.cmd 'Neotree toggle reveal_force_cwd'
      end,
      desc = 'Explorer',
    },

    -- Explorer (root dir)
    {
      '<leader>E',
      function()
        vim.cmd 'Neotree toggle dir=.'
      end,
      desc = 'Explorer (Root)',
    },

    -- Buffers
    {
      '<leader>fb',
      function()
        vim.cmd 'Neotree toggle source=buffers position=right'
      end,
      desc = 'Buffers',
    },

    -- Git Status
    {
      '<leader>fg',
      function()
        vim.cmd 'Neotree toggle source=git_status position=float'
      end,
      desc = 'Git Status',
    },

    -- Reveal current file
    {
      '<leader>fe',
      function()
        vim.cmd 'Neotree focus reveal'
      end,
      desc = 'Reveal file',
    },

    -- Disable default Kickstart key
    { '<leader>\\', false },
  },
}
