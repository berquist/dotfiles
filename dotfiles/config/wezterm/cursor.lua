-- https://github.com/wezterm/wezterm/issues/1742#issuecomment-1075333507
local wezterm = require 'wezterm'

local xcursor_size = nil
local xcursor_theme = nil

local success, stdout, stderr = wezterm.run_child_process({"gsettings", "get", "org.gnome.desktop.interface", "cursor-theme"})
if success then
  xcursor_theme = stdout:gsub("'(.+)'\n", "%1")
end

local success, stdout, stderr = wezterm.run_child_process({"gsettings", "get", "org.gnome.desktop.interface", "cursor-size"})
if success then
  xcursor_size = tonumber(stdout)
end

return {
  xcursor_theme = xcursor_theme,
  xcursor_size = xcursor_size,
}
