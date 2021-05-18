-- --------------------------------------------------------
-- Neovim lua configuration
-- --------------------------------------------------------

-- ----------------- theme ------------------------------------------------- "
vim.g.material_style = 'oceanic'
vim.g.material_italic_comments = false
vim.g.material_italic_keywords = true
vim.g.material_italic_functions = true
vim.g.material_italic_variables = false
vim.g.material_contrast = true
vim.g.material_borders = true
vim.g.material_disable_background = true
require('material').set()

-- ----------------- statusline -------------------------------------------- "
require('lualine').setup {option={theme='material', extensions={'quickfix'}}}

--  ----------------- lsp --------------------------------------------------- "
local nvim_lsp=require('lspconfig')

-- add linters
--
nvim_lsp.efm.setup {}
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
local servers={ "pyright", "rust_analyzer", "tsserver" }
for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup { on_attach=on_attach }
end
-- replace the default lsp diagnostic letters with prettier symbols
vim.fn.sign_define("LspDiagnosticsSignError", {text = "", numhl = "LspDiagnosticsDefaultError"})
vim.fn.sign_define("LspDiagnosticsSignWarning", {text = "", numhl = "LspDiagnosticsDefaultWarning"})
vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "", numhl = "LspDiagnosticsDefaultInformation"})
vim.fn.sign_define("LspDiagnosticsSignHint", {text = "", numhl = "LspDiagnosticsDefaultHint"})

require'lspconfig'.pyls.setup{on_attach=require'completion'.on_attach}
require("trouble").setup {}

-- remove underlying on diagnostic
vim.lsp.handlers["textDocument/publishDiagnostics"] =
  vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = false,
    update_in_insert = true,
		virtual_text = {
			spacing = 10,
			prefix = "o",
		}
  })

-- show diagnostic virtual test on hover
-- vim.cmd [[autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()]]
-- vim.cmd [[autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()]]

-- show virtual text on hover
-- vim.api.nvim_set_keymap("n", "gn", "vim.lsp.diagnostic.goto_next()<CR>", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n", "gb", "vim.lsp.diagnostic.goto_prev()<CR>", {noremap = true, silent = true})

-- LSP color -----------------------------------------------------------------
require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})
-- symbol lsp ---------------------------------------------------------------
vim.g.symbols_outline = {
    highlight_hovered_item = true,
    show_guides = true,
    auto_preview = false, -- experimental
    position = 'right',
    keymaps = {
        close = "<Esc>",
        goto_location = "<Cr>",
        focus_location = "o",
        hover_symbol = "<C-space>",
        rename_symbol = "r",
        code_actions = "a",
    },
    lsp_blacklist = {},
}


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





