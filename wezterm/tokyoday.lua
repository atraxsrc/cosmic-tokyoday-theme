-- TokyoDay for WezTerm, part of cosmic-tokyoday-theme (MIT).
-- Colours follow the COSMIC Terminal scheme (cosmic-term/).
--
-- Install: ./wezterm/install.sh puts this in ~/.config/wezterm/, then in
-- ~/.config/wezterm/wezterm.lua:
--   config.colors = require("tokyoday")
-- To follow COSMIC's Dark / Light toggle with the Tokyo Night half installed too:
--   local dark = (wezterm.gui and wezterm.gui.get_appearance() or "Dark"):find("Dark")
--   config.colors = require(dark and "tokyonight" or "tokyoday")

return {
  foreground = "#343B59",
  background = "#D6D8DF",

  cursor_bg = "#2959AA",
  cursor_fg = "#D6D8DF",
  cursor_border = "#2959AA",
  compose_cursor = "#8F5E15",

  selection_bg = "#B6B9C1",
  selection_fg = "none",

  scrollbar_thumb = "#B6B9C1",
  split = "#B6B9C1",

  -- black, red, green, yellow, blue, magenta, cyan, white
  ansi = { "#343B58", "#8C4351", "#33635C", "#8F5E15", "#2959AA", "#7B43BA", "#006C86", "#707280" },
  brights = { "#2C324B", "#773945", "#2B544E", "#7A5012", "#234C90", "#69399E", "#005C72", "#5F616D" },

  copy_mode_active_highlight_bg = { Color = "#2959AA" },
  copy_mode_active_highlight_fg = { Color = "#E6E7ED" },
  copy_mode_inactive_highlight_bg = { Color = "#8F5E15" },
  copy_mode_inactive_highlight_fg = { Color = "#D6D8DF" },

  quick_select_label_bg = { Color = "#8F5E15" },
  quick_select_label_fg = { Color = "#D6D8DF" },
  quick_select_match_bg = { Color = "#8F5E15" },
  quick_select_match_fg = { Color = "#D6D8DF" },

  tab_bar = {
    background = "#D6D8DF",
    active_tab = { bg_color = "#2959AA", fg_color = "#E6E7ED", intensity = "Bold" },
    inactive_tab = { bg_color = "#DEE0E6", fg_color = "#5C5E69" },
    inactive_tab_hover = { bg_color = "#D6D8DF", fg_color = "#343B59" },
    new_tab = { bg_color = "#D6D8DF", fg_color = "#5C5E69" },
    new_tab_hover = { bg_color = "#D6D8DF", fg_color = "#2959AA" },
  },
}
