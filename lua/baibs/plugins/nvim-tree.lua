local status, nvimtree = pcall(require, "nvim-tree")
if not status then
	return
end

-- recommended from nvim-tree docs
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#2A7BDE]])

nvimtree.setup({
	actions = {
		open_file = {
			window_picker = {
				enable = false
			}
		}
	}
})
