return {
  {
    "Mofiqul/vscode.nvim",
  },

  {
    "folke/tokyonight.nvim",
  },

  {
    "dikiaap/minimalist",
  },

  {
    "olivercederborg/poimandres.nvim",
    init = function()
      -- Apply the colorscheme
      vim.cmd("colorscheme poimandres")

      -- Modify the highlight for the current word under the cursor
      vim.cmd([[
        highlight LspReferenceText guibg=NONE guifg=NONE
        highlight LspReferenceRead guibg=NONE guifg=NONE
        highlight LspReferenceWrite guibg=NONE guifg=NONE
      ]])
    end,
  },

  {
    "aliqyan-21/darkvoid.nvim",
    -- priority = 1000,
    -- init = function()
    --   vim.cmd("colorscheme darkvoid")
    --   vim.opt.termguicolors = true
    --   vim.cmd.hi("Comment gui=none")
    -- end,
  },

  {
    "rafamadriz/neon",
  },

  {
    "sjl/badwolf",
  },

  {
    "p00f/alabaster.nvim",
  },

  {
    "Yazeed1s/minimal.nvim",
  },

  {
    "ellisonleao/gruvbox.nvim",
  },

  {
    "rose-pine/neovim",
  },

  {
    "slugbyte/lackluster.nvim",
  },

  {
    "ramojus/mellifluous.nvim",
  },

  {
    "kvrohit/rasmus.nvim",
  },

  {
    "horanmustaplot/xcarbon.nvim",
  },

  {
    "mcchrish/zenbones.nvim",
    dependencies = { "rktjmp/lush.nvim" },
  },

  {
    "gmr458/cold.nvim",
  },

  {
    "sainnhe/gruvbox-material",
  },
}
