" Containe plugins to add and config
"
if has('win32')
    let g:plug_install_files = '$HOME\vimfiles\plugged'
endif
if has('unix')
    let g:plug_install_files = '$HOME/.vim/plugged'
endif
call plug#begin(g:plug_install_files)

" --------------------------------------------------------------
" ---------------------- To config -----------------------------
" --------------------------------------------------------------
Plug 'mhinz/vim-grepper'                              " grep tool
" Plug 'RRethy/vim-illuminate'                           " highlihgt word under cursor
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'mhinz/vim-mix-format'
" Plug 't9md/vim-textmanip'                             " move blocks of text easy
" Plug 't9md/vim-choosewin'
" Plug 'junegunn/vim-easy-align'                       " Helps alignment TODO: LEARN
" Plug 'sjl/gundo.vim'                                 " add undo tree
" --------------------------------------------------------------
" ---------------------- New -----------------------------------
" --------------------------------------------------------------
Plug 'jeetsukumaran/vim-buffergator'                   " buffer list
" Plug 'jeetsukumaran/ctrlp-pythonic.vim'
" Plug 'junegunn/loclisteasy-align'
"
" -------------------------------------------------------------
" not working on windows
" -------------------------------------------------------------
" Plug 'junegunn/fzf.vim'                              " fuzzy finder Plug 'junegunn/fzf.vim'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"
" --------------------------------------------------------------
" ---------------------- Navigation ----------------------------
" --------------------------------------------------------------
Plug 'jeetsukumaran/vim-indentwise'                    " motions based on indent
Plug 'Shougo/echodoc.vim'                              " echo funcitons doc
Plug 'fcpg/vim-shore'                                  " j/k to first non-blank
Plug 'chrisbra/NrrwRgn'                                " edit selection 
Plug 'moll/vim-bbye'                                   " quit buffers properly
Plug 'KKPMW/vim-sendtowindow'                          " send text to as windows
Plug 'dahu/vim-fanfingtastic'                          " Extend search with f,t, ...
Plug 'tpope/vim-speeddating'                           " Allow incrementing date like int
Plug 'mattn/vim-findroot'                              " Find root of project
Plug 'tpope/vim-surround'                              " add object with (, {, {, ...
Plug 'tpope/vim-commentary'                            " comment out
Plug 'majutsushi/tagbar'                               " show tags
Plug 'tpope/vim-endwise'                               " end certain structures automatically
Plug 'tpope/vim-repeat'                                " Allow to repeat with . some plugins actions
Plug 'svermeulen/vim-subversive'                       " replace content with register
Plug 'tpope/vim-unimpaired'                            " exchange lines relativvely
Plug 'AndrewRadev/sideways.vim'                        " move func args
"
" --------------------------------------------------------------------------- "
" --------------------- Session Management ---------------------------------- "
" --------------------------------------------------------------------------- "
" Plug 'vim-scripts/restore_view.vim'                 " replaced by vim-stay
" Plug 'mhinz/vim-startify'                              " start page for vim

