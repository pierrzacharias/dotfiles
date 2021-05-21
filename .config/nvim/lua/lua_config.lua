-- --------------------------------------------------------
-- Neovim lua configuration
-- --------------------------------------------------------

-- ----------------- theme ------------------------------------------------- "
vim.g.material_style = 'oceanic'
vim.g.material_italic_comments=true
vim.g.material_italic_keywords=true
vim.g.material_italic_functions=true
vim.g.material_italic_variables=true
vim.g.material_contras=true
vim.g.material_borders=true
vim.g.material_disable_background = true
require('material').set()

-- ----------------- statusline -------------------------------------------- "
local custom_gruvbox = require'lualine.themes.gruvbox'
	-- Chnage the background of lualine_c section for normal mode
custom_gruvbox.normal.c.bg = '#263238'
-- custom_gruvbox.normal.b.bg = '#090B10'
-- custom_gruvbox.normal.c.bg = '#090B10'
-- custom_gruvbox.normal.a.fg = '607D8B'
-- custom_gruvbox.normal.b.fg = '607D8B'
-- custom_gruvbox.normal.c.fg = '607D8B'

function lspStatus()
  if not vim.tbl_isempty(vim.lsp.buf_get_clients(0)) then
      local error_count = vim.lsp.diagnostic.get_count(0, 'Error')
      local warning_count = vim.lsp.diagnostic.get_count(0, 'Warning')
      local info_count = vim.lsp.diagnostic.get_count(0, 'Information') +  vim.lsp.diagnostic.get_count(0, 'Hint') 
      return ': ' .. error_count .. ': ' .. warning_count .. ': ' .. info_count
  else
      return ''
  end
end

require'lualine'.setup {
	options = {theme=custom_gruvbox},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch'},
		lualine_c = {
			'filename',
			{
				'diagnostics',
				sources = {'nvim_lsp'},
				symbols = {error = ' ', warn = ' ', info = ' '},
				color_error = "#db4b4b",
				color_warn = "#e0af68",
				color_info = "#0db9d7",
			}
		},
		lualine_x = {
			'encoding',
			'fileformat',
			'filetype'
		},
		lualine_y = {'progress'},
		lualine_z = {'location'}
	}
}

--  ----------------- lsp --------------------------------------------------- "
local nvim_lsp=require('lspconfig')

-- add linters
-- nvim_lsp.efm.setup {}

