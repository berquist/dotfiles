-- Per-window titles that are independent of tab titles.
--
-- WezTerm already stores a title on the mux window, but the GUI ignores it
-- (https://github.com/wezterm/wezterm/issues/4899) and derives the displayed
-- title from the active pane instead. This module surfaces the mux window
-- title when one has been set, and binds a key to set it.

local wezterm = require 'wezterm'
local act = wezterm.action
local mux = wezterm.mux

local M = {}

M.default_key = { key = 'T', mods = 'CTRL|SHIFT|ALT' }

-- The title explicitly set on the mux window, or nil.
local function explicit_title(tab)
  local mux_tab = mux.get_tab(tab.tab_id)
  local mux_win = mux_tab and mux_tab:window()
  local title = mux_win and mux_win:get_title()
  if title and title ~= '' then
    return title
  end
  return nil
end

-- Approximates wezterm's built-in window title.
local function fallback_title(tab, tabs)
  local zoomed = tab.active_pane.is_zoomed and '[Z] ' or ''
  local index = ''
  if #tabs > 1 then
    index = string.format('[%d/%d] ', tab.tab_index + 1, #tabs)
  end
  return zoomed .. index .. tab.active_pane.title
end

function M.format_window_title(tab, _pane, tabs)
  return explicit_title(tab) or fallback_title(tab, tabs)
end

-- Prompt for a title and apply it to the current window.
function M.prompt_action(description)
  return act.PromptInputLine {
    description = description or 'Enter new window title',
    action = wezterm.action_callback(function(window, _pane, line)
      if line then
        window:mux_window():set_title(line)
      end
    end),
  }
end

local registered = false

function M.apply_to_config(config, opts)
  opts = opts or {}

  -- Only the first format-window-title handler runs, so register once.
  if not registered then
    wezterm.on('format-window-title', M.format_window_title)
    registered = true
  end

  local key = opts.key or M.default_key
  config.keys = config.keys or {}
  table.insert(config.keys, {
    key = key.key,
    mods = key.mods,
    action = M.prompt_action(opts.description),
  })

  wezterm.add_to_config_reload_watch_list(wezterm.config_dir .. '/window-title.lua')
end

return M
