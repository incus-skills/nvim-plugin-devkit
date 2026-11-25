-- Optional runtime entry point. Keep this file focused on loading policy.
if vim.g.loaded_plugin_name then
  return
end
vim.g.loaded_plugin_name = true

require("plugin-name").setup()
