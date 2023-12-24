-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- config.default_domain = "WSL:Ubuntu" -- use for windows wsl
config.enable_tab_bar = false -- enable/disable tabs
config.font = wezterm.font_with_fallback({ -- fonts
	"JetBrainsMono Nerd Font",
	"Hack FC Ligatured",
	"FiraCode Nerd Font",
	"LigaMonaco Nerd Font",
	"JetBrains Mono",
})
config.font_size = 12 -- font size
config.window_background_opacity = 0.9 -- opacity
config.color_scheme = "Catppuccin Mocha" -- color scheme
config.window_decorations = "RESIZE" -- enable/disable window bar

return config
