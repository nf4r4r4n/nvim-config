local status, eldritch = pcall(require, "eldritch")
if not status then
	return
end

eldritch.setup({
	transparent = true,
	terminal_colors = true,
	styles = {
		comments = { italic = true },
		keywords = { italic = true },
	},
	hide_inactive_statusline = true,
	dim_inactive = true,
})