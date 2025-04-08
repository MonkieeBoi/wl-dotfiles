local waywall = require("waywall")
local helpers = require("waywall.helpers")

local home_dir = os.getenv("HOME")

local read_file = function(name)
    local file = io.open(home_dir .. "/.config/waywall/" .. name, "r")
    if not file then return nil end
    local data = file:read("*a")
    file:close()

    return data
end

local config = {
    input = {
        layout = "",
        sensitivity = 1.0,
        repeat_rate = 50,
        repeat_delay = 300,
    },
    theme = {
        background = "#2e3440ff",
        ninb_anchor = "bottomright",
        ninb_opacity = 0.7
    },
    shaders = {
        ["pie_chart"] = {
            vertex = read_file("pie_chart.vert"),
            fragment = read_file("pie_chart.frag"),
        },
    },
}

-- Eye magnifier
-- helpers.res_mirror(
--     {
--         src = {x = 130,     y = 7902,   w = 60,     h = 580},
--         dst = {x = 0,       y = 315,    w = 800,    h = 450},
--     },
--     320, 16384
-- )
-- helpers.res_image(
--     home_dir .. "/Pictures/boatoverlay.png",
--     {
--         dst = {x = 0,       y = 315,    w = 800,    h = 450},
--     },
--     320, 16384
-- )

-- F3 Entity Count
helpers.res_mirror(
    {
        src = {x = 0,       y = 36,     w = 49,     h = 9},
        dst = {x = 550,     y = 200,    w = 196,    h = 36},
        color_key  = {
            input  = "#dddddd",
            output = "#ffffff",
        },
    },
    350, 900
)

-- Thin pie numbers
helpers.res_mirror(
    {
        src = {x = 257,     y = 679,    w = 84,     h = 42},
        dst = {x = 1150,    y = 650,    w = 504,    h = 252},
        shader = "pie_chart",
    },
    350, 900
)

local resolutions = {
    thin            = helpers.ingame_only(helpers.toggle_res(350, 900)),
    eye             = helpers.toggle_res(1920, 16384, 0.1),
    wide            = helpers.ingame_only(helpers.toggle_res(1920, 320)),
}

local exec_ninb = function()
    waywall.exec("ninb")
end

config.actions = {
    -- Resolutions
    ["Shift-B"]          = resolutions.thin,
    ["Ctrl-N"]           = resolutions.eye,
    ["Shift-G"]          = resolutions.wide,

    -- Ninjabrain Bot
    ["Ctrl-G"]           = helpers.toggle_floating,
    ["Ctrl-Shift-Alt-H"] = exec_ninb,
}

return config
