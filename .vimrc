" TODO
"    debuguer python
"   - generation de tags à chaque enrengistrment
"   - ameliorer chemin tags pour fichers differents
"   - voir config tagbar avec latex
"
"
" ░██████╗░  ███████╗  ███╗░░██╗  ███████╗  ██████╗░  ░█████╗░  ██╗░░░░░
" ██╔════╝░  ██╔════╝  ████╗░██║  ██╔════╝  ██╔══██╗  ██╔══██╗  ██║░░░░░
" ██║░░██╗░  █████╗░░  ██╔██╗██║  █████╗░░  ██████╔╝  ███████║  ██║░░░░░
" ██║░░╚██╗  ██╔══╝░░  ██║╚████║  ██╔══╝░░  ██╔══██╗  ██╔══██║  ██║░░░░░
" ╚██████╔╝  ███████╗  ██║░╚███║  ███████╗  ██║░░██║  ██║░░██║  ███████╗
" ░╚════╝░  ╚══════╝  ╚═╝░░╚══╝  ╚══════╝  ╚═╝░░╚═╝  ╚═╝░░╚═╝  ╚══════╝
" scriptencoding utf-8
set paste                         " auto-indent paste
set backspace=indent,eol,start
set spelllang=en
setglobal helplang=en,fr
set nostartofline               " don't jump to start of line
set shiftround                    " Snap indents via > or < to multiples of w
set expandtab                     " Prefer spaces over tabs
set hls
set scrolloff=5
set showtabline=2
set encoding=utf-8
set incsearch
filetype plugin indent on         " Enable filetype detection for plugins and indentation options
" No swap files for unmodified buffers
set noswapfile
augroup Swap
    autocmd CursorHold,BufWritePost,BufReadPost,BufLeave *
                \ if isdirectory(expand("<amatch>:h")) | let &swapfile = &modified | endif
