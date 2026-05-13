hl.bind("SUPER + Q",         hl.dsp.window.close())
hl.bind("SUPER + SHIFT + Q", hl.dsp.window.kill())
hl.bind("SUPER + SPACE",     hl.dsp.exec_cmd("fuzzel"))
hl.bind("SUPER + T",         hl.dsp.exec_cmd("foot"))
hl.bind("SUPER + E",         hl.dsp.exec_cmd("thunar"))
hl.bind("SUPER + SHIFT + E", hl.dsp.exec_cmd("nautilus"))
hl.bind("SUPER + Y",         hl.dsp.exec_cmd( "hyprpicker | wl-copy"))
hl.bind("SUPER + C",         hl.dsp.window.center())
hl.bind("SUPER + P",         hl.dsp.window.pseudo())
hl.bind("SUPER + W",         hl.dsp.window.bring_to_top())
hl.bind("SUPER + V",         hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + R",         hl.dsp.exec_cmd('grim -g "$(slurp)" - | wl-copy'))
hl.bind("SUPER + F",         hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))
hl.bind("SUPER + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))

hl.bind("SUPER + SHIFT + CTRL + ESCAPE", hl.dsp.exec_cmd("swaylock --image /home/Abdelkader/Pictures/Wallpapers/'Sakura.jpeg'"))

hl.bind("SUPER + H", function()
    hl.dispatch(hl.dsp.focus({ direction = "left" }))
    hl.dispatch(hl.dsp.window.alter_zorder({ mode = "top" }))
end)

hl.bind("SUPER + J", function()
    hl.dispatch(hl.dsp.focus({ direction = "down" }))
    hl.dispatch(hl.dsp.window.alter_zorder({ mode = "top" }))
end)

hl.bind("SUPER + K", function()
    hl.dispatch(hl.dsp.focus({ direction = "up" }))
    hl.dispatch(hl.dsp.window.alter_zorder({ mode = "top" }))
end)

hl.bind("SUPER + L", function()
    hl.dispatch(hl.dsp.focus({ direction = "right" }))
    hl.dispatch(hl.dsp.window.alter_zorder({ mode = "top" }))
end)

hl.bind("SUPER + SHIFT + H", hl.dsp.window.move({ direction = "left" }),  { repeating = true })
hl.bind("SUPER + SHIFT + J", hl.dsp.window.move({ direction = "down" }),  { repeating = true })
hl.bind("SUPER + SHIFT + K", hl.dsp.window.move({ direction = "up" }),    { repeating = true })
hl.bind("SUPER + SHIFT + L", hl.dsp.window.move({ direction = "right" }), { repeating = true })

hl.bind("SUPER + EQUAL",         hl.dsp.window.resize({ x = 55, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + SHIFT + EQUAL", hl.dsp.window.resize({ x = 0, y = 55, relative = true }), { repeating = true })
hl.bind("SUPER + MINUS",         hl.dsp.window.resize({ x = -55, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + SHIFT + MINUS", hl.dsp.window.resize({ x = 0, y = -55, relative = true }), { repeating = true })

for i = 1, 10 do
    local key = i % 10
    hl.bind("SUPER + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind("SUPER + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

hl.bind("SUPER + TAB" ,         hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + SHIFT + TAB",  hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + S",            hl.dsp.workspace.toggle_special("magic"))
hl.bind("SUPER + SHIFT + S",    hl.dsp.window.move({ workspace = "special:magic" }))

hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + mouse:272",  hl.dsp.window.drag(),   { mouse = true })
hl.bind("SUPER + mouse:273",  hl.dsp.window.resize(), { mouse = true })

hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

hl.bind("SUPER + SHIFT + F5", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("SUPER + SHIFT + F4", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 20%-"),      { locked = true, repeating = true })
hl.bind("SUPER + SHIFT + F3",   hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("SUPER + SHIFT + F2",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("SUPER + SHIFT + F1",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

hl.bind("SUPER + SHIFT + CTRL + BACKSPACE", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
