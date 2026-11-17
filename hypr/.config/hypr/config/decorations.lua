-- Look and feel configuration

hl.config({
    general = {
        layout = "master",
        gaps_in = 3,
        gaps_out = 3,
        border_size = 2,
        extend_border_grab_area = 10,
        resize_on_border = true,
        col = {
            active_border = {
                colors = { "rgba(1e66f5ff)", "rgba(04a5e5ff)", "rgba(179299ff)" },
                angle = 60,
                speed = 15,
            },
            inactive_border = "rgba(00000000)",
        },
    },

    cursor = {
            hide_on_key_press = true,        -- el cursor desaparece mientras escribes
            inactive_timeout = 5,            -- se oculta tras 5 s sin moverlo
    },


    group = {
        col = {
            border_active = CACHYLBLUE,
            border_inactive = CACHYGRAY,
            border_locked_active = CACHYDBLUE,
            border_locked_inactive = CACHYGRAY,
        },
        groupbar = {
            col = {
                active = CACHYLGREEN,
                inactive = CACHYGRAY,
                locked_active = CACHYDBLUE,
                locked_inactive = CACHYGRAY,
            },
        },
    },
    decoration = {
        dim_special = 0.3,
        rounding = 12,
        rounding_power = 4,
        active_opacity = 0.95,
        inactive_opacity = 0.85,
        fullscreen_opacity = 1,
        blur = {
            size = 10,
            passes = 2,
            special = true,
        },
    },
})
