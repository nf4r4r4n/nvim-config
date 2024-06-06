local status, transparent = pcall(require, "transparent")
if not status then
	return
end

-- transparent.clear_prefix("lualine")
transparent.setup({
	extra_groups = {
		"NvimTreeNormal",
		"NvimTreeNormalNC",
		"NormalFloat",
	}
})
