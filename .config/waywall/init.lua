local waywall = require("waywall")
local helpers = require("waywall.helpers")

local home_dir = os.getenv("HOME")
local layout = "mc"

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
        sensitivity = 12.800000599064097,
        repeat_rate = 50,
        repeat_delay = 300,
        remaps = {
            ["MB4"] = "Backspace"
        }
    },
    theme = {
        background = "#2e3440ff",
        ninb_anchor = "bottomright",
        ninb_opacity = 1.0
    },
    shaders = {
        ["pie_chart"] = {
            vertex = read_file("pie_chart.vert"),
            fragment = read_file("pie_chart.frag"),
        },
    },
}

-- Eye magnifier
helpers.res_mirror(
    {
        src = {x = 162,     y = 7902,   w = 60,     h = 580},
        dst = {x = 68,       y = 315,    w = 700,    h = 450},
    },
    384, 16384
)
helpers.res_image(
    home_dir .. "/Pictures/boatoverlay.png",
    {
        dst = {x = 68,       y = 315,    w = 700,    h = 450},
    },
    384, 16384
)

-- F3 Entity Count
helpers.res_mirror({
    src = { x = 0, y = 36, w = 49, h = 9 },
    dst = { x = 550, y = 200, w = 196, h = 36 },
    color_key = {
        input = "#dddddd",
        output = "#ffffff",
    },
}, 350, 900)

-- Thin pie numbers
helpers.res_mirror({
    src = { x = 257, y = 679, w = 84, h = 42 },
    dst = { x = 1150, y = 650, w = 504, h = 252 },
    shader = "pie_chart",
}, 350, 900)

local ingame_override = false

local function ingame_only(func)
    return function()
        if ingame_override then
            return func()
        else
            return helpers.ingame_only(func)()
        end
    end
end

local function toggle_ingame_override()
    ingame_override = not ingame_override
end

local function pcal(func)
    return function ()
        local status, _ = pcall(func)
        return status
    end
end

local resolutions = {
    thin = pcal(ingame_only(helpers.toggle_res(350, 900))),
    eye = pcal(helpers.toggle_res(384, 16384, 0.8634803836976988)),
    wide = pcal(ingame_only(helpers.toggle_res(1920, 320))),
}

local is_ninb_running = function()
    local handle = io.popen("ps aux | grep '[n]inb'")
    local result = handle:read("*l")
    handle:close()
    return result ~= nil
end

local ninb = function()
    if not is_ninb_running() then
        waywall.exec("ninbr")
        waywall.show_floating(true)
    else
        helpers.toggle_floating()
    end
end

local crafting = true

local toggle_layout = function()
    waywall.set_keymap({
        layout = crafting and layout or "",
    })
    crafting = not crafting
end

config.actions = {
    -- Resolutions
    ["Shift-B"] = resolutions.thin,
    ["Ctrl-N"] = resolutions.eye,
    ["Shift-G"] = resolutions.wide,
    ["Ctrl-H"] = toggle_ingame_override,

    -- Ninjabrain Bot
    ["Ctrl-G"] = ninb,

    -- Disable narrator
    ["*-Ctrl-B"] = function() end,

    -- Toggle crafting layout
    ["*-Ctrl-l"] = toggle_layout,
}

return config
