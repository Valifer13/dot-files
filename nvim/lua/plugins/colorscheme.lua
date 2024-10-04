return {
  {
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({
        transparent = true,
        style = "storm",
        terminal_colors = true,
      })
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
