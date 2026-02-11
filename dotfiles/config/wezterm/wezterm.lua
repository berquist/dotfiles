local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.front_end = "WebGpu"

config.audible_bell = "Disabled"

config.color_scheme = 'Wombat'

config.font = wezterm.font_with_fallback {
    { family = 'Panic Sans', weight = 'Regular', stretch = 'Normal', style = 'Normal' },
    { family = 'Fira Mono' },
}
-- config.font_size = 12.0
-- https://learn.microsoft.com/en-us/typography/opentype/spec/featuretags
-- no contextual alternates, contextual ligatures, or standard ligatures
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
-- config.window_background_opacity = 0.75

local session = os.getenv("XDG_SESSION_TYPE")

if session == "wayland" then
    config.enable_wayland = true
    local cursor = require 'cursor'
    config.xcursor_theme = cursor.xcursor_theme
    config.xcursor_size = cursor.xcursor_size
else
    config.enable_wayland = false
end

-- References:
-- https://wezterm.org/shell-integration.html?h=powershell#osc-7-on-windows-with-powershell
-- https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-7.1
if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
    -- -- Use OSC 7 as per the above example
    -- config.set_environment_variables['prompt'] =
    --     '$E]7;file://localhost/$P$E\\$E[32m$T$E[0m $E[35m$P$E[36m$_$G$E[0m '
    -- -- use a more ls-like output format for dir
    -- config.set_environment_variables['DIRCMD'] = '/d'
    -- -- And inject clink into the command prompt
    -- config.default_prog =
    --     { 'cmd.exe', '/s', '/k', 'c:/clink/clink_x64.exe', 'inject', '-q' }

    -- old
    -- config.default_prog = { 'powershell.exe', '-NoLogo' }
    -- new
    config.default_prog = { 'pwsh.exe' }
end

return config
