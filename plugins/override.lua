local M = {}

M.treesitter = {
   matchup = {
      -- mandatory, false will disable the whole extension
      enable = true,
   },
   ensure_installed = {
      "lua",
      "html",
      "css",
      "javascript",
      "typescript",
      "bash",
      "vue",
      "markdown",
      "python",
      "scss",
      "pug",
      "json",
   },
}

M.nvimtree = {
   git = {
      enable = true,
   },
   view = {
      side = "right",
      width = 20,
   },
}

return M
