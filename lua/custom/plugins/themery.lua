return {
  'zaldih/themery.nvim',
  lazy = false,
  config = function()
    require('themery').setup {
      themes = {
        {
          name = 'Rose pine main',
          colorscheme = 'rose-pine-main',
        },
        {
          name = 'Rose pine moon',
          colorscheme = 'rose-pine-moon',
        },
        {
          name = 'Rose pine dawn',
          colorscheme = 'rose-pine-dawn',
        },
        {
          name = 'Tokyonight night',
          colorscheme = 'tokyonight-night',
        },
        {
          name = 'Tokyonight storm',
          colorscheme = 'tokyonight-storm',
        },
        {
          name = 'Tokyonight day',
          colorscheme = 'tokyonight-day',
        },
        {
          name = 'Tokyonight moon',
          colorscheme = 'tokyonight-moon',
        },
      },
    }
  end,
}
