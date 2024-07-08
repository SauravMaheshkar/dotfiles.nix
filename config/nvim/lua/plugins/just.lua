return {
  -- Use vim-just for justfiles
  {
    "NoahTheDuke/vim-just",
    ft = { "just" },
  },

  require("nvim-treesitter.configs").setup({
    highlight = {
      enable = true,
      disable = { "just" },
    },
  }),
}
