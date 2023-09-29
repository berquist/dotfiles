-- This function returns the suggested title for a tab.
-- It prefers the title that was set via `tab:set_title()`
-- or `wezterm cli set-tab-title`, but falls back to the
-- title of the active pane in that tab.
function tab_title(tab_info)
  local title = tab_info.tab_title
  -- if the tab title is explicitly set, take that
  if title and #title > 0 then
    return title
  end
  -- Otherwise, use the title from the active pane
  -- in that tab
  return tab_info.active_pane.title
end

wezterm.on(
   'format-tab-title',
   function(tab, tabs, panes, config, hover, max_width)
      local title = tab_title(tab)
      -- Figure out the cwd and host of the current pane.
      -- This will pick up the hostname for the remote host if your
      -- shell is using OSC 7 on the remote host.
      local pane = tab.active_pane
      local cwd_uri = pane.current_working_dir
      if cwd_uri then
         return cwd_uri
         -- local cwd = ''
         -- local hostname = ''
         -- if type(cwd_uri) == 'userdata' then
         --    -- Running on a newer version of wezterm and we have
         --    -- a URL object here, making this simple!
         --    cwd = cwd_uri.file_path
         --    hostname = cwd_uri.host or wezterm.hostname()
         -- else
         --    -- an older version of wezterm, 20230712-072601-f4abf8fd or earlier,
         --    -- which doesn't have the Url object
         --    cwd_uri = cwd_uri:sub(8)
         --    local slash = cwd_uri:find '/'
         --    if slash then
         --       hostname = cwd_uri:sub(1, slash - 1)
         --       -- and extract the cwd from the uri, decoding %-encoding
         --       cwd = cwd_uri:sub(slash):gsub('%%(%x%x)', function(hex)
         --                                        return string.char(tonumber(hex, 16))
         --                                    end)
         --    end
         -- end
         -- -- Remove the domain name portion of the hostname
         -- local dot = hostname:find '[.]'
         -- if dot then
         --    hostname = hostname:sub(1, dot - 1)
         -- end
         -- if hostname == '' then
         --    hostname = wezterm.hostname()
         -- end

         -- return '{' .. hostname .. '}: ' .. title
      else
         return title
      end
   end
)