augroup END
"
set nocompatible
set ignorecase
set smartcase
syntax on
set number relativenumber
set path+=**
set diffopt+=indent-heuristic
set wildmenu
set laststatus=2
set lazyredraw
set ai
set showcmd
set cmdheight=1                 " Better display for messages
set updatetime=30               " Smaller updatetime for CursorHold & CursorHoldI
set shortmess+=c
set mouse=a
set tags=tags
" set textprop=True
"
set suffixes+=.pyc,.pyo         " ignore compiled Python files
set suffixes+=.egg-info         " ignore compiled Python files
set suffixes+=.png              " don't edit .png files please
set wildignore+=*.pyc,*.pyo     " same as 'suffixes', but for tab completion
set wildignore+=*/__pycache__/* " compiled python files

set wildignore+=*/*.egg-info/*  " setuptools droppings
"
if empty(glob('~/.vim/autoload/plug.vim'))
    silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
"
" Make cursor go to the line edited line when opening a file
if has("autocmd")
    augroup redhat
        autocmd!
        " When editing a file, always jump to the last cursor position
        autocmd BufReadPost *
                    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
                    \   exe "normal! g'\"" |
                    \ endif
    augroup END
endif
"
" ██████╗░  ██╗░░░░░  ██╗░░░██╗  ░██████╗░
" ██╔══██╗  ██║░░░░░  ██║░░░██║  ██╔════╝░
" ██████╔╝  ██║░░░░░  ██║░░░██║  ██║░░██╗░
" ██╔═══╝░  ██║░░░░░  ██║░░░██║  ██║░░╚██╗
" ██║░░░░░  ███████╗  ╚██████╔╝  ╚██████╔╝
" ╚═╝░░░░░  ╚══════╝  ░╚═════╝░  ░╚════╝░
call plug#begin('~/.vim/plugged')
"
" New
"
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'https://github.com/junegunn/vimloclisteasy-align'
Plug 'https://github.com/romainl/vim-qf'              " help with the quickfix lists
Plug 'https://github.com/tpope/vim-fugitive'
"
" Navigation
"
Plug 'https://github.com/mattn/vim-findroot'           " Find root of project
Plug 'https://github.com/tpope/vim-surround'           " add object with (, {, {, ...
Plug 'https://github.com/tpope/vim-commentary'         " comment out
Plug 'https://github.com/KKPMW/vim-sendtowindow'       " send text to as windows
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }    " fuzzy finder
Plug 'junegunn/fzf.vim'                                " fuzzy finder Plug 'junegunn/fzf.vim'
Plug 'https://github.com/majutsushi/tagbar'            " show tabs
Plug 'jlanzarotta/bufexplorer'                         " help to manage opened buffers
"
" IDE masterrace
"
Plug 'https://github.com/gotcha/vimpdb'
Plug 'https://github.com/puremourning/vimspector'      " A debugger in vim for multiples languages
Plug 'https://github.com/tpope/vim-endwise'            " end certain structures automatically
Plug 'neoclide/coc.nvim', {'branch': 'release'}        " new community driven completion engine
Plug 'dense-analysis/ale'                              " syntax checking and semantic errors
Plug 'antoinemadec/coc-fzf'                            " integrate fzf with coc.vim
Plug 'preservim/nerdtree'                              " file explorer
Plug 'https://github.com/thinca/vim-quickrun'          " Run python and others easely
" Plug 'https://github.com/tpope/vim-dispatch'           " could be an alternative to quickrun
" Plug 'https://github.com/mattboehm/vim-unstack'      " open trace, don't  work :(
"
" Python
"
Plug 'https://github.com/ColinKennedy/vim-textobj-block-party' " text objects and motions for Python required +python
Plug 'mgedmin/python-imports.vim'                       " Insert Python import statements computed from tags, bound to <F5>
Plug 'mgedmin/pytag.vim'                               " better tags for python TODO
Plug 'https://github.com/sillybun/vim-repl'            " python terminal
Plug 'mgedmin/python_open_module.vim'                  " Python standard library source code
Plug 'https://github.com/tell-k/vim-autopep8'          " autoformat python code to pep8
" https://www.reddit.com/r/vim/comments/83iwc1/is_there_a_vim_plugin_for_generating_python/ " python doc ?
"
" mappings
"
Plug 'junegunn/vim-easy-align'                         " Helps alignment TODO: LEARN
Plug 'michaeljsmith/vim-indent-object'                 " New text object, based on indentation levels.
Plug 'maxboisvert/vim-simple-complete'                 " as-you-type keyword completion
Plug 'https://github.com/svermeulen/vim-subversive'    " replace content with register
Plug 'https://github.com/kana/vim-textobj-entire'      " text object for the all buffer
Plug 'https://github.com/kana/vim-textobj-user'        " add new text objects
"
" Tags
"
Plug 'skywind3000/gutentags_plus'                      " help to generate tags
Plug 'https://github.com/universal-ctags/ctags'        " help to generate tags
"
" Theming
"
"
Plug 'habamax/vim-gruvbit'
Plug 'habamax/vim-gruvbit'
Plug 'morhetz/gruvbox'                                 " color theme
Plug 'https://github.com/miyakogi/conoline.vim'        " highlights the line of the cursor
Plug 'ryanoasis/vim-devicons'                          " add icon
Plug 'vim-airline/vim-airline'                         " add visual line
Plug 'vim-airline/vim-airline-themes'                  " theme for airline
Plug 'https://github.com/camspiers/animate.vim'        " windows move animation
Plug 'vim/killersheep'                                " absolutely essential
"
" Latex
"
Plug 'lervag/vimtex'                                   " Latex plugin
Plug 'https://github.com/Yggdroot/indentLine'          " help with indent TODO: Configure
" Plug 'https://vimawesome.com/plugin/tex-fold'          " add-on for latex TODO
" Plug 'vim-grammarous'                                  " Grammar corrections
"
" Jupyter
"
" Plug 'https://github.com/mattn/vim_kernel'
"
" Snippets
"
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
"
" Markdown file
"
" https://github.com/tyru/vim-markdown
" https://github.com/superbrothers/vim-quickrun-markdown-gfm/blob/ea8c26c4980eb84ae2bdbc99c753fcbaad557395/README.md
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  } " preview for markdown files
"
" R
"
" https://github.com/tyru/R-Vim-runtime
"
" Databases
"
" Plug 'https://github.com/MathSquared/vim-python-sql'
" https://github.com/tpope/vim-dadbod
"
" TOTEST
" Plug 'https://github.com/Shougo/denite.nvim'        " file , buffers manager
" Plug 'airblade/vim-rooter'                           " place search at project root, look for .gitingore
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'https://github.com/AndrewRadev/sideways.vim'   " move func args
" Plug 'https://github.com/tpope/vim-vinegar'
" Plug 'https://github.com/wincent/terminus' "send text to as windows
" Plug 'https://github.com/ncm2/float-preview.nvim/'
" https://github.com/mileszs/ack.vim                   " wrap grep tools in vim
" Plug 'vim-vdebug/vdebug'                             "TODO : configure  https://github.com/camspiers/dotfiles/blob/master/files/.config/nvim/init.VimtexCompile
" Plug 'kkoomen/vim-doge'                              " Docblock generator
" Plug 'rbong/vim-flog'                                " Commit viewer
" Plug 'bkad/CamelCaseMotion'                          " Motions for inside camel case
"
" REMOVED
"
"Plug 'https://github.com/airblade/vim-gitgutter'      " git helper TODO : configure
"Plug 'https://github.com/jmcantrell/vim-virtualenv'
"Plug 'https://github.com/jmcantrell/vim-virtualenv'
"Plug 'https://github.com/ervandew/supertab'
"Plug 'skywind3000/vim-auto-popmenu'
"Plug 'liuchengxu/vim-clap'
"Plug 'https://github.com/ctrlpvim/ctrlp.vim'
"
"
call plug#end() "run :PlugInstall


"
" ██╗░░░██╗  ██╗  ███╗░░░███╗  ░██████╗  ██████╗░  ███████╗  ██████╗░  ████████╗  ░█████╗░  ██████╗░
" ██║░░░██║  ██║  ████╗░████║  ██╔════╝  ██╔══██╗  ██╔════╝  ██╔══██╗  ╚══██╔══╝  ██╔══██╗  ██╔══██╗
" ╚██╗░██╔╝  ██║  ██╔████╔██║  ╚█████╗░  ██████╔╝  █████╗░░  ██║░░╚═╝  ░░░██║░░░  ██║░░██║  ██████╔╝
" ░╚████╔╝░  ██║  ██║╚██╔╝██║  ░╚═══██╗  ██╔═══╝░  ██╔══╝░░  ██║░░██╗  ░░░██║░░░  ██║░░██║  ██╔══██╗
" ░░╚██╔╝░░  ██║  ██║░╚═╝░██║  ██████╔╝  ██║░░░░░  ███████╗  ╚█████╔╝  ░░░██║░░░  ╚█████╔╝  ██║░░██║
" ░░░╚═╝░░░  ╚═╝  ╚═╝░░░░░╚═╝  ╚═════╝░░  ╚═╝░░░░░  ╚══════╝  ░╚════╝░  ░░╚═╝░░░   ╚════╝░  ╚═╝░░╚═╝
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
"
"
"  ██████╗░  ██╗░░░██╗  ██╗  ██████╗░  ██╗░░██╗  ██████╗░  ██╗░░░██╗  ███╗░░██╗
" ██╔═══██╗  ██║░░░██║  ██║  ██╔══██╗  ██║░██╔╝  ██╔══██╗  ██║░░░██║  ████╗░██║
" ██║██╗██║  ██║░░░██║  ██║  ██║░░╚═╝  █████═╝░  ██████╔╝  ██║░░░██║  ██╔██╗██║
" ╚██████╔╝  ██║░░░██║  ██║  ██║░░██╗  ██╔═██╗░  ██╔══██╗  ██║░░░██║  ██║╚████║
" ░╚═██╔═╝░  ╚██████╔╝  ██║  ╚█████╔╝  ██║░╚██╗  ██║░░██║  ╚██████╔╝  ██║░╚███║
"  ░░╚═╝░░░  ░╚═════╝░  ╚═╝  ░╚════╝░  ╚═╝░░╚═╝  ╚═╝░░╚═╝  ░╚═════╝░  ╚═╝░░╚══╝
" outputter/message/log = the output don't capture logging
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
nnoremap <expr><silent> <C-c> quickrun#is_running() ? quickrun#sweep_sessions() : "\<C-c>"
"
" ░██████╗░  ██╗░░░██╗  ██╗  ██████╗░  ██╗░░██╗  ███████╗  ██╗  ██╗░░██╗
" ██╔═══██╗  ██║░░░██║  ██║  ██╔══██╗  ██║░██╔╝  ██╔════╝  ██║  ╚██╗██╔╝
" ██║██╗██║  ██║░░░██║  ██║  ██║░░╚═╝  █████═╝░  █████╗░░  ██║  ░╚███╔╝░
" ╚██████╔╝  ██║░░░██║  ██║  ██║░░██╗  ██╔═██╗░  ██╔══╝░░  ██║  ░██╔██╗░
" ░╚═██╔═╝░  ╚██████╔╝  ██║  ╚█████╔╝  ██║░╚██╗  ██║░░░░░  ██║  ██╔╝╚██╗
"  ░░╚═╝░░░  ░╚═════╝░  ╚═╝  ░╚════╝░  ╚═╝░░╚═╝  ╚═╝░░░░░  ╚═╝  ╚═╝░░╚═╝

" close quickfix
function! CloseQuickRunWindow()
    execute "normal \<c-c>\<c-w>jZZ"
endfunction

nnoremap <silent> <F2> :call ToggleQuickFix()<cr>"
" ░█████╗░  ██╗░░░██╗  ████████╗  ░█████╗░  ██████╗░  ███████╗  ██████╗░
" ██╔══██╗  ██║░░░██║  ╚══██╔══╝  ██╔══██╗  ██╔══██╗  ██╔════╝  ██╔══██╗
" ███████║  ██║░░░██║  ░░░██║░░░  ██║░░██║  ██████╔╝  █████╗░░  ██████╔╝
" ██╔══██║  ██║░░░██║  ░░░██║░░░  ██║░░██║  ██╔═══╝░  ██╔══╝░░  ██╔═══╝░
" ██║░░██║  ╚██████╔╝  ░░░██║░░░  ╚█████╔╝  ██║░░░░░  ███████╗  ██║░░░░░
" ╚═╝░░╚═╝  ░╚═════╝░  ░░╚═╝░░░   ╚════╝░  ╚═╝░░░░░  ╚══════╝  ╚═╝░░░░░
let g:autopep8_max_line_length=79
" let g:autopep8_ignore="E501,W293"
" let g:autopep8_disable_show_diff=1
"
" ██████╗░  ░█████╗░  ████████╗  ██╗░░██╗
" ██╔══██╗  ██╔══██╗  ╚══██╔══╝  ██║░░██║
" ██████╔╝  ███████║  ░░░██║░░░  ███████║
" ██╔═══╝░  ██╔══██║  ░░░██║░░░  ██╔══██║
" ██║░░░░░  ██║░░██║  ░░░██║░░░  ██║░░██║
" ╚═╝░░░░░  ╚═╝░░╚═╝  ░░╚═╝░░░  ░╚═╝░░╚═╝
" Parent paths
let g:dotfiles_path = $HOME
let g:dotvim_path = $HOME . '/.vim'
" Get path relative to .vimrc file
function! VimrcPath(path)
  return g:dotfiles_path . '/.vim/' . a:path
endfunction
" Get path relative to .vim directory
function! DotVimPath(path)
  return g:dotvim_path . '/' . a:path
endfunction
" Vimrc related paths for autocmds
let g:vimrc_related_paths = [
  \ $MYVIMRC,
  \ VimrcPath('.vimrc'),
  \ VimrcPath('*.vim')
  \ ]
"
" ███╗░░░███╗  ░█████╗░  ██████╗░  ██████╗░  ██╗  ███╗░░██╗  ░██████╗░  ░██████╗
" ████╗░████║  ██╔══██╗  ██╔══██╗  ██╔══██╗  ██║  ████╗░██║  ██╔════╝░  ██╔════╝
" ██╔████╔██║  ███████║  ██████╔╝  ██████╔╝  ██║  ██╔██╗██║  ██║░░██╗░  ╚█████╗░
" ██║╚██╔╝██║  ██╔══██║  ██╔═══╝░  ██╔═══╝░  ██║  ██║╚████║  ██║░░╚██╗  ░╚═══██╗
" ██║░╚═╝░██║  ██║░░██║  ██║░░░░░  ██║░░░░░  ██║  ██║░╚███║  ╚██████╔╝  ██████╔╝
" ╚═╝░░░░░╚═╝  ╚═╝░░╚═╝  ╚═╝░░░░░  ╚═╝░░░░░  ╚═╝  ╚═╝░░╚══╝  ░╚════╝░  ╚═════╝░░

execute 'source ' VimrcPath('mappings.vim')
"
" ██████╗░  ░█████╗░  ██╗░░░░░  ░█████╗░  ██████╗░
" ██╔══██╗  ██╔══██╗  ██║░░░░░  ██╔══██╗  ██╔══██╗
" ██║░░╚═╝  ██║░░██║  ██║░░░░░  ██║░░██║  ██████╔╝
" ██║░░██╗  ██║░░██║  ██║░░░░░  ██║░░██║  ██╔══██╗
" ╚█████╔╝  ╚█████╔╝  ███████╗  ╚█████╔╝  ██║░░██║
" ░╚════╝░   ╚════╝░  ╚══════╝   ╚════╝░  ╚═╝░░╚═╝

hi Terminal cterm=None
colorscheme gruvbox                        | " Sets theme to gruvbox
" colorscheme gruvbit
let g:gruvbox_italic=1
" let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_contrast_dark = 'hard'
" hi Search cterm=NONE ctermfg=190  ctermbg=26
let g:gruvbox_undercurl=0
" set cursorline                               " Highlight current line
" let g:conoline_color_normal_dark = 'guifg=#3d321e'
" let base16colorspace=256                    | " Access colors present in 256 colorspace
" set termuicolors                           | " Enables 24bit colors
set background=dark
hi Normal guibg=NONE ctermbg=NONE
hi Terminal guibg=NONE ctermbg=NONE
hi SignColumn guifg=#ebdbb2 guibg=NONE ctermbg=NONE
highlight VertSplit ctermbg=NONE
" hi! StatusLine ctermbg=120 gui=NONE
" let &colorcolumn="81,140"                   | " Add indicator for 80 and 120
set foldtext=clean_fold#fold_text_minimal() | " Clean folds
set noshowmode                              | " Don't show mode changes
" set novisualbell                            | " Don't display visual bell
" set nowrap                                  | " Don't wrap lines
" set showmatch                               | " Show matching braces
"
highlight Comment gui=italic            | " Make comments italic
highlight Keyword cterm=italic ctermfg=5
"
" ██╗  ███╗░░██╗  ██████╗░  ███████╗  ███╗░░██╗  ████████╗
" ██║  ████╗░██║  ██╔══██╗  ██╔════╝  ████╗░██║  ╚══██╔══╝
" ██║  ██╔██╗██║  ██║░░██║  █████╗░░  ██╔██╗██║  ░░░██║░░░
" ██║  ██║╚████║  ██║░░██║  ██╔══╝░░  ██║╚████║  ░░░██║░░░
" ██║  ██║░╚███║  ██████╔╝  ███████╗  ██║░╚███║  ░░░██║░░░
" ╚═╝  ╚═╝░░╚══╝  ╚═════╝░  ╚══════╝  ╚═╝░░╚══╝  ░░╚═╝░░░

let g:indentLine_color_term =22
let g:indentLine_char = ">"
let g:indentLine_leadingSpaceChar = '—'
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_showFirstIndentLevel=0
"
" ██████╗░  ░█████╗░  ███╗░░██╗  ░█████╗░  ██╗░░░░░  ██╗  ███╗░░██╗  ███████╗
" ██╔══██╗  ██╔══██╗  ████╗░██║  ██╔══██╗  ██║░░░░░  ██║  ████╗░██║  ██╔════╝
" ██║░░╚═╝  ██║░░██║  ██╔██╗██║  ██║░░██║  ██║░░░░░  ██║  ██╔██╗██║  █████╗░░
" ██║░░██╗  ██║░░██║  ██║╚████║  ██║░░██║  ██║░░░░░  ██║  ██║╚████║  ██╔══╝░░
" ╚█████╔╝  ╚█████╔╝  ██║░╚███║  ╚█████╔╝  ███████╗  ██║  ██║░╚███║  ███████╗
" ░╚════╝░   ╚════╝░  ╚═╝░░╚══╝   ╚════╝░  ╚══════╝  ╚═╝  ╚═╝░░╚══╝  ╚══════╝

let g:conoline_color_insert_dark = 'guibg=#333333 guifg=NONE gui=None '
                           \. 'ctermbg=232 ctermfg=NONE'
let g:conoline_color_normal_dark = 'guibg=#333333 guifg=NONE gui=None '
                           \. 'ctermbg=234 ctermfg=NONE'
"
" ░█████╗░  ███╗░░██╗  ██╗  ███╗░░░███╗  ░█████╗░  ████████╗  ███████╗
" ██╔══██╗  ████╗░██║  ██║  ████╗░████║  ██╔══██╗  ╚══██╔══╝  ██╔════╝
" ███████║  ██╔██╗██║  ██║  ██╔████╔██║  ███████║  ░░░██║░░░  █████╗░░
" ██╔══██║  ██║╚████║  ██║  ██║╚██╔╝██║  ██╔══██║  ░░░██║░░░  ██╔══╝░░
" ██║░░██║  ██║░╚███║  ██║  ██║░╚═╝░██║  ██║░░██║  ░░░██║░░░  ███████╗
" ╚═╝░░╚═╝  ╚═╝░░╚══╝  ╚═╝  ╚═╝░░░░░╚═╝  ╚═╝░░╚═╝  ░░╚═╝░░░  ╚══════╝

let g:animate#duration = 200.0
let g:animate#easing_func = 'animate#ease_linear'
"
" ░██████╗  ███████╗  ███╗░░██╗  ██████╗░  ████████╗  ░█████╗░
" ██╔════╝  ██╔════╝  ████╗░██║  ██╔══██╗  ╚══██╔══╝  ██╔══██╗
" ╚█████╗░  █████╗░░  ██╔██╗██║  ██║░░██║  ░░░██║░░░  ██║░░██║
" ░╚═══██╗  ██╔══╝░░  ██║╚████║  ██║░░██║  ░░░██║░░░  ██║░░██
" ██████╔╝  ███████╗  ██║░╚███║  ██████╔╝  ░░░██║░░░  ╚█████╔╝
" ╚═════╝░░  ╚══════╝  ╚═╝░░╚══╝  ╚═════╝░  ░░╚═╝░░░   ╚════╝░

let g:sendtowindow_use_defaults=0

" nnoremap ml :SidewaysJumpRight<cr>
"
" ███████╗  ███████╗  ███████╗
" ██╔════╝  ╚════██║  ██╔════╝
" █████╗░░  ░░███╔═╝  █████╗░░
" ██╔══╝░░  ██╔══╝░░  ██╔══╝░░
" ██║░░░░░  ███████╗  ██║░░░░░
" ╚═╝░░░░░  ╚══════╝  ╚═╝░░░░░

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'
" map <Leader>h :Files<CR>
"
let g:fzf_tags_command = 'ctags -R'
let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline '
" let $FZF_DEFAULT_OPTS=' --color=dark --color=fg:5,bg:-1,hl:0,bg+:-1,hl+:-1 --color=info:0,prompt:0,pointer:-1,marker:-1,spinner:-1,header:-1 --layout=reverse  --margin=1,4'
" let $FZF_DEFAULT_COMMAND="rg --files --hidden"
let g:fzf_layout = { 'up': '20%' }
" let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_commands_expect = 'alt-enter'
" let g:fzf_preview_window = 'right:50%:noborder:hidden'
" let g:coc_fzf_opts = []
" let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo'} }
" \ 'bg':      ['bg', '#201a14'],
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)
" Get text in files with Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction
"
command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
"
" Git grep
command! -bang -nargs=* GGrep \ call fzf#vim#grep( \   'git grep --line-number '.shellescape(<q-args>), 0, \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)
"
" # Scoped History Finders  https://github.com/jesseleite/dotfiles/blob/master/vim/plugin-config/fzf.vim
command! -bang PHistory call fzf#run(fzf#wrap(s:preview(<bang>0, {
  \ 'source': s:file_history_from_directory(s:get_git_root()),
  \ 'options': [
  \   '--prompt', 'ProjectHistory> ',
  \   '--multi',
  \ ]}), <bang>0))
command! -bang CwdHistory call fzf#run(fzf#wrap(s:preview(<bang>0, {
  \ 'source': s:file_history_from_directory(getcwd()),
  \ 'options': [
  \   '--prompt', 'CwdHistory> ',
  \   '--multi',
  \ ]}), <bang>0))
function! s:file_history_from_directory(directory)
  return fzf#vim#_uniq(filter(fzf#vim#_recent_files(), "s:file_is_in_directory(fnamemodify(v:val, ':p'), a:directory)"))
endfunction
function! s:file_is_in_directory(file, directory)
  return filereadable(a:file) && match(a:file, a:directory . '/') == 0
endfunction
"
" ░██████╗  ██╗  ░██████╗░  ███╗░░██╗
" ██╔════╝  ██║  ██╔════╝░  ████╗░██║
" ╚█████╗░  ██║  ██║░░██╗░  ██╔██╗██
" ░╚═══██╗  ██║  ██║░░╚██╗  ██║╚████║
" ██████╔╝  ██║  ╚██████╔╝  ██║░╚███║
" ╚═════╝░░  ╚═╝  ░╚════╝░  ╚═╝░░╚══╝
" always show signcolumns
" set signcolumn=yes
" autocmd FileType list setl signcolumn=no
" autocmd BufRead,BufNewFile * setlocal signcolumn=yes
" autocmd FileType tagbar,nerdtree setlocal signcolumn=no
"
function! ToggleSignColumn()                               "https://stackoverflow.com/questions/18319284/vim-sign-column-toggle
    if !exists("b:signcolumn_on") || b:signcolumn_on
        set signcolumn=no
        let b:signcolumn_on=0
    else
        set signcolumn=auto
        let b:signcolumn_on=1
    endif
endfunction
"
" ██████╗░  ░█████╗░  ██████╗░
" ██╔══██╗  ██╔══██╗  ██╔══██╗
" ██║░░╚═╝  ██║░░██║  ██║░░╚═╝
" ██║░░██╗  ██║░░██║  ██║░░██╗
" ╚█████╔╝  ╚█████╔╝  ╚█████╔╝
" ░╚════╝░   ╚════╝░
set nobackup
set nowritebackup
set shortmess+=c                                             " Remove messages from in-completion menus
let g:coc_global_extensions = [
  \ 'coc-tsserver', 'coc-json', 'coc-snippets', 'coc-prettier', 'coc-python', 'coc-vimtex',
  \ 'coc-vimlsp', 'coc-sql', 'coc-eslint', 'coc-reason', 'coc-tslint','coc-stylelint', 'coc-tsserver', 'coc-sh',
  \ 'coc-css', 'coc-highlight', 'coc-pairs'
\ ]
  " \ 'coc-html',  'coc-yaml',
" 'coc-explorer'
  " \ 'coc-lists', , 'coc-phpls',
" See coc config in "coc-settings.json" with :CocConfig
    "diagnostic.enable":,
" Map Alt-n to trigger completion: >
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
 " 'coc-git',
 " 'coc-spell-checker',
"
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
"
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
"
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
"
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
"
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"
" Novigate in floating windows https://github.com/neoclide/coc.nvim/issues/1405
function! s:coc_float_scroll(forward) abort
  let float = coc#util#get_float()
  if !float | return '' | endif
  let buf = nvim_win_get_buf(float)
  let buf_height = nvim_buf_line_count(buf)
  let win_height = nvim_win_get_height(float)
  if buf_height < win_height | return '' | endif
  let pos = nvim_win_get_cursor(float)
  if a:forward
    if pos[0] == 1
      let pos[0] += 3 * win_height / 4
    elseif pos[0] + win_height / 2 + 1 < buf_height
      let pos[0] += win_height / 2 + 1
    endif
    let pos[0] = pos[0] < buf_height ? pos[0] : buf_height
  else
    if pos[0] == buf_height
      let pos[0] -= 3 * win_height / 4
    elseif pos[0] - win_height / 2 + 1  > 1
      let pos[0] -= win_height / 2 + 1
    endif
    let pos[0] = pos[0] > 1 ? pos[0] : 1
  endif
  call nvim_win_set_cursor(float, pos)
  return ''
endfunction
nnoremap <silent><expr> <down> coc#util#has_float() ? coc#util#float_scroll(1) : "\<down>"
nnoremap <silent><expr> <up> coc#util#has_float() ? coc#util#float_scroll(0) : "\<up>"
inoremap <silent><expr> <down> coc#util#has_float() ? <SID>coc_float_scroll(1) : "\<down>"
inoremap <silent><expr> <up> coc#util#has_float() ? <SID>coc_float_scroll(0) : "\<up>"
vnoremap <silent><expr> <down> coc#util#has_float() ? <SID>coc_float_scroll(1) : "\<down>"
vnoremap <silent><expr> <up> coc#util#has_float() ? <SID>coc_float_scroll(0) : "\<up>"

"
" ███╗░░██╗  ███████╗  ██████╗░  ██████╗░  ████████╗  ██████╗░  ███████╗  ███████╗
" ████╗░██║  ██╔════╝  ██╔══██╗  ██╔══██╗  ╚══██╔══╝  ██╔══██╗  ██╔════╝  ██╔════╝
" ██╔██╗██║  █████╗░░  ██████╔╝  ██║░░██║  ░░░██║░░░  ██████╔╝  █████╗░░  █████╗░░
" ██║╚████║  ██╔══╝░░  ██╔══██╗  ██║░░██║  ░░░██║░░░  ██╔══██╗  ██╔══╝░░  ██╔══╝░░
" ██║░╚███║  ███████╗  ██║░░██║  ██████╔╝  ░░░██║░░░  ██║░░██║  ███████╗  ███████╗
" ╚═╝░░╚══╝  ╚══════╝  ╚═╝░░╚═╝  ╚═════╝░  ░░╚═╝░░░  ╚═╝░░╚═╝  ╚══════╝  ╚══════╝

map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinSize=20
let NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable='>'
let g:NERDTreeDirArrowCollapsible='>'
let NERDTreeStatusline="%{matchstr(getline('.'), '\\s\\zs\\w\\(.*\\)')}"
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "Ξ",
    \ "Staged"    : "Λ",
    \ "Untracked" : "Φ",
    \ "Renamed"   : "ρ",
    \ "Unmerged"  : "Θ",
    \ "Deleted"   : "Χ",
    \ "Dirty"     : "Δ",
    \ "Clean"     : "Γ",
    \ 'Ignored'   : "Ι",
    \ "Unknown"   : "?"
    \ }
let NERDTreeStatusline=""
" Git gutter custom signs
let g:gitgutter_sign_added = '█'
let g:gitgutter_sign_modified = '█'
let g:gitgutter_sign_removed = '█'
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'+',
                \ 'Staged'    :'s',
                \ 'Untracked' :'u',
                \ 'Renamed'   :'r',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'d',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }"
" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
"
"
"  ██████╗░  ██╗░░░██╗  ████████╗  ██╗░░██╗  ░█████╗░  ███╗░░██╗
"  ██╔══██╗  ╚██╗░██╔╝  ╚══██╔══╝  ██║░░██║  ██╔══██╗  ████╗░██║
"  ██████╔╝  ░╚████╔╝░  ░░░██║░░░  ███████║  ██║░░██║  ██╔██╗██║
"  ██╔═══╝░  ░░╚██╔╝░░  ░░░██║░░░  ██╔══██║  ██║░░██║  ██║╚████║
"  ██║░░░░░  ░░░██║░░░  ░░░██║░░░  ██║░░██║  ╚█████╔╝  ██║░╚███║
"  ╚═╝░░░░░  ░░░╚═╝░░░  ░░╚═╝░░░  ░╚═╝░░╚═╝   ╚════╝░  ╚═╝░░╚══╝
"
au BufNewFile,BufRead *.py
    \ set expandtab       |" replace tabs with spaces
    \ set autoindent      |" copy indent when starting a new line
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set foldmethod=indent
    \ if !exists("current_compiler")
    \     compiler python              " assign compiler to custom python compiler
    \ endif
    \ set makeprg=python3\ %
"
let g:pymode_python = 1
let g:ale_python_autopep8_use_global = 1
" let g:syntastic_python_checker = 'flake8 --ignore=E501'
function! SaveAndExecutePython()
    " SOURCE [reusable window]: https://github.com/fatih/vim-go/blob/master/autoload/go/ui.vim
    " save and reload current file
    silent execute "update | edit"
    " get file path of current file
    let s:current_buffer_file_path = expand("%")
    let s:output_buffer_name = "Python"
    let s:output_buffer_filetype = "output"
    " reuse existing buffer window if it exists otherwise create a new one
    if !exists("s:buf_nr") || !bufexists(s:buf_nr)
        silent execute 'botright vnew ' . s:output_buffer_name
        let s:buf_nr = bufnr('%')
    elseif bufwinnr(s:buf_nr) == -1
        silent execute 'botright new'
        silent execute s:buf_nr . 'buffer'
    elseif bufwinnr(s:buf_nr) != bufwinnr('%')
        silent execute bufwinnr(s:buf_nr) . 'wincmd w'
    endif
    silent execute "setlocal filetype=" . s:output_buffer_filetype
    setlocal bufhidden=delete
    setlocal buftype=nofile
    setlocal noswapfile
    setlocal nobuflisted
    setlocal winfixheight
    " setlocal cursorline " make it easy to distinguish
    setlocal nonumber
    setlocal norelativenumber
    setlocal showbreak=""
    " clear the buffer
    setlocal noreadonly
    setlocal modifiable
    %delete _
    " add the console output
    silent execute ".!python " . shellescape(s:current_buffer_file_path, 1)
    " resize window to content length
    " Note: This is annoying because if you print a lot of lines then your code buffer is forced to a height of one line every time you run this function.
    "       However without this line the buffer starts off as a default size and if you resize the buffer then it keeps that custom size after repeated runs of this function.
    "       But if you close the output buffer then it returns to using the default size when its recreated
    "execute 'resize' . line('$')
    " make the buffer non modifiable
    setlocal readonly
    setlocal nomodifiable
endfunction
"
" add syntax highlight for python
" augroup python_syntax_extra
"   autocmd!
"   autocmd! Syntax python :syn keyword Keyword self
" augroup END
"
" ░██████╗  ██╗░░░██╗  ██████╗░  ███╗░░░███╗  ███████╗  ██████╗░  ░██████╗  ██╗  ██╗░░░██╗  ███████╗
" ██╔════╝  ██║░░░██║  ██╔══██╗  ████╗░████║  ██╔════╝  ██╔══██╗  ██╔════╝  ██║  ██║░░░██║  ██╔════╝
" ╚█████╗░  ██║░░░██║  ██████╦╝  ██╔████╔██║  █████╗░░  ██████╔╝  ╚█████╗░  ██║  ╚██╗░██╔╝  █████╗░░
" ░╚═══██╗  ██║░░░██║  ██╔══██╗  ██║╚██╔╝██║  ██╔══╝░░  ██╔══██╗  ░╚═══██╗  ██║  ░╚████╔╝░  ██╔══╝░░
" ██████╔╝  ╚██████╔╝  ██████╦╝  ██║░╚═╝░██║  ███████╗  ██║░░██║  ██████╔╝  ██║  ░░╚██╔╝░░  ███████╗
" ╚═════╝░░  ░╚═════╝░  ╚═════╝░  ╚═╝░░░░░╚═╝  ╚══════╝  ╚═╝░░╚═╝  ╚═════╝░░  ╚═╝  ░░░╚═╝░░░  ╚══════╝

let g:subversivePromptWithCurrent=1
"let g:subversivePreserveCursorPosition=1 "cursor will not move when substitutions are applied
"
" ██████╗░  ░█████╗░  ██████╗░  ██╗░░░██╗  ██████╗░
" ██╔══██╗  ██╔══██╗  ██╔══██╗  ██║░░░██║  ██╔══██╗
" ██████╔╝  ██║░░██║  ██████╔╝  ██║░░░██║  ██████╔╝
" ██╔═══╝░  ██║░░██║  ██╔═══╝░  ██║░░░██║  ██╔═══╝░
" ██║░░░░░  ╚█████╔╝  ██║░░░░░  ╚██████╔╝  ██║░░░░░
" ╚═╝░░░░░   ╚════╝░  ╚═╝░░░░░  ░╚═════╝░  ╚═╝░░░░░

let g:apc_enable_ft = {'*':1}
set cpt=.,k,w,b
"
" ████████╗  ░█████╗░  ░██████╗░  ░██████╗
" ╚══██╔══╝  ██╔══██╗  ██╔════╝░  ██╔════╝
" ░░░██║░░░  ███████║  ██║░░██╗░  ╚█████╗░
" ░░░██║░░░  ██╔══██║  ██║░░╚██╗  ░╚═══██╗
" ░░░██║░░░  ██║░░██║  ╚██████╔╝  ██████╔╝
" ░░╚═╝░░░  ╚═╝░░╚═╝  ░╚════╝░  ╚═════╝░░

let g:tagbar_compact = 1
let g:tagbar_show_linenumbers = 2
let g:tagbar_iconchars = ['▸', '▾']
let g:tagbar_autoshowtag = 1
" let g:tagbar_previewwin_pos = "aboveleft"
command! MakeTags !ctags -R .
"set statusline+=%{gutentags#statusline()}
"
"enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']
"
" config project root markers.
let g:gutentags_project_root = ['.root']
"
" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')
"
" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1
" remap tag open in new split windows
set previewheight=60
function! FollowTag()
  if !exists("w:tagbrowse")
    vsplit
    let w:tagbrowse=1
  endif
  execute "tag " . expand("<cword>")
endfunction
"
nnoremap <C-W><C-]> :call FollowTag()<CR>zt
"
"   ░█████╗░  ███╗░░██╗  ░█████╗░  ██╗░░░░░  ██╗░░░██╗  ░██████╗  ██╗  ░██████╗
"   ██╔══██╗  ████╗░██║  ██╔══██╗  ██║░░░░░  ╚██╗░██╔╝  ██╔════╝  ██║  ██╔════╝
"   ███████║  ██╔██╗██║  ███████║  ██║░░░░░  ░╚████╔╝░  ╚█████╗░  ██║  ╚█████╗░
"   ██╔══██║  ██║╚████║  ██╔══██║  ██║░░░░░  ░░╚██╔╝░░  ░╚═══██╗  ██║  ░╚═══██╗
"   ██║░░██║  ██║░╚███║  ██║░░██║  ███████╗  ░░░██║░░░  ██████╔╝  ██║  ██████╔╝
"    ╚═╝░░╚═╝  ╚═╝░░╚══╝  ╚═╝░░╚═╝  ╚══════╝  ░░░╚═╝░░░  ╚═════╝░░  ╚═╝  ╚═════╝░░
let g:ale_linters = {'python': ['pep8']}
let g:ale_fixers = {
    \   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}
let g:ale_fix_on_save = 1      " Set this variable to 1 to fix files when you save them.
let g:ale_sign_error = ' '
let g:ale_sign_warning = ' '
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
"
" ████████╗  ░█████╗░  ██████╗░
" ╚══██╔══╝  ██╔══██╗  ██╔══██╗
" ░░░██║░░░  ███████║  ██████╦╝
" ░░░██║░░░  ██╔══██║  ██╔══██╗
" ░░░██║░░░  ██║░░██║  ██████╦╝
" ░░╚═╝░░░  ╚═╝░░╚═╝  ╚═════╝░

set expandtab
set tabstop=5 " show existing tab with 4 spaces width
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set autoindent
set smartindent
"
" ░██████╗  ██████╗░  ██╗░░░░░  ██╗  ████████╗
" ██╔════╝  ██╔══██╗  ██║░░░░░  ██║  ╚══██╔══╝
" ╚█████╗░  ██████╔╝  ██║░░░░░  ██║  ░░░██║░░░
" ░╚═══██╗  ██╔═══╝░  ██║░░░░░  ██║  ░░░██║░░░
" ██████╔╝  ██║░░░░░  ███████╗  ██║  ░░░██║░░░
" ╚═════╝░░  ╚═╝░░░░░  ╚══════╝  ╚═╝  ░░╚═╝░░░

set fillchars=vert:│,fold:+
set splitbelow splitright
nnoremap <C-h> <C-w>h

" ███╗░░░███╗  ░█████╗░  ░█████╗░  ███╗░░██╗  ███████╗  ██╗░░░░░  ██╗░░░██╗
" ███╗░████║  ██╔══██╗  ██╔══██╗  ████╗░██║  ██╔════╝  ██║░░░░░  ╚██╗░██╔╝
" █╔████╔██║  ██║░░██║  ██║░░██║  ██╔██╗██║  █████╗░░  ██║░░░░░  ░╚████╔╝░
" █║╚██╔╝██║  ██║░░██║  ██║░░██║  ██║╚████║  ██╔══╝░░  ██║░░░░░  ░░╚██╔╝░░
" █║░╚═╝░██║  ╚█████╔╝  ╚█████╔╝  ██║░╚███║  ██║░░░░░  ███████╗  ░░░██║░░░
" ═╝░░░░░╚═╝   ╚════╝░   ╚════╝░  ╚═╝░░╚══╝  ╚═╝░░░░░  ╚══════╝  ░░░╚═╝░░░
" let g:moonflyIgnoreDefaultColors = 1
" let g:moonflyWithGitBranchCharacter = 1
" let g:moonflyWithCocIndicator = 1
" let g:moonflyDiagnosticsIndicator = "(coc-diagnostic errors)"
" let g:moonflyWithObessionGeometricCharacters = 1
"
" ░█████╗░  ██╗  ██████╗░  ██╗░░░░░  ██╗  ███╗░░██╗  ███████╗
" ██╔══██╗  ██║  ██╔══██╗  ██║░░░░░  ██║  ████╗░██║  ██╔════╝
" ███████║  ██║  ██████╔╝  ██║░░░░░  ██║  ██╔██╗██║  █████╗░░
" ██╔══██║  ██║  ██╔══██╗  ██║░░░░░  ██║  ██║╚████║  ██╔══╝░░
" ██║░░██║  ██║  ██║░░██║  ███████╗  ██║  ██║░╚███║  ███████╗
" ╚═╝░░╚═╝  ╚═╝  ╚═╝░░╚═╝  ╚══════╝  ╚═╝  ╚═╝░░╚══╝  ╚══════╝

" let g:airline_theme='monochrome'
let g:airline_theme='bubblegum'
"
" let g:airline#extensions#fugitiveline#enabled = 0
" let g:airline_theme='raven'
" let g:airline_theme='orbital'
" let g:airline_theme = 'minimalist'
" let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#whitespace#checks = ['']
let g:airline#extensions#tabline#enabled = 1
hi airline_c  ctermbg=NONE guibg=NONE
hi airline_tabfill ctermbg=NONE guibg=NONE
let g:airline_powerline_fonts = 0
let g:airline#themes#clean#palette = 1
call airline#parts#define_raw('linenr', '%l')
call airline#parts#define_accent('linenr', 'bold')
let g:airline_section_z = airline#section#create(['%3p%%  ',
            \ g:airline_symbols.linenr .' ', 'linenr', ':%c '])
let g:airline_section_warning = ''
let g:airline_section_error = ''
let g:airline#extensions#tabline#buffer_min_count = 1   " show tabline only if there is more than 1 buffer
" let g:airline#extensions#tabline#fnamemod = ':t'        " show only file name on tabs

" ██╗░░░░░  ░█████╗░  ████████╗  ███████╗  ██╗░░██╗
" ██║░░░░░  ██╔══██╗  ╚══██╔══╝  ██╔════╝  ╚██╗██╔╝
" ██║░░░░░  ███████║  ░░░██║░░░  █████╗░░  ░╚███╔╝░
" ██║░░░░░  ██╔══██║  ░░░██║░░░  ██╔══╝░░  ░██╔██╗░
" ███████╗  ██║░░██║  ░░░██║░░░  ███████╗  ██╔╝╚██╗
" ╚══════╝  ╚═╝░░╚═╝  ░░╚═╝░░░  ╚══════╝  ╚═╝░░╚═╝
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
"
