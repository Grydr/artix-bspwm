return {
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
}
