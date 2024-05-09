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

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'AlphaTechnolog/pywal.nvim'
	use 'ellisonleao/gruvbox.nvim'
	-- use 'willothy/veil.nvim'
	use 'tpope/vim-surround'
	use 'tpope/vim-commentary'
	use 'ap/vim-css-color'
	-- use 'ryanoasis/vim-devicons'
	-- use 'rstacruz/vim-closer'
	-- use 'jiangmiao/auto-pairs'
	use 'zefei/vim-wintabs'
	use 'zefei/vim-wintabs-powerline'
	use 'arcticicestudio/nord-vim'
	use	'echasnovski/mini.animate'
	-- use 'nvim-tree/nvim-tree.lua'
	vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = { 
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		}
	}

	-- use 'echasnovski/mini.starter'

	use 'nvim-tree/nvim-web-devicons'
	use 'nvim-treesitter/nvim-treesitter'
	use 'ryanoasis/vim-devicons'
	use {
		'nvim-telescope/telescope.nvim',
		-- tag = '0.1.6',
		requires = {
			{'nvim-lua/plenary.nvim'},
		},
	}

	use 'rcarriga/nvim-notify'

	-- use {
	-- 	-- 'folke/noice.nvim',
	-- 	requires = {
	-- 		{
	-- 			'MunifTanjim/nui.nvim',
	-- 			'rcarriga/nvim-notify',
	-- 		},
	-- 	},
	-- }

	use {
			{
				"williamboman/mason.nvim",
				requires = {
					"williamboman/mason-lspconfig.nvim",
				}
			},
			-- "williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
	}

	use { "catppuccin/nvim", as = "catppuccin" }
	use 'tamton-aquib/staline.nvim'
	use({
		"utilyre/barbecue.nvim",
		tag = "*",
		requires = {
			"SmiteshP/nvim-navic",
		},
	})
	use {
		'phaazon/hop.nvim',
		branch = 'v2',
	}
	use 'simrat39/symbols-outline.nvim'
	use {
		{
			"hrsh7th/nvim-cmp",
			requires = {
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-path",
				"L3MON4D3/LuaSnip",
				"saadparwaiz1/cmp_luasnip",
				"rafamadriz/friendly-snippets",
			}
		},
		"hrsh7th/cmp-nvim-lsp",
	}
	
	use "folke/which-key.nvim"
	use 'lukas-reineke/indent-blankline.nvim'
	use 'echasnovski/mini.indentscope'
	use 'voldikss/vim-floaterm'
	use 'christoomey/vim-tmux-navigator'
	use 'ghassan0/telescope-glyph.nvim'
	-- use {
	-- 	'nvimdev/dashboard-nvim',
	-- 	event = 'VimEnter',
	-- 	config = function()
	-- 	require('dashboard').setup {
	-- 		-- config
	-- 	}
	-- 	end,
	-- 	requires = {'nvim-tree/nvim-web-devicons'}
	-- }
	use 'echasnovski/mini.pairs'
	use 'folke/tokyonight.nvim'
	use {
		'goolord/alpha-nvim',
		config = function ()
			require'alpha'.setup(require'alpha.themes.dashboard'.config)
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")




			-- Set header
			dashboard.section.header.val = {

				[[                                                                   ]],
				[[      ████ ██████           █████      ██                    ]],
				[[     ███████████             █████                            ]],
				[[     █████████ ███████████████████ ███   ███████████  ]],
				[[    █████████  ███    █████████████ █████ ██████████████  ]],
				[[   █████████ ██████████ █████████ █████ █████ ████ █████  ]],
				[[ ███████████ ███    ███ █████████ █████ █████ ████ █████ ]],
				[[██████  █████████████████████ ████ █████ █████ ████ ██████]],
			}

			dashboard.section.buttons.val = {
				dashboard.button( "f", "󰱽                   File Search                ", ":Telescope find_files<CR>"),
				dashboard.button( "c", "                     Config                   ", ":e ~/.config/nvim/init.lua<CR>"),
				dashboard.button( "p", "                  Plugin Config               ", ":e ~/.config/nvim/lua/core/plugins.lua<CR>"),
				dashboard.button( "q", "󰩈                     Escape.                  ", ":q<CR>"),
				dashboard.button( "m", "                      Music                   ", ":PlayMusic /home/tor/Music/<CR>:MusicShuffle<CR>"),
				dashboard.button( "h", "󰋖                   Command Help               ", ":Telescope help_tags<CR>"),
				dashboard.button( "r", "󰑓                   Recent Files               ", ":Telescope oldfiles<CR>"),
			}

		end,
		use {
			'Saverio976/music.nvim',
			run = ':MusicInstall',
			requires = { 'voldikss/vim-floaterm' }
		},
		-- use 'qtkittyy/superspoon.nvim'
	}
	if packer_bootstrap then
		require('packer').sync()
	end
end) 
