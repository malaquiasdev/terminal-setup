-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
if true then return {} end

return {
  "nvim-focus/focus.nvim",
  version = false,
  config = function()
    require("focus").setup()
  end,
}
