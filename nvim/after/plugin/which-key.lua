local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

-- Call setup directly to override the existing configuration
-- This merges with the existing options, so you only need to specify what you want to change.
which_key.setup({
  window = {
    border = "rounded",
    position = "bottom", -- closest valid option
    margin = { 1, 10, 1, 10 }, -- top, right, bottom, left
    padding = { 2, 4, 2, 4 },
    winblend = 2000,
  },
  layout = {
    align = "center", -- aligns key descriptions inside
  },
})
