-- Pull in the wezterm API
local wezterm = require("wezterm")
-- This will hold the configuration.
local config = wezterm.config_builder()

function tab_title(tab_info)
	local title = tab_info.tab_title
	-- if the tab title is explicitly set, take that
	if title and #title > 0 then
		return title
	end
	-- Otherwise, use the title from the active pane
	-- in that tab
	return tab_info.active_pane.title
end

--https://www.reddit.com/r/wezterm/comments/1d6f2kq/i_love_wezterm_after_tweaking_it_and_organizing/
wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local title = tab_title(tab)
	title = wezterm.truncate_right(title, max_width - 2)

	-- Use colors from config.colors.tab_bar
	local tab_bar_colors = config.colors.tab_bar
	local active_tab = tab_bar_colors.active_tab
	local inactive_tab = tab_bar_colors.inactive_tab
	local inactive_tab_hover = tab_bar_colors.inactive_tab_hover

	local tab_icon_active = wezterm.nerdfonts.md_ghost
	local tab_icon_inactive = wezterm.nerdfonts.md_ghost_off_outline
	local icon_text = tab.is_active and tab_icon_active or tab_icon_inactive

	local tab_bg_color = tab.is_active and active_tab.bg_color
		or (hover and inactive_tab_hover.bg_color or inactive_tab.bg_color)
	local tab_fg_color = tab.is_active and active_tab.fg_color
		or (hover and inactive_tab_hover.fg_color or inactive_tab.fg_color)
	local icon_color = tab_fg_color

	return {
		{ Background = { Color = tab_bar_colors.background } },
		{ Foreground = { Color = tab_bg_color } },
		{ Text = utf8.char(0xE0B6) }, -- Left separator
		{ Background = { Color = tab_bg_color } },
		{ Foreground = { Color = icon_color } },
		{ Text = " " .. icon_text .. " " },
		{ Background = { Color = tab_bg_color } },
		{ Foreground = { Color = tab_fg_color } },
		{ Text = title .. "  " },
		{ Background = { Color = tab_bar_colors.background } },
		{ Foreground = { Color = tab_bg_color } },
		{ Text = utf8.char(0xE0B4) }, -- Right separator
	}
end)

config.keys = {
	{
		key = "|",
		mods = "SHIFT|SUPER",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "-",
		mods = "SHIFT|SUPER",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "w",
		mods = "CMD|SHIFT",
		action = wezterm.action.CloseCurrentPane({ confirm = true }), -- Set confirm = false to skip confirmation
	},
	{
		key = "l",
		mods = "CMD|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Next"),
	},
	{
		key = "h",
		mods = "CMD|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "j",
		mods = "CMD|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "k",
		mods = "CMD|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
}

config.colors = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },

	-- Tab bar colors
	tab_bar = {
		background = "#011423",
		active_tab = {
			bg_color = "#033259",
			fg_color = "#CBE0F0",
		},
		inactive_tab = {
			bg_color = "#011423",
			fg_color = "#5c6773",
		},
		inactive_tab_hover = {
			bg_color = "#022440",
			fg_color = "#CBE0F0",
		},
		new_tab = {
			bg_color = "#011423",
			fg_color = "#5c6773",
		},
		new_tab_hover = {
			bg_color = "#022440",
			fg_color = "#CBE0F0",
		},
	},
}

config.font = wezterm.font("JetBrains Mono", { weight = "Bold" })
config.font_size = 14
config.enable_tab_bar = true
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.85
config.macos_window_background_blur = 10
config.show_tab_index_in_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = false
config.window_padding = { bottom = 0, left = 10, right = 10 }
config.use_fancy_tab_bar = false
config.tab_max_width = 32
config.show_new_tab_button_in_tab_bar = false
config.tab_and_split_indices_are_zero_based = false

return config