" --------------------------------------------------------------------------- "
" ---------------------- IDE masterrace ------------------------------------- "
" --------------------------------------------------------------------------- "
" Plug 'MathSquared/vim-python-sql'
Plug 'preservim/nerdtree'                              " file explorer
Plug 'maxboisvert/vim-simple-complete'                 " as-you-type keyword completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}        " new community driven completion engine
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}           " async executions
" Plug 'dense-analysis/ale'                            " syntax checking and semantic errors
" Plug 'https://github.com/tpope/vim-endwise'          " end certain structures automatically
" Plug 'https://github.com/romainl/vim-qf'             " help with the quickfix lists
" Plug 'antoinemadec/coc-fzf'                          " integrate fzf with coc.vim
" Plug 'westurner/venv.vim'
"
" --------------------------------------------------------------
" ---------------------- git -----------------------------------
" --------------------------------------------------------------
Plug 'tpope/vim-fugitive'                              " git integration plugin
Plug 'rbong/vim-flog'                                  " See git branches
" Plug 'https://github.com/airblade/vim-gitgutter'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'rbong/vim-flog'                                " Commit viewer
"
" --------------------------------------------------------------
" ---------------------- run in vim ----------------------------
" --------------------------------------------------------------
" Plug 'sillybun/vim-repl'                             " python terminal
" Plug 'https://github.com/gotcha/vimpdb'
" Plug 'https://github.com/puremourning/vimspector'    " A debugger in vim for multiples languages
" Plug 'https://github.com/thinca/vim-quickrun'          " Run python and others easely
" Plug 'puremourning/vimspector'                       " A debugger in vim for multiples languages
" Plug 'romainl/vim-qf'                                " help with the quickfix lists
" Plug 'wincent/terminus'                              " send text to as windows
" Plug 'sillybun/vim-repl'                             " python terminal
"
" --------------------------------------------------------------
"- ---------------------- Python -------------------------------
" --------------------------------------------------------------
Plug 'jmcantrell/vim-virtualenv'                       " Tool for python venv
Plug 'mgedmin/python_open_module.vim'                  " Python standard library source code
Plug 'FooSoft/vim-argwrap'                             " wrap functions args
Plug 'kkoomen/vim-doge'                                " Docstring generator
" Plug 'tell-k/vim-autopep8'                           " autoformat python
" Plug 'wincent/terminus'                              " send text to as windows
" Plug 'ivanov/vim-ipython' 
"
" --------------------------------------------------------------
" ---------------------- Objects -------------------------------
" --------------------------------------------------------------
Plug 'wellle/targets.vim'                              " Better objects
Plug 'michaeljsmith/vim-indent-object'                 " text object based on indentation levels.
Plug 'kana/vim-textobj-user'                           " add new text objects
Plug 'jeetsukumaran/vim-pythonsense'                   " add python objects (it works !!)
" Plug 'kana/vim-textobj-entire'                       " text object for the all buffer
" Plug 'ColinKennedy/vim-textobj-block-party'          " text objects and motions for Python required +python
"
" --------------------------------------------------------------
" ---------------------- Tags ----------------------------------
" --------------------------------------------------------------
Plug 'skywind3000/gutentags_plus'                      " help to generate tags
" Plug 'mgedmin/pytag.vim'                             " better tags for python
" Plug 'mgedmin/python-imports.vim'                    " Insert Python import statements computed from tags, bound to <F5>
" Plug 'universal-ctags/ctags'                         " help to generate tags
"
" --------------------------------------------------------------
" ---------------------- Theming -------------------------------
" --------------------------------------------------------------
Plug 'ayu-theme/ayu-vim'
Plug 'JMcKiern/vim-venter'                             " center a windows
Plug 'hrsh7th/vim-unmatchparen'                        " highlight unmatch surrounding
Plug 'altercation/vim-colors-solarized'                " color theme
Plug 'ryanoasis/vim-devicons'                          " add icon
Plug 'vim-airline/vim-airline'                         " add visual line
Plug 'vim-airline/vim-airline-themes'                  " theme for airline
Plug 'camspiers/animate.vim'                           " windows move animation
Plug 'luochen1990/rainbow'                             " rainbow parenthesis
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'                             " add visual indent
Plug 'psliwka/vim-smoothie'                            " Better scroll
" Plug 'miyakogi/conoline.vim'                           " highlights the line of the cursor
" Plug 'ipod825/war.vim'
" Plug 'camspiers/lens.vim'                              " resize windows
" Plug 'https://github.com/vim-scripts/fontzoom.vim'     " change font with +/-
" Plug 'troydm/zoomwintab.vim'                           " zoom on a tab
" Plug 'bluz71/vim-moonfly-statusline'                   " Minimal status bar
" Plug 'vim/killersheep'                                 " absolutely essential
" old themes:
" Plug 'https://github.com/nonetallt/vim-neon-dark'
" Plug 'morhetz/gruvbox'                                 " color theme
" Plug 'https://github.com/fcpg/vim-orbital'
" Plug 'https://github.com/ogdenwebb/emacs-kaolin-themes'
" Plug 'https://github.com/fcpg/vim-fahrenheit'

" --------------------------------------------------------------
" ---------------------- Snippets ------------------------------
" --------------------------------------------------------------
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
"
" --------------------------------------------------------------
" ---------------------- Latex ---------------------------------
" --------------------------------------------------------------
" Plug 'lervag/vimtex'                                 " Latex plugin
" Plug 'https://vimawesome.com/plugin/tex-fold'        " add-on for latex TODO
" Plug 'vim-grammarous'                                " Grammar corrections
"
" --------------------------------------------------------------
" ---------------------- Jupyter -------------------------------
" --------------------------------------------------------------
" Plug 'https://github.com/mattn/vim_kernel'
"
" --------------------------------------------------------------
" ---------------------- Markdown file -------------------------
" --------------------------------------------------------------
" tyru/vim-markdown
" https://github.com/superbrothers/vim-quickrun-markdown-gfm/blob/ea8c26c4980eb84ae2bdbc99c753fcbaad557395/README.md
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  } " preview for markdown files
"
" R https://github.com/tyru/R-Vim-runtime
"
" --------------------------------------------------------------
" ---------------------- Databases -----------------------------
" --------------------------------------------------------------
" https://github.com/tpope/vim-dadbod
" Plug 'Shougo/denite.nvim'        " file , buffers manager
" Plug 'tpope/vim-vinegar'
" Plug 'ncm2/float-preview.nvim/'
" mileszs/ack.vim                   " wrap grep tools in vim
" Plug 'vim-vdebug/vdebug'          "TODO : configure  https://github.com/camspiers/dotfiles/blob/master/files/.config/nvim/init.VimtexCompile
" Plug 'bkad/CamelCaseMotion'       " Motions for inside camel case
"
" --------------------------------------------------------------
" ---------------------- REMOVED -------------------------------
" --------------------------------------------------------------
" Plug 'tmhedberg/SimpylFold'
" Plug 'gotcha/vimpdb'
" Plug 'mattboehm/vim-unstack'      " open trace, don't  work :(
" Plug 'tpope/vim-dispatch'           " could be an alternative to quickrun
" Plug 'ervandew/supertab'
" Plug 'skywind3000/vim-auto-popmenu'
" Plug 'liuchengxu/vim-clap'


call plug#end()
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "

" --------------------------------------------------------------
"  Venter
" --------------------------------------------------------------
" let g:venter_use_textwidth=1
let g:venter_close_tab_if_empty=1
let g:venter_disable_vertsplit=v:true
" let g:venter_width=%columns/3
execute "set <M-m>=\em"
map <silent> <M-m> :VenterToggle<cr>

