return {
  {
    "Mofiqul/vscode.nvim",
    -- priority = 1000,
    init = function() end,
  },

  {
    "folke/tokyonight.nvim",
    -- priority = 1000,
    init = function() end,
  },

  {
    "dikiaap/minimalist",
    -- priority = 1000,
    init = function() end,
  },

  {
    "olivercederborg/poimandres.nvim",
    init = function()
      -- Apply the colorscheme
      vim.cmd([[colorscheme poimandres]])

      -- Modify the highlight for the current word under the cursor
      vim.cmd([[
      highlight LspReferenceText guibg=NONE guifg=NONE
      highlight LspReferenceRead guibg=NONE guifg=NONE
      highlight LspReferenceWrite guibg=NONE guifg=NONE
    ]])
    end,
  },

  {
    "rafamadriz/neon",
    -- priority = 1000,
    init = function() end,
  },

  {
    "sjl/badwolf",
    -- priority = 1000,
    init = function() end,
  },

  {
    "p00f/alabaster.nvim",
    -- priority = 1000,
    init = function() end,
  },

  {
    "Yazeed1s/minimal.nvim",
    -- priority = 1000,
    init = function() end,
  },

  {
    "ellisonleao/gruvbox.nvim",
    -- priority = 1000,
    init = function() end,
  },

  {
    "rose-pine/neovim",
    -- priority = 1000,
    init = function() end,
  },

  {
    "slugbyte/lackluster.nvim",
    -- priority = 1000,
    init = function() end,
  },

  {
    "ramojus/mellifluous.nvim",
    -- priority = 1000,
    init = function() end,
  },

  {
    "kvrohit/rasmus.nvim",
    -- priority = 1000,
    config = function() end,
  },

  {
    "horanmustaplot/xcarbon.nvim",
    -- priority = 1000,
    config = function() end,
  },

  {
    "mcchrish/zenbones.nvim",
    dependencies = { "rktjmp/lush.nvim" },
    config = function() end,
  },

  {
    "gmr458/cold.nvim",
    -- priority = 1000,
    config = function() end,
  },

  {
    "sainnhe/gruvbox-material",
    -- priority = 1000,
    config = function() end,
  },
}
