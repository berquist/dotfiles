local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
   config = wezterm.config_builder()
end

config.color_scheme = 'Wombat'
config.font = wezterm.font 'Panic Sans'
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
-- config.window_background_opacity = 0.75

return config