" --------------------------------------------------------------
"  SimpylFold
" --------------------------------------------------------------
let g:SimpylFold_docstring_preview=1
let g:SimpylFold_fold_docstring=0
nnoremap zs :SimpylFoldDocstrings<CR>
nnoremap ze :SimpylFoldDocstrings!<CR>

" --------------------------------------------------------------
" echo doc
" --------------------------------------------------------------
let g:echodoc#enable_at_startup=1

" --------------------------------------------------------------
" -------------------- buffergator ------------------------------------------ "
" --------------------------------------------------------------
let g:buffergator_viewport_split_policy='B'
let g:buffergator_autoexpand_on_split = 0

" --------------------------------------------------------------
" ------------------------- Indent  ----------------------------------------- "
" --------------------------------------------------------------
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=3
let g:indent_guides_auto_colors=0
" let g:indent_guides_start_level=2


" --------------------------------------------------------------
" Workspace
" --------------------------------------------------------------
" let g:workspace_create_new_tabs = 0  " enabled = 1 (default), disabled = 0
" let g:workspace_autosave_always = 1    " autosave to be always on
" let g:workspace_autocreate =1

" --------------------------------------------------------------
" gundo
" --------------------------------------------------------------
let g:gundo_prefer_python3 = has('python3')  " Unbreak broken default config
 
" --------------------------------------------------------------
" alpha dll
" --------------------------------------------------------------
" if has('win32')
"     autocmd BufReadPost * call libcallnr("vimtweak64.dll", "SetAlpha", 225)
"     autocmd BufReadPost * call libcallnr("vimtweak64.dll", "EnableMaximize", 1)
" endif

" --------------------------------------------------------------
" doc
" --------------------------------------------------------------
let g:doge_doc_standard_python = 'sphinx'
let g:doge_enable_mappings = 0
let g:doge_mapping = '<Leader>do'

"
" --------------------------------------------------------------
" rainbow
" --------------------------------------------------------------
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" --------------------------------------------------------------
" gitgutter
" --------------------------------------------------------------
let g:gitgutter_signs = 0
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'

" --------------------------------------------------------------
" tagbar
" --------------------------------------------------------------
let g:tagbar_compact = 1
let g:tagbar_show_tag_linenumbers = 1
let g:tagbar_singleclick = 1
let g:tagbar_show_linenumbers = 2
" let g:tagbar_iconchars = ["\u2ba9", "\u2bae"]
let g:tagbar_iconchars = ["🡲", "🡳"]
let g:tagbar_autoshowtag = 0
" let g:tagbar_scopestrs = {
" 		\    'class': "\uf0e8",
" 		\    'const': "\uf8ff",
" 		\    'constant': "\uf8ff",
" 		\    'enum': "\uf702",
" 		\    'field': "\uf30b",
" 		\    'func': "\uf794",
" 		\    'function': "\uf794",
" 		\    'getter': "\ufab6",
" 		\    'implementation': "\uf776",
" 		\    'interface': "\uf7fe",
" 		\    'map': "\ufb44",
" 		\    'member': "\uf02b",
" 		\    'method': "\uf6a6",
" 		\    'setter': "\uf7a9",
" 		\    'variable': "\uf71b",
" 		\ }

" https://www.reddit.com/r/vim/comments/d77t6j/guide_how_to_setup_ctags_with_gutentags_properly/
" let g:gutentags_modules = ['ctags', 'gtags_cscope'] "enable gtags module
let g:gutentags_modules = ['ctags'] "enable gtags module
let g:gutentags_project_root = ['.root']   " config project root markers.
let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
let g:gutentags_ctags_extra_args = [
      \ '--tag-relative=yes',
      \ '--fields=+ailmnS',
      \ ]
let g:tagbar_autoshowtag = 1
" let g:tagbar_previewwin_pos = "aboveleft"
command! MakeTags !ctags -R .
" generate databases in my cache directory, prevent gtags files polluting my project
let g:gutentags_ctags_exclude = [
			\ "*.min.js", "*.min.css", "build", "vendor", ".git",
			\ '*.tmp', '*.csproj.user', '*.cache', '*.pdb', '*.pyc',
			\ '*.class', '*.sln', "node_modules", '*.less', '*.scss',
			\ '*.exe', '*.dll', '*.mp3',  '*.ogg', '*.swp',
			\ '*.swo', '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png',
      \ '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz',
			\ '*.tar.bz2', '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx',
      \ "*.vim/bundle/*", "tags*" , "*.idea/*"]
" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_plus_switch = 1      " change focus to quickfix window after search
set previewheight=60                 " remap tag open in new split windows

" --------------------------------------------------------------
" pep8
" --------------------------------------------------------------
let g:autopep8_max_line_length=79
" let g:autopep8_ignore="E501,W293"
" let g:autopep8_disable_show_diff=1

" --------------------------------------------------------------
" indent
" --------------------------------------------------------------
let g:indentLine_color_term =22
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" let g:indentLine_char = "|"
" let g:indentLine_char = "-"
" let g:indentLine_char = ">"
" let g:indentLine_leadingSpaceChar = ' '
" let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_showFirstIndentLevel=0

