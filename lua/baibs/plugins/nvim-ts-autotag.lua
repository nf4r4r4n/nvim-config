local status, ts_autotag = pcall(require, "nvim-ts-autotag")
if not status then
	return
end

ts_autotag.setup({
	opts = {
		enable_close = true,
		enable_rename = true,
		enable_close_on_slash = true
	}
})
