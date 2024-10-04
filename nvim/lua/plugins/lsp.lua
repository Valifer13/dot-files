return {
  { "folke/neoconf.nvim" },
  { "VonHeikemen/lsp-zero.nvim", branch = "v4.x" },
  {
    "neovim/nvim-lspconfig",
  },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/nvim-cmp" },
  {
    "williamboman/mason.nvim",
    opts = function()
      require("mason").setup({})
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function()
      require("neoconf").setup({})
      require("mason-lspconfig").setup({
        -- Replace the language servers listed here
        -- with the ones you want to install
        ensure_installed = {
          "lua_ls",
          "tailwindcss",
          "html",
          "cssls",
          "pyright",
          "ts_ls",
          "intelephense",
          "psalm",
          "htmx",
        },
        handlers = {
          function(server_name)
            require("lspconfig")[server_name].setup({})
          end,
        },
        require("lspconfig").intelephense.setup({}),
      })
    end,
  },
  { "neovim/nvim-lspconfig" },
}
