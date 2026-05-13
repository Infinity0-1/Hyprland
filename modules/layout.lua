hl.config({
  general = {
    gaps_in  = 2,
    gaps_out = 5,
    border_size = 1,
    col = {
      active_border   = { colors = {"rgba(33ccffee)", "rgba(00ff99ee)"}, angle = 0 },
      inactive_border = "rgba(595959aa)",
    },

    resize_on_border = true,
    allow_tearing = false,
    layout = "master",
  },

  decoration = {
    rounding         = 0,
    rounding_power   = 0,
    active_opacity   = 1,
    inactive_opacity = 0.5,
    shadow = {
      enabled      = false,
      range        = 4,
      render_power = 3,
      color        = 0xee1a1a1a,
    },

    blur = {
      enabled   = true,
      size      = 3,
      passes    = 3,
      vibrancy  = 0.2,
    },
  },

  animations = { enabled = true, },
})

hl.config({
  dwindle = {
    force_split = 2,
    preserve_split = false,
    smart_split = false,
    smart_resizing = true,
    permanent_direction_override = false,
    special_scale_factor = 1,
    split_width_multiplier = 1.0,
    use_active_for_splits = true,
    default_split_ratio = 1.0,
    split_bias = 0,
    precise_mouse_move = false,
  },
})

hl.config({ 
  master = {
    new_status = "inherit",
    orientation = "left",
    mfact = 0.5,
    always_keep_position = false,
  },
})

hl.config({ scrolling = { fullscreen_on_one_column = false, }, })
hl.config({ misc = { force_default_wallpaper = 1, disable_hyprland_logo = true, }, })
