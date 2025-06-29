-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local function toggle_virtual_lines()
  local config = vim.diagnostic.config()
  if config.virtual_text then
    vim.diagnostic.config({
      virtual_text = false,
      virtual_lines = true,
    })
    vim.notify("Virtual lines enabled")
  else
    vim.diagnostic.config({
      virtual_text = true,
      virtual_lines = false,
    })
    vim.notify("Virtual text enabled")
  end
end

vim.keymap.set("n", "<leader>uv", toggle_virtual_lines, { desc = "Toggle virtual lines/text" })