" --------------------------------------------------------------
" animate
" --------------------------------------------------------------
let g:animate#duration = 200.0
let g:animate#easing_func = 'animate#ease_linear'

" --------------------------------------------------------------
" send to windows
" --------------------------------------------------------------
let g:sendtowindow_use_defaults=0
" nnoremap ml :SidewaysJumpRight<cr>

" --------------------------------------------------------------
" nerdtree
" --------------------------------------------------------------
" let g:miniBufExplMapWindowNavVim = 1
let g:webdevicons_enable_nerdtree = 0
" let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''
" let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" let g:NERDTreeNodeDelimiter="😀"       "smiley face
" let g:webdeviscons_conceal_nerdtree_breackets = 1
" let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" let g:WebDevIconsNerdTreeGitPluginForceVAling = 1

map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" let g:NERDTreeWinSize=40
" let g:NERDTreeAutoCenter=1
let g:NERDTreeHighlightCursorline=1
let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden=1
let g:NERDTreeShowLineNumbers=1   " display line number
let g:NERDTreeAutoDeleteBuffer=1
" let NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable='⮞'
let g:NERDTreeDirArrowCollapsible='⮟'
let NERDTreeStatusline=""
" autocmd FileType nerdtree setlocal signcolumn=no
" let g:NERDTreeGitStatusIndicatorMapCustom = {
"     \ "Modified"  : "Ξ",
"     \ "Staged"    : "Λ",
"     \ "Untracked" : "Φ",
"     \ "Renamed"   : "ρ",
"     \ "Unmerged"  : "Θ",
"     \ "Deleted"   : "Χ",
"     \ "Dirty"     : "Δ",
"     \ "Clean"     : "Γ",
"     \ 'Ignored'   : "Ι",
"     \ "Unknown"   : "?"
"     \ }
" Git gutter custom signs
" let g:gitgutter_sign_added = '+'
" let g:gitgutter_sign_modified = 'm'
" let g:gitgutter_sign_removed = '-'
" let g:NERDTreeGitStatusIndicatorMapCustom = {
                " \ 'Modified'  :'+',
                " \ 'Staged'    :'s',
                " \ 'Untracked' :'u',
                " \ 'Renamed'   :'r',
                " \ 'Unmerged'  :'═',
                " \ 'Deleted'   :'d',
                " \ 'Dirty'     :'✗',
                " \ 'Ignored'   :'☒',
                " \ 'Clean'     :'C',
                " \ 'Unknown'   :'?',
                " \ }"
" open a NERDTree automatically when vim starts up if no files were specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" " open NERDTree automatically when vim starts up on opening a directory
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" --------------------------------------------------------------
" submersive
" --------------------------------------------------------------
let g:subversivePromptWithCurrent=1
"let g:subversivePreserveCursorPosition=1 "cursor will not move when substitutions are applied

" --------------------------------------------------------------
" 
" --------------------------------------------------------------
let g:apc_enable_ft = {'*':1}
set cpt=.,k,w,b

" --------------------------------------------------------------
" ALE
" --------------------------------------------------------------
let g:ale_linters = {'python': ['pep8']}
let g:ale_fixers = {
    \   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}
let g:ale_fix_on_save = 1      " Set this variable to 1 to fix files when you save them.
" let g:ale_sign_error = 'X',
" let g:ale_sign_warning = "\u0394",
highlight ALEErrorSign ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE
highlight ALEWarningSign ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE
" :verbose hi ALEErrorSign
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
nmap <silent> zk <Plug>(ale_previous_wrap)
nmap <silent> zj <Plug>(ale_next_wrap)
let g:ale_set_quickfix = 1
" g:ale_python_auto_pipenv = 1 " Detect whether the file is inside a pipen
" See https://github.com/dense-analysis/ale/blob/master/doc/ale-python.txt
let g:ale_python_pylint_options = "--disable=C0301"  " Remove pylint error useless as long line

" --------------------------------------------------------------
" airline
" --------------------------------------------------------------
" -------------------- theme ------------------------------------------------ "
" let g:airline_theme = 'solarized_flood'
" let g:airline_theme = 'violet'
" let g:airline_theme = 'wombat'
" let g:airline_theme = 'gruvbox_undercurl'
let g:airline_theme = 'powerlineish'

" -------------------- general options -------------------------------------- "
let g:airline_inactive_collapse=0
let g:airline_inactive_alt_sep=1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_splits = 0
"  enable/disable displaying tab number in tabs mode. >
let g:airline#extensions#tabline#show_tab_nr = 0
" enable/disable displaying tab type (e.g. [buffers]/[tabs]) >
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#close_symbol = '×'
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#fnamemod = ':t' " show only file name on tabs
" let g:airline#extensions#tabline#buffer_min_count = 0   " show tabline only if there is more than 1 buffer
" let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" Show superindex numbers in tabline
" let g:airline#extensions#tabline#buffer_idx_mode = 1

let g:airline#extensions#tabline#buffer_nr_format = '%s:'
let g:airline#extensions#tabline#show_tab_type = 1

" let g:airline#themes#clean#palette = 1
" let g:airline_stl_path_style = 'short'
" let g:airline_detect_paste=1
" let g:airline_inactive_alt_sep=0
let g:airline#extensions#whitespace#checks = ['']
  let g:airline_skip_empty_sections = 1
