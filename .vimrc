" TODO
"   - generation de tags à chaque enrengistrment
"   - ameliorer chemin tags pour fichers differents
"   - voir config tagbar avec latex
"
" Full featured compiled vim for Windows https://tuxproject.de/projects/vim/auto
"
" set paste                       " auto-indent paste
autocmd FileType text setlocal textwidth=79
set backspace=indent,eol,start    " remove space in indent and end of line
setglobal helplang=en,fr          " syntax check
set nostartofline                 " don't jump to start of line
" set expandtab                     " Prefer spaces over tabs
set hls
"
set autoindent                    " autoindent files
set smartindent                   " auto indent while editing
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=2
set tabstop=2
" set softtabstop=2                 " Number of spaces for a tab
" set shiftround                    " Snap indents via > or < to multiples of w
"
set scrolloff=10                   " limit of line to scroll
set showtabline=2
set encoding=utf-8
filetype plugin indent on         " Enable filetype detection for plugins and indentation options
set nocompatible
set ignorecase
set smartcase
set path+=**
set diffopt+=indent-heuristic
set wildmenu
set laststatus=2
set ai
set showcmd
set cmdheight=1                   " Better display for messages
set updatetime=30                 " Smaller updatetime for CursorHold & CursorHoldI
set mouse=a                       " enbable mouse functionnalities
set tags=tags
set splitbelow splitright         " new split view appaer verticqly splitted
set nobackup
set nowritebackup
" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
            \ if line("'\"") > 0 && line ("'\"") <= line("$") |
            \   exe "normal! g'\"" |
            \ endif
set noswapfile                    " No swap files for unmodified buffers
augroup Swap
    autocmd CursorHold,BufWritePost,BufReadPost,BufLeave *
                \ if isdirectory(expand("<amatch>:h")) | let &swapfile = &modified | endif
augroup END
syntax on
set virtualedit=onemore
set relativenumber
" set nonumber
" set signcolumn=number
set fillchars=vert:│,fold:+       " split separation character
"
set suffixes+=.pyc,.pyo           " ignore compiled Python files
set suffixes+=.egg-info           " ignore compiled Python files
set suffixes+=.png                " don't edit .png files please
set wildignore+=*.pyc,*.pyo       " same as 'suffixes', but for tab completion
set wildignore+=*/__pycache__/*   " compiled python files
set wildignore+=*/*.egg-info/*    " setuptools droppings
"
if has('unix')
    set incsearch                     " Show search result while typing
endif
" if has('win32')
" endif
if has('win32')
    " set guifont=Source\ Code\ Pro\ Regular\ 20
    " set regexpengine=1
    " set ttyfast
    " set novisualbell
endif

"
" ██████╗░  ░█████╗░  ████████╗  ██╗░░██╗
" ██╔══██╗  ██╔══██╗  ╚══██╔══╝  ██║░░██║
" ██████╔╝  ███████║  ░░░██║░░░  ███████║
" ██╔═══╝░  ██╔══██║  ░░░██║░░░  ██╔══██║
" ██║░░░░░  ██║░░██║  ░░░██║░░░  ██║░░██║
" ╚═╝░░░░░  ╚═╝░░╚═╝  ░░╚═╝░░░  ░╚═╝░░╚═╝
if has('unix')
    " ----------------------------------------
    "  ------ Unix config -------------------
    " ---------------------------------------
    " Parent paths
    let g:dotfiles_path = $HOME
    let g:dotvim_path = $HOME . '/.vim'
    function! VimrcPath(path)                     " Get path relative to .vimrc file
    return g:dotfiles_path . '/.vim/' . a:path
    endfunction
    function! DotVimPath(path)                    " Get path relative to .vim directory
    return g:dotvim_path . '/' . a:path
    endfunction
    " Vimrc related paths for autocmds
    let g:vimrc_related_paths = [
    \ $MYVIMRC,
    \ VimrcPath('.vimrc'),
    \ VimrcPath('*.vim')
    \ ]
endif
if has('win32')
    " ----------------------------------------
    "  ------ Windows config -------------------
    "  --------------------------------------
    " Parent paths
    let g:dotfiles_path = $HOME
    let g:dotvim_path = $HOME . '\vimfiles'
    function! VimrcPath(path)                     " Get path relative to .vimrc file
        return g:dotfiles_path . '\vimfiles\' . a:path
    endfunction
    function! DotVimPath(path)                    " Get path relative to .vim directory
        return g:dotvim_path . '\' . a:path
    endfunction
    " Vimrc related paths for autocmds
    let g:vimrc_related_paths = [
    \ $MYVIMRC,
    \ VimrcPath('.vimrc'),
    \ VimrcPath('*vimfiles')
    \ ]
endif
" ░██████╗  ░█████╗░  ██╗░░░██╗  ██████╗░  ██████╗░  ██╗  ███╗░░██╗  ░██████╗░
" ██╔════╝  ██╔══██╗  ██║░░░██║  ██╔══██╗  ██╔══██╗  ██║  ████╗░██║  ██╔════╝░
" ╚█████╗░  ██║░░██║  ██║░░░██║  ██████╔╝  ██║░░╚═╝  ██║  ██╔██╗██║  ██║░░██╗░
" ░╚═══██╗  ██║░░██║  ██║░░░██║  ██╔══██╗  ██║░░██╗  ██║  ██║╚████║  ██║░░╚██╗
" ██████╔╝  ╚█████╔╝  ╚██████╔╝  ██║░░██║  ╚█████╔╝  ██║  ██║░╚███║  ╚██████╔╝
" ╚═════╝░░   ╚════╝░  ░╚═════╝░  ╚═╝░░╚═╝  ░╚════╝░  ╚═╝  ╚═╝░░╚══╝  ░╚════╝░
" list of keymap
execute 'source ' VimrcPath('mappings.vim')
" load and config plugins
execute 'source ' VimrcPath('plugins.vim')
execute 'source ' VimrcPath('mapping_plugin.vim')
" if gvim running
execute 'source ' VimrcPath('gvim.vim')
" colors settings
execute 'source ' VimrcPath('colors/colors.vim')
" configs for the coc extensions
execute 'source ' VimrcPath('coc.vim')
"
" ████████╗  ░█████╗░  ░██████╗░  ░██████╗
" ╚══██╔══╝  ██╔══██╗  ██╔════╝░  ██╔════╝
" ░░░██║░░░  ███████║  ██║░░██╗░  ╚█████╗░
" ░░░██║░░░  ██╔══██║  ██║░░╚██╗  ░╚═══██╗
" ░░░██║░░░  ██║░░██║  ╚██████╔╝  ██████╔╝
" ░░╚═╝░░░  ╚═╝░░╚═╝  ░╚════╝░  ╚═════╝░░

let g:tagbar_compact = 1
let g:tagbar_show_linenumbers = 2
" letg:tagbar_iconchars = ['▸', '▾']
let g:tagbar_autoshowtag = 1
" let g:tagbar_previewwin_pos = "aboveleft"
command! MakeTags !ctags -R .
"set statusline+=%{gutentags#statusline()}
" generate databases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_ctags_exclude = ["*.min.js", "*.min.css", "build", "vendor",
                                 \ ".git", "node_modules", "*.vim/bundle/*"]
let g:gutentags_modules = ['ctags', 'gtags_cscope'] "enable gtags module
let g:gutentags_project_root = ['.root']   " config project root markers.
" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_plus_switch = 1      " change focus to quickfix window after search
set previewheight=60                 " remap tag open in new split windows
