-- Wezterm as main terminal on OSX usage. On Linux kitty seems to be the best choice.
local wezterm = require("wezterm")

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config = {
	-- Fonts
	font_rules = {
		--[[ {
			italic = false,
			font = wezterm.font("VictorMono Nerd Font Mono", { weight = "Medium" }),
		}, ]]
		{
			italic = false,
			font = wezterm.font(
				"JetBrainsMono Nerd Font Mono",
				{ weight = "Light", harfbuzz_features = { "calt=0", "clig=0", "liga=0" } }
			),
		},
		{
			italic = true,
			intensity = "Bold",
			font = wezterm.font_with_fallback({
				{
					family = "VictorMono Nerd Font",
					-- family = "JetBrainsMono Nerd Font",
					italic = true,
				},
				"VictorMono Nerd Font Mono",
			}),
		},
	},
	font_size = 12.5,
	line_height = 1.1,
	-- cell_width = 1.05,
	freetype_load_target = "Light",
	-- Keys
	enable_kitty_keyboard = true,
	-- Window
	tab_bar_at_bottom = true,
	use_fancy_tab_bar = true,
	window_decorations = "RESIZE | MACOS_FORCE_ENABLE_SHADOW",
	window_background_opacity = 0.94,
	macos_window_background_blur = 20,
	hide_tab_bar_if_only_one_tab = true,
	debug_key_events = true,
	window_frame = {
		font = wezterm.font("JetBrainsMono Nerd Font Mono"),
		font_size = 10,
		active_titlebar_bg = "#191A21",
		inactive_titlebar_bg = "#191A21",
		-- inactive_titlebar_fg = "#cccccc",
		-- active_titlebar_fg = "#ffffff",
		-- inactive_titlebar_border_bottom = "#21222C",
		-- button_fg = "#cccccc",
		-- active_titlebar_border_bottom = "#21222C",
		-- button_bg = "#21222C",
		-- button_hover_fg = "#ffffff",
		-- button_hover_bg = "#3b3052",
		border_left_width = "0.1cell",
		border_right_width = "0.1cell",
		border_top_height = "0.05cell",
		border_bottom_height = "0.05cell",
		border_left_color = "#44475A",
		border_right_color = "#44475A",
		border_bottom_color = "#44475A",
		border_top_color = "#44475A",
	},
	color_scheme = "Dracula (Official)",
	-- https://wezfurlong.org/wezterm/config/appearance.html#retro-tab-bar-appearance
	colors = {
		tab_bar = {
			-- The active tab is the one that has focus in the window
			active_tab = {
				bg_color = "#343746",
				fg_color = "#c0c0c0",
			},
			inactive_tab = {
				-- bg_color = "#282A36",
				bg_color = "#21222C",
				fg_color = "#c0c0c0",
			},
		},
	},
	window_padding = {
		--[[ -- OSX
		left = 6,
		right = 4,
		top = 4,
		bottom = 0, ]]
		left = 1,
		right = 0,
		top = 1,
		bottom = 0,
	},
}

return config
