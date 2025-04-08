-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- lua/plugins/rose-pine.lua
	use({
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end})

	use('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')

	use {
		'VonHeikemen/lsp-zero.nvim',
			requires = {
				-- LSP support
				{'neovim/nvim-lspconfig'},
				{'williamboman/mason.nvim'},
				{'williamboman/mason-lspconfig.nvim'},

				-- Autocompletion
				{'hrsh7th/nvim-cmp'},
				{'hrsh7th/cmp-buffer'},
				{'hrsh7th/cmp-path'}, 
				{'saadparwaiz1/cmp_luasnip'},
				{'hrsh7th/cmp-nvim-lsp'},
				{'hrsh7th/cmp-nvim-lua'},

				-- Snippets
				{'L3MON4D3/LuaSnip'},
				{'rafamadriz/friendly-snippets'},
			}
		}

	-- Linter plugin
	use {
		'mfussenegger/nvim-lint',
		config = function()
			require("lint").linters_by_ft = {
				javascript = { "quick-lint-js" },
				python = { "pylint" },
				html = { "htmlhint" },
				css = { "stylelint" },
			}

			-- Run linter on file save
			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				callback = function()
					require("lint").try_lint()
				end,
			})
		end
	}
    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
end)
<<<<<<< HEAD
=======

>>>>>>> 45d9f36 (changed function name from colorMyPencils to bgrm)
