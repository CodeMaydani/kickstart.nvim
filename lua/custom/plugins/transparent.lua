return {
  'xiyaowong/transparent.nvim',
  lazy = false, -- load immediately
  priority = 1000, -- load before most plugins (after colorscheme is ideal)
  opts = {
    enable = true, -- enable transparency
    extra_groups = { -- for plugins and floating windows
      'NormalFloat',
      'NvimTreeNormal',
      'TelescopeNormal',
      'WhichKeyFloat',
      'CmpDocumentation',
      'Pmenu',

      -- Neo-tree
      'NeoTreeNormal',
      'NeoTreeNormalNC',
      'NeoTreeEndOfBuffer',
      'NeoTreeFloatBorder',
      'NeoTreeFloatTitle',
    },
    exclude = {}, -- groups to exclude from transparency
  },
}
