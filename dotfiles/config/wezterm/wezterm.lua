local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
   config = wezterm.config_builder()
end

config.front_end = "WebGpu"

config.audible_bell = "Disabled"

config.color_scheme = 'Wombat'

config.font = wezterm.font_with_fallback {
   -- { family = 'Comic Mono', weight = 'Regular', stretch = 'Normal', style = 'Normal' },
   { family = 'Panic Sans', weight = 'Regular', stretch = 'Normal', style = 'Normal' },
   { family = 'Fira Mono' },
}
-- config.font_size = 12.0
-- https://learn.microsoft.com/en-us/typography/opentype/spec/featuretags
-- no contextual alternates, contextual ligatures, or standard ligatures
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
-- config.window_background_opacity = 0.75

return config
