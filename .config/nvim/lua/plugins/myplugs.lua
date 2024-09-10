package.path = "/home/gryd/.config/nvim/lua/config/?.lua"

return {
   require("custom.colorscheme"),
   { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
   {
      "norcalli/nvim-colorizer.lua",
   },
   {
      "williamboman/mason.nvim",
      opts = {
         ensure_installed = {
            "stylua",
            "shellcheck",
            "shfmt",
            "lua-language-server",
         },
      },
   },
   {
      "nvim-treesitter/nvim-treesitter",
      opts = function(_, opts)
         -- add tsx and treesitter
         vim.list_extend(opts.ensure_installed, {
            "tsx",
            "typescript",
         })
      end,
   },
   {
      "nvim-neo-tree/neo-tree.nvim",
      opts = {
         window = {
            width = 30,
         },
      },
   },
   --{
   --   "folke/tokyonight.nvim",
   --   enabled = false,
   --},
   {
      "stevearc/conform.nvim",
      opts = {
         formatters_by_ft = {
            lua = { "stylua" },
            sh = { "shfmt" },
            java = { "astyle" },
            c = { "clang-format" },
         },
      },
   },
   {
      "iamcco/markdown-preview.nvim",
      cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
   },
   {
      "MeanderingProgrammer/markdown.nvim",
      file_types = { "markdown", "norg", "rmd", "org" },
   },
}
