local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	use("wbthomason/packer.nvim")

	use("nvim-lua/plenary.nvim")

	-- Colorscheme
	-- use("rose-pine/neovim")
	use("catppuccin/nvim")

	-- Transparent background
	use("xiyaowong/transparent.nvim")

	-- Comment
	use("numToStr/Comment.nvim")

	-- File explorer
	use("nvim-tree/nvim-tree.lua")

	-- Icons
	use("kyazdani42/nvim-web-devicons")

	-- Statusline
	use("nvim-lualine/lualine.nvim")

	-- Telescope
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope.nvim", tag = "0.1.x" })

	-- Snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- Autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- LSP servers manager
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- LSP servers configurer
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("jose-elias-alvarez/typescript.nvim")
	use("onsails/lspkind.nvim")

	-- 42 Header
	use("42Paris/42Header")

	-- Autoclose
	use("m4xshen/autoclose.nvim")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function ()
			require("nvim-treesitter.install").update({ with_sync = true })
		end
	})

	if packer_bootstrap then
		require("packer").sync()
	end
end)