"
" --------------- extensions ------------------------------------------------
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = 'f'
let g:airline#extensions#gutentags#enabled = 1
let g:airline#extensions#grepper#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1         " Enable virtualenv plugin
" let g:airline#extensions#fugitiveline#enabled = 0
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = 'coc error:'
let airline#extensions#coc#warning_symbol = 'W:'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
" let g:airline#extensions#ctrlspace#enabled = 1
let g:airline#extensions#localsearch#enabled = 0
let g:airline#extensions#searchcount#enabled = 0
"

	" ---------------------- symbols -------------------------------------------- "
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
" let g:airline_left_sep = "\uE0BC"
let g:airline_left_sep = " "
let g:airline_right_sep = " "
let g:airline_left_alt_sep = " | "  " 
let g:airline_right_alt_sep = "" " 
let g:airline_symbols.linenr= " "
  let g:airline_symbols.maxlinenr=''
let g:airline_symbols.dirty= ''
  let g:airline_symbols.maxlinenr = ''

" --------------------- sections -------------------------------------------- "
let g:airline#parts#ffenc#skip_expected_string=''   "   'utf-8[unix]'

let g:airline_section_c = airline#section#create([
			\ 'file',
			\ 'readonly'
			\ ])
let g:filetype=''
let g:airline_section_z = airline#section#create([
			\ '%l',
			\ '%{(" ")}' . "│" . " ",
			\ '%p',
			\ '%{(" ")}' . "│" . " ",
			\ '%c'
			\ ])
" \ 'maxlinenr',
let g:airline_section_y = airline#section#create([
			\ '%{("")}' . "│" . "",
			\ ])
let g:airline_section_warning = ''
" let g:airline_section_error = ''
let g:airline#extensions#default#layout = [
			\ ['a', 'b', 'y', 'x', 'c'],
			\ ['warning', 'error', 'z']
			\ ]
" replace with that in airline/theme.vim
" let a:palette[mode]['airline_error'] = [ '#d33682', '#002b36', 232, 160 ]
"
" function! MyPlugin(...)
"     if &filetype == 'MyPluginFileType'
"       let w:airline_section_a = airline#section#create(['-------------------'])
"       let w:airline_section_b = airline#section#create(['-------------------'])
"       let w:airline_section_y = airline#section#create(['-------------------'])
"       let w:airline_section_x = airline#section#create(['-------------------'])
"       let w:airline_section_z = airline#section#create(['-------------------'])
"       let g:airline_variable_referenced_in_statusline = 'foo'
"     endif
"   endfunction
"   call add_inactive_statusline_func('MyPlugin')

" ---------------- mapping tab ---------------------------------------------- "
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
" nmap <leader>- <Plug>AirlineSelectPrevTab
" nmap <leader>+ <Plug>AirlineSelectNextTab

" --------------------------------------------------------------
" vimtex
" --------------------------------------------------------------
let g:vimtex_enabled=1
"let g:vimtex_complete_recursive_bib=1
"let g:vimtex_fold_manual=1
"let g:vimtex_fold_enabled =1
"let g:vimtex_compiler_enabled=1
let g:livepreview_previewer = 'zathura'
let g:vimtex_view_general_viewer = 'zathura'
"let g:livepreview_engine = 'lualatex'
let g:vimtex_compiler_method = 'latexmk'
"let g:vimtex_compiler_latexmk_engines = 'lualatex'
" See $pdf_mode = 4 in .latexmk for lualatx
let g:vimtex_compiler_latexmk = {
    \ 'backend' : 'jobs',
    \ 'background' : 1,
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'options' : [
        \   '-shell-escape',
        \   '-silent',
        \   '-gg',
        \   '-lualatex'
    \ ],
    \}
    "\   '-verbose',
    "\   '-file-line-error',
    "\   '-synctex=1',
    "\   '-interaction=nonstopmode',
