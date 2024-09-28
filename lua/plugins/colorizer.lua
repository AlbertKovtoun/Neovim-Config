return {
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
      -- Automatically toggle colorizer when Neovim starts
      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          vim.cmd("ColorizerToggle")
        end,
      })
    end,
  },
}
