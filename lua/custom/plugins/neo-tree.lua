-- lua/custom/plugins/neo-tree.lua
-- TODO: check nui.nvim layout
return {
  'nvim-neo-tree/neo-tree.nvim',
  opts = {
    close_if_last_window = true, -- prevents auto-close
    filesystem = {
      follow_current_file = {
        enabled = true,
      },
      use_libuv_file_watcher = true, -- This will use the OS level file watchers to detect changes
    },
    default_component_configs = {
      git_status = {
        symbols = {
          modified = 'M', -- replaces 
        },
      },
    },
  },
  keys = {
    -- Explorer (root dir)
    {
      '<leader>E',
      function()
        vim.cmd 'Neotree toggle dir=.'
      end,
      desc = 'Explorer (Root)',
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
  },
}
