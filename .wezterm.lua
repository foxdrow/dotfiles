local wezterm = require 'wezterm'
return {
	-- color_scheme = 'termnial.sexy',
  color_scheme = 'Catppuccin Mocha',
	colors = {
    -- background = "#1E1E2E", -- tmux bar

		--background = "#3b302a", -- nightshift
		--background = "#291d16", -- nightshift 30%
		background = "#1d150f", -- nightshift 50%

    -- background = "#3a2a1f",
    -- background = "#4a3628",
    --background = "#5a4235",
  },
	-- color_scheme = 'Dracula',
	enable_tab_bar = false,
	font_size = 13.0,
	font = wezterm.font('JetBrains Mono'),
	-- macos_window_background_blur = 40,
	-- macos_window_background_blur = 30,
	
	-- window_background_image = '/Users/omerhamerman/Downloads/3840x1080-Wallpaper-041.jpg',
	-- window_background_image_hsb = {
	-- 	brightness = 0.01,
	-- 	hue = 1.0,
	-- 	saturation = 0.5,
	-- },
	-- window_background_opacity = 0.92,
	-- window_background_opacity = 1.0,
	-- window_background_opacity = 0.78,
	window_background_opacity = 0.7,
	window_decorations = 'RESIZE',
	keys = {
		{
			key = 'F11',
			action = wezterm.action.ToggleFullScreen,
		},
	 -- {
		 -- key = ';',
		 -- mods = 'CTRL',
		 -- action = wezterm.action.SendString('\x0c'),
	 -- },
	},
	mouse_bindings = {
	  -- Ctrl-click will open the link under the mouse cursor
	  {
	    event = { Up = { streak = 1, button = 'Left' } },
	    mods = 'CTRL',
	    action = wezterm.action.OpenLinkAtMouseCursor,
	  },
	},
}
