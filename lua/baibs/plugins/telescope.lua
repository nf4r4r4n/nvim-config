local status, telescope = pcall(require, "telescope")
if not status then
	return
end

local actions_status, actions = pcall(require, "telescope.actions")
if not actions_status then
	return
end

telescope.setup()

telescope.load_extension("fzf")
