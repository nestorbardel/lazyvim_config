return {
  { "EdenEast/nightfox.nvim" },
  {
    "eldritch-theme/eldritch.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nightfox",
      colorscheme = "eldritch"
    },
  }
}