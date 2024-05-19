local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local lualine_cyberdream = require("lualine.themes.cyberdream")

local my_colors = {
	blue = "#2A7BDE",
	green = "#33DA7A",
	violet = "#C061CB",
	yellow = "#E9AD0C",
	black = "#1D1D1D",
}

-- Normal
lualine_cyberdream.normal.a.bg = my_colors.blue
lualine_cyberdream.normal.a.fg = my_colors.black
lualine_cyberdream.normal.a.gui= "bold"

-- Insert
lualine_cyberdream.insert.a.bg = my_colors.green
lualine_cyberdream.insert.a.fg = my_colors.black
lualine_cyberdream.insert.a.gui = "bold"

-- Visual
lualine_cyberdream.visual.a.bg = my_colors.violet
lualine_cyberdream.visual.a.fg = my_colors.black
lualine_cyberdream.visual.a.gui = "bold"

-- Command
lualine_cyberdream.command = {
	a = {
		gui = "bold",
		bg = my_colors.yellow,
		fg = my_colors.black,
	},
}

lualine.setup({
	options = {
		theme = lualine_cyberdream,
	}
})
