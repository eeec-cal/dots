require("core.keymaps")
require("core.plugins")
require("core.plugin_config")
local cmp = require("cmp")
local luasnip = require("luasnip")
require("mini.pairs").setup()
cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},

	-- i love neovim sm

	mapping = cmp.mapping.preset.insert({
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<C-A-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-A-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<Tab>"] = cmp.mapping.confirm({ select = false }),
	}),

	sources = cmp.config.sources({
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
	}),
})
require("luasnip").setup()

local logo = [[
          __    _____                          .___                  .___      
  _______/  |__/ ____\_ __  _____    ____    __| _/   ____  ____   __| _/____  
 /  ___/\   __\   __\  |  \ \__  \  /    \  / __ |  _/ ___\/  _ \ / __ |/ __ \ 
 \___ \  |  |  |  | |  |  /  / __ \|   |  \/ /_/ |  \  \__(  <_> ) /_/ \  ___/ 
/____  > |__|  |__| |____/  (____  /___|  /\____ |   \___  >____/\____ |\___  >
     \/                          \/     \/      \/       \/           \/    \/ 
]]

logo = string.rep("\n", 7) .. logo .. "\n\n"

-- require("core.plugin_config.noice")
-- require("mini.animate").setup()
-- require("veil").setup({
-- 	mode = "dashboard",
-- 	keymap = {
-- 		hide = "<Esc>",
-- 	},
	
-- })

-- staline

require("pywal").setup()

require('staline').setup({
	defaults = {
		expand_null_ls = false,
		left_separator  = "",
		right_separator = "",
		full_path       = true,
		line_column     = "%l/%L   %c   %p%% ",
		fg              = "#000000",
		bg              = "none",
		inactive_color  = "#303030",
		inactive_bgcolor = "none",
		true_colors     = false,
		font_active     = "none",
		mod_symbol      = " 󰏫 ",
		lsp_client_symbol = " ",
		branch_symbol   = " ",
		cool_symbol     = " ",
		null_ls_symbol = "",
	},
	mode_icons = {
		n = "󰋜 ",
		i = "󰏫 ",
		c = " ",
		["v"] = "󰈈 ",
		["V"] = " ",
	[""] = " ",
	},
	mode_colors = {
		n = "#897e6f",
		i = "#676961",
		c = "#2c5b5b",
		v = "#8a9295"
	},
	special_table = {
		["neo-tree"] = { 'Neotree', ' ' },
		packer = { 'Packer', '󰏖 ' },
		-- ["veil"] = { ' ', ' ' },
		["symbols-outline"] = { ' ', ' ' },
	},
})

-- barbecue

require("barbecue").setup({
	exclude_filetypes = { "neo-tree", "packer" }
})

-- hop

require('hop').setup({ keys = 'etovxqpdygfblzhckisuran' })

-- symbols-outline

require('symbols-outline').setup()

-- mini.indentscope

require("mini.indentscope").setup({
	symbol = "│"
})


-- lsp stuff


local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
mason.setup()
mason_lspconfig.setup({
	ensure_installed = {
		"lua_ls",
		"bashls",
		"pyright",
		"clangd",
		"rust_analyzer",
		"emmet_ls",
	},

	automatic_installation = true
})

local lspconfig = require("lspconfig")

local configs = lspconfig.configs

local cmp_nvim_lsp = require("cmp_nvim_lsp")
local keymap = vim.keymap

local capabilities = cmp_nvim_lsp.default_capabilities()

local on_attach = function() end

if not configs.clangd then
	configs.clangd = {
		default_config = {
			cmd = { "clangd" },
			filetypes = { 'c++' },
		},
	}
end
lspconfig.clangd.setup({
	on_attach = on_attach
})

if not configs.pyright then
	configs.pyright = {
		default_config = {
			cmd = { "pyright" },
			filetypes = { 'python' },
		},
	}
end
lspconfig.pyright.setup({
	on_attach = on_attach
})

if not configs.lua_ls then
	configs.lua_ls = {
		default_config = {
			cmd = { "lua_ls" },
			filetypes = { 'lua' },
		},
	}
end
lspconfig.lua_ls.setup({
	on_attach = on_attach
})

if not configs.bashls then
	configs.bashls = {
		default_config = {
			cmd = { "bashls" },
			filetypes = { 'bash' },
		},
	}
end
lspconfig.bashls.setup({
	on_attach = on_attach
})

if not configs.rust_analyzer then
	configs.rust_analyzer = {
		default_config = {
			cmd = { "rust_analyzer" },
			filetypes = { 'rust' },
		},
	}
end
lspconfig.rust_analyzer.setup({
	on_attach = on_attach
})

if not configs.zls then
	configs.zls = {
		default_config = {
			cmd = { "zls" },
			filetypes = { 'zig' },
		},
	}
end
lspconfig.zls.setup({
	on_attach = on_attach
})

if not configs.jdtls then
	configs.jdtls = {
		default_config = {
			cmd = { "jdtls" },
			filetypes = { 'java' },
		},
	}
end
lspconfig.jdtls.setup({
	on_attach = on_attach
})

if not configs.solidity then
	configs.solidity = {
		default_config = {
			cmd = { "solidity" },
			filetypes = { 'solidity',}
		},
	}
end
lspconfig.solidity.setup({
	on_attach = on_attach
})




require("mini.animate").setup()

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require('nvim-tree').setup()
require("nvim-web-devicons").setup()
-- require('vim-matchup').setup()
-- require('matchit').setup({})
-- require("lualine").setup({
-- 	options = {
-- 		theme = "catppuccin-mocha",
-- 		disabled_filetypes = { "veil", "packer", "neo-tree" },
-- 	},
-- })
--
-- require("windline").setup({
-- 	colors_name = function()
-- 		return {
-- 			NormalBg = '#000000'
-- 		}
-- 	end
-- })
-- require("wlsample.wind")

require("core.plugin_config.completions")
-- require('treesj')

-- require("comfortable-motion")

require("notify").setup({
	background_colour = "#000000",
})

-- require("telescope").load_extension("playlist")
require("telescope").load_extension("glyph")

-- require("telescope-playlist").setup()

vim.cmd([[:colorscheme tokyonight-night]])

-- Variables

vim.g.wintabs_ui_modified = " 󰏫 "
vim.g.wintabs_ui_readonly = " 󰏮 "

-- vim.g.veil_enabled = 1
vim.o.timeout = true
vim.o.timeoutlen = 300

require("which-key").setup({})



