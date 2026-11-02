-- Input configuration

hl.config({
    input = {
        sensitivity = 0.4,
        accel_profile = "flat",
        kb_layout = "latam",
        touchpad = {
            natural_scroll = true,
            scroll_factor = 1,
            tap_to_click = true,
        },
    },
    -- Uncomment the section below to enable software cursors; this can help with cursor display or behavior issues
    -- cursor = {
    --     no_hardware_cursors = 1,
    -- },
})

hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
