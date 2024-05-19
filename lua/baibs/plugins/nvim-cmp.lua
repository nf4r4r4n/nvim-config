local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
	return
end

local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
	return
end

local lspkind_status, lspkind = pcall(require, "lspkind")
if not lspkind_status then
	return
end

require("luasnip/loaders/from_vscode").lazy_load()

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
	snippet = {
		-- expend = function(args)
		-- 	luasnip.lsp_expand(args.body)
		-- end
		expand = function(args)
			unpack = unpack or table.unpack
			local line_num, col = unpack(vim.api.nvim_win_get_cursor(0))
			local line_text = vim.api.nvim_buf_get_lines(0, line_num - 1, line_num, true)[1]
			local indent = string.match(line_text, '^%s*')
			local replace = vim.split(args.body, '\n', true)
			local surround = string.match(line_text, '%S.*') or ''
			local surround_end = surround:sub(col)

			replace[1] = surround:sub(0, col - 1)..replace[1]
			replace[#replace] = replace[#replace]..(#surround_end > 1 and ' ' or '')..surround_end
			if indent ~= '' then
				for i, line in ipairs(replace) do
					replace[i] = indent..line
				end
			end

			vim.api.nvim_buf_set_lines(0, line_num - 1, line_num, true, replace)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = false }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
	}),
	formatting = {
		format = lspkind.cmp_format({
			maxwidth = 50,
			ellipsis_char = "...",
		}),
	},
})