-- Use an on_attach function to only map the following keys 
-- after the language server attaches to the current buffer
local on_attach=function(client, bufnr)
	local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
	local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
	--Enable completion triggered by <c-x><c-o>
	buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
	-- Mappings.
	local opts={noremap=true, silent=true }
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
	buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
	buf_set_keymap('n', 'gh', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
	buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
	buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
	buf_set_keymap('n', '<Leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
	buf_set_keymap('n', '<Leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
	buf_set_keymap('n', '<Leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
	buf_set_keymap('n', '<Leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
	buf_set_keymap('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
	buf_set_keymap('n', '<Leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
	buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
	buf_set_keymap('n', '<Leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
	buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
	buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
	buf_set_keymap('n', '<Leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
	buf_set_keymap("n", "<Leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
end
-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
-- local servers={ "rust_analyzer", "tsserver" }
-- for _, lsp in ipairs(servers) do
-- 	nvim_lsp[lsp].setup { on_attach=on_attach }
-- end
require'lspconfig'.pylsp.setup{on_attach=require'completion'.on_attach}

-- replace the default lsp diagnostic letters with prettier symbols
vim.fn.sign_define("LspDiagnosticsSignError", {text = "", numhl = "LspDiagnosticsDefaultError"})
vim.fn.sign_define("LspDiagnosticsSignWarning", {text = "", numhl = "LspDiagnosticsDefaultWarning"})
vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "", numhl = "LspDiagnosticsDefaultInformation"})
vim.fn.sign_define("LspDiagnosticsSignHint", {text = "", numhl = "LspDiagnosticsDefaultHint"})


-- remove underlying on diagnostic
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics,
	{
		underline = false,
		update_in_insert = true,
		virtual_text = {
			underline=false,
			spacing = 2,
			severity_limit = "Error"
		}
	}
)

-- show diagnostic virtual test on hover
-- vim.cmd [[autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()]]
-- vim.cmd [[autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()]]

-- show virtual text on hover
-- vim.api.nvim_set_keymap("n", "gn", "vim.lsp.diagnostic.goto_next()<CR>", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n", "gb", "vim.lsp.diagnostic.goto_prev()<CR>", {noremap = true, silent = true})

-- LSP color -----------------------------------------------------------------
-- require("lsp-colors").setup({
--   Error = "#db4b4b",
--   Warning = "#e0af68",
--   Information = "#0db9d7",
--   Hint = "#10B981"
-- })

-- trouble ---------------------------------------------------------------
require("trouble").setup {}

-- symbol lsp ---------------------------------------------------------------
-- vim.g.symbols_outline = {
--     highlight_hovered_item = false,
--     show_guides = true,
--     auto_preview = false, -- experimental
--     position = 'right',
--     keymaps = {
--         close = "<Esc>",
--         goto_location = "<Cr>",
--         focus_location = "o",
--         hover_symbol = "<C-space>",
--         rename_symbol = "r",
--         code_actions = "a",
--     },
--     lsp_blacklist = {},
-- }


-- blacklines
-- vim.cmd "hi IndentBlanklineChar guifg=#383c44"

-- misc --
-- vim.cmd "hi LineNr guifg=#42464e"
-- vim.cmd "hi Comment guifg=#42464e"
-- vim.cmd "hi NvimInternalError guifg=#f9929b"
-- vim.cmd "hi VertSplit guifg=#2a2e36"
-- vim.cmd "hi EndOfBuffer guifg=#1e222a"

-- Pmenu
-- vim.cmd "hi PmenuSel guibg=#98c379"
-- vim.cmd "hi Pmenu  guibg=#282c34"
-- vim.cmd "hi PmenuSbar guibg =#353b45"
-- vim.cmd "hi PmenuThumb guibg =#81A1C1"

-- inactive statuslines as thin splitlines
-- vim.cmd("highlight! StatusLineNC gui=underline guifg=#383c44")

-- line n.o
-- vim.cmd "hi clear CursorLine"
-- vim.cmd "hi cursorlinenr guifg=#abb2bf"

-- git signs ---
-- vim.cmd "hi DiffAdd guifg=#81A1C1 guibg = none"
-- vim.cmd "hi DiffChange guifg =#3A3E44 guibg = none"
-- vim.cmd "hi DiffModified guifg = #81A1C1 guibg = none"

-- NvimTree
-- vim.cmd "hi NvimTreeFolderIcon guifg = #61afef"
-- vim.cmd "hi NvimTreeFolderName guifg = #61afef"
-- vim.cmd "hi NvimTreeIndentMarker guifg=#383c44"
-- vim.cmd "hi NvimTreeNormal guibg=#1b1f27"
-- vim.cmd "hi NvimTreeVertSplit guifg=#1e222a"
-- vim.cmd "hi NvimTreeRootFolder guifg=#f9929b"

-- telescope
-- vim.cmd "hi TelescopeBorder   guifg=#2a2e36"
-- vim.cmd "hi TelescopePromptBorder   guifg=#2a2e36"
-- vim.cmd "hi TelescopeResultsBorder  guifg=#2a2e36"
-- vim.cmd "hi TelescopePreviewBorder  guifg=#525865"

-- LspDiagnostics ---

-- error / warnings
-- vim.cmd "hi LspDiagnosticsSignError guifg=#f9929b"
-- vim.cmd "hi LspDiagnosticsVirtualTextError guifg=#BF616A"
-- vim.cmd "hi LspDiagnosticsSignWarning guifg=#EBCB8B"
-- vim.cmd "hi LspDiagnosticsVirtualTextWarning guifg=#EBCB8B"

-- info
-- vim.cmd "hi LspDiagnosticsSignInformation guifg=#A3BE8C"
-- vim.cmd "hi LspDiagnosticsVirtualTextInformation guifg=#A3BE8C"

-- hint
-- vim.cmd "hi LspDiagnosticsSignHint guifg=#b6bdca"
-- vim.cmd "hi LspDiagnosticsVirtualTextHint guifg=#b6bdca"



-- start colorizer
require('colorizer').setup()


---------------------------------------------------------------------------------
---- nvim-bufferline
---- ----------------------------------------------------------------------------
--require"bufferline".setup{
--	options = {
--			view = "multiwindow",
--			numbers = "buffer_id",
--			-- number_style = "superscript" | "" | { "none", "subscript" }, -- buffer_id at index 1, ordinal at index 2
--			mappings = true,
--			buffer_close_icon= "",
--			modified_icon = "●",
--			close_icon = "",
--			left_trunc_marker = "",
--			right_trunc_marker = "",
--			max_name_length = 18,
--			max_prefix_length = 15, -- prefix used when a buffer is deduplicated
--			tab_size = 18,
--			diagnostics = "nvim_lsp",
--			diagnostics_indicator = function(count, level)
--				return "("..count..")"
--			end,
--			show_buffer_icons = true,
--			show_buffer_close_icons = true,
--			show_close_icon = false,
--			show_tab_indicators = true,
--			persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
--			-- can also be a table containing 2 custom separators
--			-- [focused and unfocused]. eg: { "|", "|" }
--			separator_style = "thin",
--			enforce_regular_tabs = true,
--			always_show_bufferline = true,
--			offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left"}},
--	}
--}

-------------------------------------------------------------------------------
-- LUA TREE
-- ----------------------------------------------------------------------------
local tree_cb = require('nvim-tree.config').nvim_tree_callback
vim.g.nvim_tree_bindings = {
	["<CR>"] = ".YourVimFunction()<cr>",
	["x"] = ":lua require'some_module'.some_function()<cr>",
	["<CR>"]           = tree_cb("edit"),
	["o"]              = tree_cb("edit"),
	["<2-LeftMouse>"]  = tree_cb("edit"),
	["<2-RightMouse>"] = tree_cb("cd"),
	["]"]          = tree_cb("cd"),
	["v"]          = tree_cb("vsplit"),
	["x"]          = tree_cb("split"),
	["t"]          = tree_cb("tabnew"),
	["<"]              = tree_cb("prev_sibling"),
	[">"]              = tree_cb("next_sibling"),
	["u"]           = tree_cb("close_node"),
	["<S-CR>"]         = tree_cb("close_node"),
	["<Tab>"]          = tree_cb("preview"),
	["I"]              = tree_cb("toggle_ignored"),
	["H"]              = tree_cb("toggle_dotfiles"),
	["R"]              = tree_cb("refresh"),
	["a"]              = tree_cb("create"),
	["d"]              = tree_cb("remove"),
	["r"]              = tree_cb("rename"),
	["<C-r>"]          = tree_cb("full_rename"),
	["x"]              = tree_cb("cut"),
	["c"]              = tree_cb("copy"),
	["p"]              = tree_cb("paste"),
	["[c"]             = tree_cb("prev_git_item"),
	["]c"]             = tree_cb("next_git_item"),
	["-"]              = tree_cb("dir_up"),
	["q"]              = tree_cb("close"),
}
-- require'nvim-tree.view'.View.width = 50

