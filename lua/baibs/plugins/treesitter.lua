local status, treesitter = pcall(require, "treesitter")
if not status then
	return
end

treesitter.setup({
	highlight = {
		enable = true,
	},
	indent = {
		enable = true
	},
	autotag = {
		enable = true,
	},
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"tsx",
		"yaml",
		"html",
		"css",
		"markdown",
		"bash",
		"lua",
		"vim",
		"dockerfile",
		"gitignore",
		"c",
		"cpp",
		"dart",
		"go",
		"java",
		"php",
		"python",
		"ruby",
		"rust",
		"scss",
		"sql",
	},
	auto_install = true,
})
