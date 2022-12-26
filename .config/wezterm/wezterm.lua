local wezterm = require "wezterm"

return {
  -- 下拉菜单，设置Launcher一般配合快捷键进行配置
  -- Smart tab bar [distraction-free mode]
  hide_tab_bar_if_only_one_tab = true,

  -- disable dead keys
  use_dead_keys = false,

  -- Color scheme
  -- color_scheme = "Mostly Brigh (terminal.sexy)",
  -- color_scheme = "Omni (Gogh)",
  -- color_scheme = "GitHub Dark",
  -- color_scheme = "Dark+",
  -- color_scheme = "DoomOne",
  -- color_scheme = "Dracula",
  -- color_scheme = "Dracula (Gogh)",
  -- color_scheme = "Banana Blueberry",
  -- color_scheme = "Gruvbox Dark",
  -- color_scheme = "Rapture",
  color_scheme = "MaterialDesignColors",
  -- color_scheme = "BlueDolphin",
  -- color_scheme = "Cobalt2",

  -- Background image
  -- window_background_image = "/Users/thegx/Pictures/Wallpapers/wallhaven-jx5ezq.jpg",
  -- Opacity
  window_background_opacity = 1.0,

  -- Font configuration
  font = wezterm.font{family = "JetBrainsMono Nerd Font Mono", weight = "Bold", italic = false },
  font_size = 13.0,

  -- Disable font
  -- font = wezterm.font_with_fallback {}

  -- Scrollback
  -- scrollback_lines = 3500,

  -- Scrollbar:wqjj
  -- enable_scroll_bar = true,

  -- Key binding
  leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 },
  keys = {
    {
      key = "|",
      mods = "LEADER|SHIFT",
      action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" },
    },
    {
      key = "a",
      mods = "LEADER|CTRL",
      action = wezterm.action.SendString "\x01",
    },
  },
  native_macos_fullscreen_mode = true,
  adjust_window_size_when_changing_font_size = true,
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0
  },
  window_background_image_hsb = {
    brightness = 0.8,
    hue = 1.0,
    saturation = 1.0
  },
  tab_bar_at_bottom = true,
}
