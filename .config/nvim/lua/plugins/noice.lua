return {
  "folke/noice.nvim",
  opts = {
    lsp = {
      progress = {
        enabled = false, -- Desativa completamente o progresso do LSP no noice
      },
    },
    routes = {
      {
        filter = {
          event = "msg_show",
          find = "gopls",
        },
        opts = { skip = true },
      },
    },
  },
}
