hl.monitor({
  output   = "eDP-1",
  mode     = "1920x1080@120",
  position = "0x0",
  scale    = "1",
})

hl.monitor({
  output   = "",
  mode     = "1920x1080@120",
  position = "0x0",
  scale    = "1",
  mirror   = "eDP-1",
})

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.exec_cmd("swaybg -m fill -i '/home/Abdelkader/Pictures/Wallpapers/green-city.jpg'")
