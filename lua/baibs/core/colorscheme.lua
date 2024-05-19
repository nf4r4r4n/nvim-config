local status, _ = pcall(vim.cmd, "colorschem cyberdream")
if not status then
	print("Colorscheme not found")
	return
end
