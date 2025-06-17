-- https://wezfurlong.org/wezterm/config/lua/general.html

-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config:set_strict_mode(true)
-- This is where you actually apply your config choices

--UI

config.color_scheme = "Tokyo Night" -- 'OceanicNext (base16)'
config.hide_tab_bar_if_only_one_tab = true
config.macos_window_background_blur = 20
config.window_background_opacity = 0.66
config.scrollback_lines = 10000

config.window_frame = {
	font_size = 13,
	active_titlebar_bg = "#1f212e",
	font = wezterm.font({
		family = "CaskaydiaMono Nerd Font",
		weight = "Regular",
	}),
}

config.font_size = 13
config.font = wezterm.font_with_fallback({
	{ family = "CaskaydiaMono Nerd Font", weight = 450 }, -- Retina
	"Menlo", -- This has the check mark and cross symbols
	"Apple Color Emoji",
})

config.window_decorations = "RESIZE"

config.initial_cols = 320
config.initial_rows = 96
-- and finally, return the configuration to wezterm
return config
