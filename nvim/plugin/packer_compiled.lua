-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/tor/.cache/nvim/packer_hererocks/2.1.1702233742/share/lua/5.1/?.lua;/home/tor/.cache/nvim/packer_hererocks/2.1.1702233742/share/lua/5.1/?/init.lua;/home/tor/.cache/nvim/packer_hererocks/2.1.1702233742/lib/luarocks/rocks-5.1/?.lua;/home/tor/.cache/nvim/packer_hererocks/2.1.1702233742/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/tor/.cache/nvim/packer_hererocks/2.1.1702233742/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n�\17\0\0\t\0 \1B6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\3\0B\1\2\0029\2\5\0019\2\6\0025\3\b\0=\3\a\0029\2\5\0019\2\t\0024\3\b\0009\4\n\1'\6\v\0'\a\f\0'\b\r\0B\4\4\2>\4\1\0039\4\n\1'\6\14\0'\a\15\0'\b\16\0B\4\4\2>\4\2\0039\4\n\1'\6\17\0'\a\18\0'\b\19\0B\4\4\2>\4\3\0039\4\n\1'\6\20\0'\a\21\0'\b\22\0B\4\4\2>\4\4\0039\4\n\1'\6\23\0'\a\24\0'\b\25\0B\4\4\2>\4\5\0039\4\n\1'\6\26\0'\a\27\0'\b\28\0B\4\4\2>\4\6\0039\4\n\1'\6\29\0'\a\30\0'\b\31\0B\4\4\0?\4\0\0=\3\a\2K\0\1\0\28:Telescope oldfiles<CR>7󰑓                   Recent Files               \6r\29:Telescope help_tags<CR>7󰋖                   Command Help               \6h5:PlayMusic /home/tor/Music/<CR>:MusicShuffle<CR>6                      Music                   \6m\v:q<CR>7󰩈                     Escape.                  \6q/:e ~/.config/nvim/lua/core/plugins.lua<CR>6                  Plugin Config               \6p#:e ~/.config/nvim/init.lua<CR>6                     Config                   \6c\30:Telescope find_files<CR>7󰱽                   File Search                \6f\vbutton\fbuttons\1\t\0\0N                                                                   |      ████ ██████           █████      ██                    x     ███████████             █████                            �\1     █████████ ███████████████████ ███   ███████████  �\1    █████████  ███    █████████████ █████ ██████████████  �\1   █████████ ██████████ █████████ █████ █████ ████ █████  �\1 ███████████ ███    ███ █████████ █████ █████ ████ █████ �\1██████  █████████████████████ ████ █████ █████ ████ ██████\bval\vheader\fsection\vconfig\27alpha.themes.dashboard\nsetup\nalpha\frequire\15����\4\0" },
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["barbecue.nvim"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/barbecue.nvim",
    url = "https://github.com/utilyre/barbecue.nvim"
  },
  catppuccin = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["hop.nvim"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.animate"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/mini.animate",
    url = "https://github.com/echasnovski/mini.animate"
  },
  ["mini.indentscope"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/mini.indentscope",
    url = "https://github.com/echasnovski/mini.indentscope"
  },
  ["mini.pairs"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/mini.pairs",
    url = "https://github.com/echasnovski/mini.pairs"
  },
  ["music.nvim"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/music.nvim",
    url = "https://github.com/Saverio976/music.nvim"
  },
  ["neo-tree.nvim"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nord-vim"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/nord-vim",
    url = "https://github.com/arcticicestudio/nord-vim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["pywal.nvim"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/pywal.nvim",
    url = "https://github.com/AlphaTechnolog/pywal.nvim"
  },
  ["staline.nvim"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/staline.nvim",
    url = "https://github.com/tamton-aquib/staline.nvim"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope-glyph.nvim"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/telescope-glyph.nvim",
    url = "https://github.com/ghassan0/telescope-glyph.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-css-color"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/vim-css-color",
    url = "https://github.com/ap/vim-css-color"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-wintabs"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/vim-wintabs",
    url = "https://github.com/zefei/vim-wintabs"
  },
  ["vim-wintabs-powerline"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/vim-wintabs-powerline",
    url = "https://github.com/zefei/vim-wintabs-powerline"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/tor/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n�\17\0\0\t\0 \1B6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\3\0B\1\2\0029\2\5\0019\2\6\0025\3\b\0=\3\a\0029\2\5\0019\2\t\0024\3\b\0009\4\n\1'\6\v\0'\a\f\0'\b\r\0B\4\4\2>\4\1\0039\4\n\1'\6\14\0'\a\15\0'\b\16\0B\4\4\2>\4\2\0039\4\n\1'\6\17\0'\a\18\0'\b\19\0B\4\4\2>\4\3\0039\4\n\1'\6\20\0'\a\21\0'\b\22\0B\4\4\2>\4\4\0039\4\n\1'\6\23\0'\a\24\0'\b\25\0B\4\4\2>\4\5\0039\4\n\1'\6\26\0'\a\27\0'\b\28\0B\4\4\2>\4\6\0039\4\n\1'\6\29\0'\a\30\0'\b\31\0B\4\4\0?\4\0\0=\3\a\2K\0\1\0\28:Telescope oldfiles<CR>7󰑓                   Recent Files               \6r\29:Telescope help_tags<CR>7󰋖                   Command Help               \6h5:PlayMusic /home/tor/Music/<CR>:MusicShuffle<CR>6                      Music                   \6m\v:q<CR>7󰩈                     Escape.                  \6q/:e ~/.config/nvim/lua/core/plugins.lua<CR>6                  Plugin Config               \6p#:e ~/.config/nvim/init.lua<CR>6                     Config                   \6c\30:Telescope find_files<CR>7󰱽                   File Search                \6f\vbutton\fbuttons\1\t\0\0N                                                                   |      ████ ██████           █████      ██                    x     ███████████             █████                            �\1     █████████ ███████████████████ ███   ███████████  �\1    █████████  ███    █████████████ █████ ██████████████  �\1   █████████ ██████████ █████████ █████ █████ ████ █████  �\1 ███████████ ███    ███ █████████ █████ █████ ████ █████ �\1██████  █████████████████████ ████ █████ █████ ████ ██████\bval\vheader\fsection\vconfig\27alpha.themes.dashboard\nsetup\nalpha\frequire\15����\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