"
" To prevent conceal in LaTeX files
let g:tex_conceal = ''
let g:tex_flavor = 'latex'
" autocmd BufReadPost * " When editing a file, always jump to the last known cursor position.
"   \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
"   \ |   exe "normal! g`\""
"   \ | end

" --------------------------------------------------------------
" startify
" --------------------------------------------------------------
let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]
          " \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
let g:startify_session_before_save = [
        \ 'echo "Cleaning up before saving.."',
        \ 'silent! NERDTreeTabsClose'
        \ ]
let g:startify_files_number = 2
let g:webdevicons_enable_startify = 1
" let g:startify_session_autoload = 1
let g:startify_change_to_dir = 1
" let g:workspace_session_directory = $HOME . '/.cache/sessions/'

let g:startify_custom_footer = 'startify#pad(startify#fortune#cowsay())'
let g:startify_custom_footer = [
			\ '                                                                                                                                                                                                            ',
			\ '                        ▄▄                                       ▄▄                                                                      ▄▄                                       ▄▄                        ',
			\ '              ▄▄▄▀▀▀███▀▀▀█▄▄                          ▄▄▄▀▀▀███▀▀▀█▄▄                                                                ▄▄█▀▀▀███▀▀▀▄▄▄                          ▄▄█▀▀▀███▀▀▀▄▄▄              ',
			\ '        ▀▀████  ▄▄██▄▄▄▄▄▄▄▄▄▀▀▄▄                ▀▀████  ▄▄██▄▄▄▄▄▄▄▄▄▀▀▄▄                                                        ▄▄▀▀▄▄▄▄▄▄▄▄▄██▄▄  ████▀▀                ▄▄▀▀▄▄▄▄▄▄▄▄▄██▄▄  ████▀▀        ',
			\ '       ▄▄▀▄▄██▀   ▀██▀    ▄█▀    ▀▄             ▄▄▀▄▄██▀   ▀██▀    ▄█▀    ▀▄                                                    ▄▀    ▀█▄    ▀██▀   ▀██▄▄▀▄▄             ▄▀    ▀█▄    ▀██▀   ▀██▄▄▀▄▄       ',
			\ '      ████▀ ▄▀      ▀▀▀▀▀▀         ▀▄          ████▀ ▄▀      ▀▀▀▀▀▀         ▀▄                       ++                       ▄▀         ▀▀▀▀▀▀      ▀▄ ▀████          ▄▀         ▀▀▀▀▀▀      ▀▄ ▀████      ',
			\ '    ▄█ ▀▀▀▀▀ ▄▄▄▀▀▀▀▀▀▀▄▄▄▄ █▄      ▀▄       ▄█ ▀▀▀▀▀ ▄▄▄▀▀▀▀▀▀▀▄▄▄▄ █▄      ▀▄            /░░░░░░░░\++++  /░░░░░░░░\        ▄▀      ▄█ ▄▄▄▄▀▀▀▀▀▀▀▄▄▄ ▀▀▀▀▀ █▄       ▄▀      ▄█ ▄▄▄▄▀▀▀▀▀▀▀▄▄▄ ▀▀▀▀▀ █▄    ',
			\ '    █     ▄█▀▄▄▄▀▀▀▀       ▄█        ▀▄      █     ▄█▀▄▄▄▀▀▀▀       ▄█        ▀▄           \░░░░░░░░/++++++\░░░░░░░░/       ▄▀        █▄       ▀▀▀▀▄▄▄▀█▄     █      ▄▀        █▄       ▀▀▀▀▄▄▄▀█▄     █    ',
			\ '   █     █▀ ▀                         █     █     █▀ ▀                         █            |░░░░░░|++++++++/░░░░░/|        █                         ▀ ▀█     █     █                         ▀ ▀█     █   ',
			\ '   █    █▀                            █     █    █▀                            █            |░░░░░░|++++++/░░░░░/|          █                            ▀█    █     █                            ▀█    █   ',
			\ '   █▄                                ▄▀     █▄                                ▄▀           +|░░░░░░|++++/░░░░░/|+           ▀▄                                ▄█     ▀▄                                ▄█   ',
			\ '    █                               ▄█       █                               ▄█          +++|░░░░░░|++/░░░░░/|+++++          █▄                               █       █▄                               █    ',
			\ '     █                             ▄▀         █                             ▄▀         +++++|░░░░░░|/░░░░░░++++++++++         ▀▄                             █         ▀▄                             █     ',
			\ '      ▀▄                         ▄█▀           ▀▄                         ▄█▀            +++|░░░░░░░░░░/░░/ +░+░+░+░           ▀█▄                         ▄▀           ▀█▄                         ▄▀      ',
			\ '        ▀▄▄                   ▄▄▀                ▀▄▄                   ▄▄▀                 +|░░░░░░░░░░░░ +/░░░,░░░,\             ▀▄▄                   ▄▄▀                ▀▄▄                   ▄▄▀        ',
			\ '           ▀▀▄▄▄         ▄▄▄▀▀                      ▀▀▄▄▄         ▄▄▄▀▀                     |░░░░░░░//░░/+/░/+/░/|/░/                ▀▀▄▄▄         ▄▄▄▀▀                      ▀▀▄▄▄         ▄▄▄▀▀           ',
			\ '                 ▀▀▀█▀▀▀▀▀                                ▀▀▀█▀▀▀▀▀                         |░░░░░/|+/░/+/░/+/░/ /░/                     ▀▀▀▀▀█▀▀▀                                ▀▀▀▀▀█▀▀▀                 ',
			\ '                 █████                                    █████                             |░░░/|++/░/+/░/ /░/ /░/                         █████                                    █████                  ',
			\ '               ██   █ █                                 ██   █ █                            |░/|  /░░//░░//░░//░░░/                        █ █   ██                                 █ █   ██                ',
			\ '               █    ██  █                               █    ██  █                                   ++                                   █  ██    █                               █  ██    █               ',
			\ '              █    ██    █                             █    ██    █                                                                      █    ██    █                             █    ██    █              ',
			\ '            ██    ██      █                          ██    ██      █                                                                    █      ██    ██                          █      ██    ██            ',
			\ '           ▄█    ██        ██▄                      ▄█    ██        ██▄                                                              ▄██        ██    █▄                      ▄██        ██    █▄           ',
			\ '          ▄█    ██          █▄                     ▄█    ██          █▄                                                              ▄█          ██    █▄                     ▄█          ██    █▄          ',
			\ '                ██                                       ██                                                                                      ██                                       ██                ',
			\ ]
let g:startify_custom_header = 'startify#center(startify#fortune#cowsay())'
let g:startify_custom_header = [
			\ '                  ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄                   ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄              /░░░░░░░░\++++  /░░░░░░░░\          ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄                   ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄                  ',
			\ '                ▄▀            ▄       ▀▄               ▄▀            ▄       ▀▄            \░░░░░░░░/++++++\░░░░░░░░/        ▄▀            ▄       ▀▄               ▄▀            ▄       ▀▄                ',
			\ '                █            ▄█▄▄  ▄   █ ▄▄▄           █            ▄█▄▄  ▄   █ ▄▄▄         |░░░░░░|++++++/░░░░░/|           █            ▄█▄▄  ▄   █ ▄▄▄           █            ▄█▄▄  ▄   █ ▄▄▄            ',
			\ '         ▄▄▄▄▄  █      ▀    ▀█  ▀▄     █▀▀ ██   ▄▄▄▄▄  █      ▀    ▀█  ▀▄     █▀▀ ██       +|░░░░░░|++++/░░░░░/|+     ▄▄▄▄▄  █      ▀    ▀█  ▀▄     █▀▀ ██   ▄▄▄▄▄  █      ▀    ▀█  ▀▄     █▀▀ ██           ',
			\ '         ██▄▀██▄█   ▄       ██    ▀▀▀▀▀    ██   ██▄▀██▄█   ▄       ██    ▀▀▀▀▀    ██     +++|░░░░░░|++/░░░░░/|+++++   ██▄▀██▄█   ▄       ██    ▀▀▀▀▀    ██   ██▄▀██▄█   ▄       ██    ▀▀▀▀▀    ██           ',
			\ '          ▀██▄▀██        ▀ ██▀             ▀██   ▀██▄▀██        ▀ ██▀             ▀██  +++++|░░░░░░|/░░░░░░++++++++++  ▀██▄▀██        ▀ ██▀             ▀██   ▀██▄▀██        ▀ ██▀             ▀██          ',
			\ '            ▀████ ▀    ▄   ██   ▄█    ▄ ▄█  ██     ▀████ ▀    ▄   ██   ▄█    ▄ ▄█  ██    +++|░░░░░░░░░░/░░/ +░+░+░+░     ▀████ ▀    ▄   ██   ▄█    ▄ ▄█  ██     ▀████ ▀    ▄   ██   ▄█    ▄ ▄█  ██          ',
			\ '               ▀█    ▄     ██    ▄   ▄  ▄   ██        ▀█    ▄     ██    ▄   ▄  ▄   ██      +|░░░░░░░░░░░░ +/░░░,░░░,\       ▀█    ▄     ██    ▄   ▄  ▄   ██        ▀█    ▄     ██    ▄   ▄  ▄   ██          ',
			\ '               ▄█▄           ▀▄  ▀▀▀▀▀▀▀▀  ▄▀         ▄█▄           ▀▄  ▀▀▀▀▀▀▀▀  ▄▀        |░░░░░░░//░░/+/░/+/░/|/░/       ▄█▄           ▀▄  ▀▀▀▀▀▀▀▀  ▄▀         ▄█▄           ▀▄  ▀▀▀▀▀▀▀▀  ▄▀           ',
			\ '              █▀▀█████████▀▀▀▀████████████▀          █▀▀█████████▀▀▀▀████████████▀          |░░░░░/|+/░/+/░/+/░/ /░/       █▀▀█████████▀▀▀▀████████████▀          █▀▀█████████▀▀▀▀████████████▀             ',
			\ '              ████▀  ███▀      ▀███  ▀██▀            ████▀  ███▀      ▀███  ▀██▀            |░░░/|++/░/+/░/ /░/ /░/        ████▀  ███▀      ▀███  ▀██▀            ████▀  ███▀      ▀███  ▀██▀               ',
			\ ]
" -------------- make nerdtree work at startup ------------------------------ "
" autocmd VimEnter *
"                 \   if !argc()
"                 \ |   Startify
"                 \ |   NERDTree
"                 \ |   wincmd w
"                 \ | endif

" --------------------------------------------------------------
" quickrun
" --------------------------------------------------------------
" outputte /message/log = the output don't capture logging
            " \ 'runner':'terminal',
            " \ 'runner/terminal/into':1,
            " \ 'outputter/buffer/close_on_empty' : 1,
            " \ 'outputter/loclist/into':1

            " \ 'runner': 'vimproc',
            " \ 'runner':'terminal',
            " \ 'runner/terminal/into':1,
let b:quickrun_config = {
            \ 'outputter':'error',
            \ 'outputter/error/success':'buffer',
            \ 'outputter/error/error':'loclist',
            \  }

"             \ 'outputter/loclist/errorformat':'&errorformat',
            " \ 'outputter/buffer/close_on_empty' : 1,

            " \ "hook/close_unite_quickfix/enable_hook_loaded" : 1,
            " \ "hook/unite_quickfix/enable_failure" : 1,
            " \ "hook/close_quickfix/enable_exit" : 1,
            " \ "hook/close_buffer/enable_failure" : 1,
            " \ "hook/close_buffer/enable_empty_data" : 1,
            " \ "outputter/buffer/split" : ":botright 8sp",
            " \ "outputter" : "multi:buffer:quickfix",
            " \	"outputter/buffer/append":0,
            " \	"outputter":"buffered",
            " \	"outputter/buffered/target":"buffer",
            " \	"outputter/buffer/split":"Uniqtab",
            " \	"runner/vimproc/updatetime":0,
            " \ 'outputter/buffer/close_on_empty' : 1,
            " \ 'outputter/message/log':0,
            " \ 'runner/terminal/into':1,
            " \ 'outputter/loclist/into':1
            " \ 'outputter': 'quickfix'
            " \ 'outputter/quickfix/into':1
" 'tex': {
"         \    'command': 'platex',
"         \    'exec': ['%c -output-directory %s:h %s', 'dvipdfmx -o %s:r.pdf %s:r.dvi', 'open %s:r.pdf']
"         \   },
" let g:quickrun_config['sql'] = {
" 		\ 'command': 'psql',
" 		\ 'exec': ['%c %o < %s'],
" 		\ 'cmdopt': '%{MakepgsqlCommandOptions()}',
" 		\ }

" let g:quickrun_config['R'] = {'command': 'R', 'exec': ['%c -s --no-save -f %s', ':%s/.\b//g']}
" stop quickrun with <Ctrl-c>

" --------------------------------------------------------------
" fzf
" --------------------------------------------------------------
" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
" let g:fzf_history_dir = '~/.local/share/fzf-history'
" map <Leader>h :Files<CR>
"
"let g:fzf_tags_command = 'ctags -R'
"let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline '
"" let $FZF_DEFAULT_OPTS=' --color=dark --color=fg:5,bg:-1,hl:0,bg+:-1,hl+:-1 --color=info:0,prompt:0,pointer:-1,marker:-1,spinner:-1,header:-1 --layout=reverse  --margin=1,4'
"" let $FZF_DEFAULT_COMMAND="rg --files --hidden"
"let g:fzf_layout = { 'down': '30%' }
"" let g:fzf_layout = { 'window': '-tabnew' }
"let g:fzf_commands_expect = 'alt-enter'
"" let g:fzf_preview_window = 'right:50%:noborder:hidden'
"" let g:coc_fzf_opts = []
"" let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo'} }
"" \ 'bg':      ['bg', '#201a14'],
"command! -bang -nargs=? -complete=dir Files
"    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)
"" Get text in files with Rg
"command! -bang -nargs=* Rg
"  \ call fzf#vim#grep(
"  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
"  \   fzf#vim#with_preview(), <bang>0)
"" Ripgrep advanced
"function! RipgrepFzf(query, fullscreen)
"  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
"  let initial_command = printf(command_fmt, shellescape(a:query))
"  let reload_command = printf(command_fmt, '{q}')
"  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
"  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
"endfunction
""
"command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
""
"" Git grep
"command! -bang -nargs=* GGrep \ call fzf#vim#grep( \   'git grep --line-number '.shellescape(<q-args>), 0, \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)
""
"" # Scoped History Finders  https://github.com/jesseleite/dotfiles/blob/master/vim/plugin-config/fzf.vim
"command! -bang PHistory call fzf#run(fzf#wrap(s:preview(<bang>0, {
"  \ 'source': s:file_history_from_directory(s:get_git_root()),
"  \ 'options': [
"  \   '--prompt', 'ProjectHistory> ',
"  \   '--multi',
"  \ ]}), <bang>0))
"command! -bang CwdHistory call fzf#run(fzf#wrap(s:preview(<bang>0, {
"  \ 'source': s:file_history_from_directory(getcwd()),
"  \ 'options': [
"  \   '--prompt', 'CwdHistory> ',
"  \   '--multi',
"  \ ]}), <bang>0))
"function! s:file_history_from_directory(directory)
"  return fzf#vim#_uniq(filter(fzf#vim#_recent_files(), "s:file_is_in_directory(fnamemodify(v:val, ':p'), a:directory)"))
"endfunction
"function! s:file_is_in_directory(file, directory)
"  return filereadable(a:file) && match(a:file, a:directory . '/') == 0
"endfunction

" --------------------------------------------------------------
" vimspector
" --------------------------------------------------------------
" packadd! vimspector
" sign define vimspectorBP         text=\ ● texthl=WarningMsg
" sign define vimspectorBPCond     text=\ ◆ texthl=WarningMsg
" sign define vimspectorBPDisabled text=\ ● texthl=LineNr
" sign define vimspectorPC         text=\ ▶ texthl=MatchParen linehl=CursorLine"
"
" nnoremenu WinBar.■\ Stop :call vimspector#Stop()<CR>
" nnoremenu WinBar.▶\ Cont :call vimspector#Continue()<CR>
" nnoremenu WinBar.▷\ Pause :call vimspector#Pause()<CR>
" nnoremenu WinBar.↷\ Next :call vimspector#StepOver()<CR>
" nnoremenu WinBar.→\ Step :call vimspector#StepInto()<CR>
" nnoremenu WinBar.←\ Out :call vimspector#StepOut()<CR>
" nnoremenu WinBar.⟲: :call vimspector#Restart()<CR>
" nnoremenu WinBar.✕ :call vimspector#Reset()<CR>"
"
" hi default WinBar guibg=NONE ctermbg=NONE
" hi default link VimspectorDone  DiffAdd
" hi default link VimspectorSkip  DiffAdd
" hi default link VimspectorError WarningMsg
" hi default link VimspectorGadget String
" hi default link VimspectorGadgetVersion Identifier"
