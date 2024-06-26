return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha', -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = 'latte',
          dark = 'mocha',
        },
        transparent_background = false, -- disables setting the background color.
        show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
        term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
          enabled = false, -- dims the background color of inactive window
          shade = 'dark',
          percentage = 0.15, -- percentage of the shade to apply to the inactive window
        },
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        no_underline = false, -- Force no underline
        styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = { 'italic' }, -- Change the style of comments
          conditionals = { 'italic' },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        color_overrides = {
          --all = {
          --  text = "#ffffff",
          --},
          latte = {
            base = '#ff0000',
            mantle = '#242424',
            crust = '#474747',
          },
          frappe = {},
          macchiato = {},
          mocha = {},
        },
        custom_highlights = function(colors)
          return {
            Comment = { fg = colors.sky },
            TabLineSel = { bg = colors.surface2 },
            CmpBorder = { fg = colors.surface2 },
            Pmenu = { bg = colors.none },
          }
        end,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = '',
          },
          -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
      }
      -- setup must be called before loading
      -- this is the end of the function.
      -- so now call sett  colorscheme on vim
      vim.cmd.colorscheme 'catppuccin'
    end,
    --vim.cmd.colorscheme "catppuccin"
  },
}
