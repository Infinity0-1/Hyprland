hl.window_rule({
  name = "Everything",
  match = { class = ".*" },
  suppress_event = "maximize", "fullscreen",
  xray = false,
})

hl.window_rule({
  name  = "fix-xwayland-drags",
  match = {
    class      = "^$",
    title      = "^$",
    xwayland   = true,
    float      = true,
    fullscreen = false,
    pin        = false,
  },

  no_focus = true,
})

hl.exec_cmd("swaybg -m fill -i '/home/Abdelkader/Pictures/Wallpapers/green-city.jpg'")

-- hl.window_rule({
--   name = "Alacritty",
--   match = { class = "Alacritty" },
--   size = { 1670, 980 },
--   move = { 125, 50 },
-- })
--
-- hl.window_rule({
--   name = "Helium Browser",
--   match = { class = "helium" },
--   size = { 1720, 1030 },
--   move = { 100, 25 },
-- })

-- hl.window_rule({
--   name = "Everything",
--   match = { class = ".*" },
--   suppress_event = "maximize", "fullscreen",
--   -- tile = false,
--   -- workspace = 3,
-- })

-- hl.window_rule({
--   name = "Alacritty",
--   match = { class = "Alacritty" },
--   workspace = 1,
-- })
--
-- hl.window_rule({
--   name = "Kitty",
--   match = { class = "kitty" },
--   workspace = "unset",
-- })
--
-- hl.window_rule({
--   name = "Helium Browser",
--   match = { class = "helium" },
--   workspace = 2,
-- })

-- hl.window_rule({
--   name = "Telegram",
--   match = { class = "org.telegram.desktop" },
--   workspace = 2,
-- })

-- hl.window_rule({
--   name = "Nautilus",
--   match = { class = "org.gnome.Nautilus" },
--   opacity = 0.8,
--   float = true,
--   size = {1020, 780},
--   move = {20, 20},
--   workspace = "unset",
-- })

-- hl.window_rule({
--   name = "Thunar",
--   match = { class = "thunar" },
--   opacity = 0.8,
--   float = true,
--   size = {1020, 780},
--   move = {20, 20},
--   workspace = "unset",
-- })

-- hl.window_rule({
--   name = "Steam",
--   match = { class = "steam" },
--   workspace = 3,
-- })
--
-- hl.window_rule({
--   name  = "suppress-maximize-events",
--   match = { class = ".*" },
-- })
--
