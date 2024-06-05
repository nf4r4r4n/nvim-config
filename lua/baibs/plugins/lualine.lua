local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- local lualine_eldritch = require("lualine.themes.eldritch")
--
-- local my_colors = {
-- 	blue = "#2A7BDE",
-- 	green = "#33DA7A",
-- 	violet = "#C061CB",
-- 	yellow = "#E9AD0C",
-- 	black = "#1D1D1D",
-- }
--
-- -- Normal
-- lualine_eldritch.normal.a.bg = my_colors.blue
-- lualine_eldritch.normal.a.fg = my_colors.black
-- lualine_eldritch.normal.a.gui= "bold"
--
-- -- Insert
-- lualine_eldritch.insert.a.bg = my_colors.green
-- lualine_eldritch.insert.a.fg = my_colors.black
-- lualine_eldritch.insert.a.gui = "bold"
--
-- -- Visual
-- lualine_eldritch.visual.a.bg = my_colors.violet
-- lualine_eldritch.visual.a.fg = my_colors.black
-- lualine_eldritch.visual.a.gui = "bold"
--
-- -- Command
-- lualine_eldritch.command = {
-- 	a = {
-- 		gui = "bold",
-- 		bg = my_colors.yellow,
-- 		fg = my_colors.black,
-- 	},
-- }

lualine.setup({
	-- options = {
	-- 	theme = lualine_eldritch,
	-- }
})
