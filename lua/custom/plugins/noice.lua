-- lazy.nvim
return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  opts = {
    lsp = {
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
        ['vim.lsp.util.stylize_markdown'] = true,
        ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
      },
    },

    -- you can enable a preset for easier configuration
    presets = {
      bottom_search = true, -- classic bottom cmdline for search
      command_palette = true, -- cmdline + popupmenu together
      long_message_to_split = true, -- long messages go to a split
      inc_rename = false, -- input dialog for inc-rename.nvim
      lsp_doc_border = false, -- border for hover/signature
    },
  },
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
  },
}
