local wezterm = require("wezterm")
local act = wezterm.action
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.enable_tab_bar = false -- enable/disable tabs
config.font = wezterm.font_with_fallback({ -- fonts
	-- "JetBrainsMono Nerd Font",
	-- "Hack FC Ligatured",
	-- "FiraCode Nerd Font",
	-- "LigaMonaco Nerd Font",
	"JetBrains Mono",
})
config.font_size = 19 -- font size
config.window_background_opacity = 0.95 -- opacity
config.color_scheme = "Catppuccin Mocha" -- color scheme
config.window_decorations = "RESIZE" -- enable/disable window bar

config.mouse_bindings = {
	-- Bind 'Up' event of CTRL-Click to open hyperlinks
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = act.OpenLinkAtMouseCursor,
	},
	-- Disable the 'Down' event of CTRL-Click to avoid weird program behaviors
	{
		event = { Down = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = act.Nop,
	},
	-- Scrolling up while holding CTRL increases the font size
	{
		event = { Down = { streak = 1, button = { WheelUp = 1 } } },
		mods = "CTRL",
		action = act.IncreaseFontSize,
	},

	-- Scrolling down while holding CTRL decreases the font size
	{
		event = { Down = { streak = 1, button = { WheelDown = 1 } } },
		mods = "CTRL",
		action = act.DecreaseFontSize,
	},
}

return config
