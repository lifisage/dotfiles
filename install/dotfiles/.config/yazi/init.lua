local catppuccin_theme = require("yatline-catppuccin"):setup("mocha")
require("full-border"):setup()
require("yatline"):setup({
	theme = catppuccin_theme,

	tab_width = 20,
	tab_use_inverse = false,
	show_background = false,

	display_header_line = true,
	display_status_line = true,

	header_line = {
		left = {
			section_a = {
				{ type = "string", custom = false, name = "tab_path" },
			},
			section_b = {},
			section_c = {},
		},
		right = {
			section_a = {
				{ type = "line", custom = false, name = "tabs", params = { "right" } },
			},
			section_b = {},
			section_c = {},
		},
	},

	status_line = {
		left = {
			section_a = {
				{ type = "string", custom = false, name = "tab_mode" },
			},
			section_b = {
				{ type = "string", custom = false, name = "hovered_size" },
			},
			section_c = {
				{ type = "string", custom = false, name = "hovered_name" },
				{ type = "coloreds", custom = false, name = "count" },
			},
		},
		right = {
			section_a = {
				{ type = "string", custom = false, name = "cursor_position" },
			},
			section_b = {
				{ type = "string", custom = false, name = "cursor_percentage" },
			},
			section_c = {
				{ type = "string", custom = false, name = "hovered_file_extension", params = { true } },
				{ type = "coloreds", custom = false, name = "permissions" },
			},
		},
	},
})
