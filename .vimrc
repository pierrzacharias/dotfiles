" TODO
" reduire info airline
"
" au BufRead * let &numberwidth = float2nr(log10(line("$"))) + 2
"           \| let &columns = &numberwidth + 80

# change end-of-line for windows files
if has('win32')
	set fileformat=dos
endif

set termguicolors      " Use gui color for terminal
set conceallevel=3
set noequalalways
set splitright
" set eadirection

set conceallevel=3
set noerrorbells
autocmd FileType text setlocal textwidth=79

" -------------------------------------------------------------------------- "
" --------- remove trailing whitespaces ------------------------------ "
" -------------------------------------------------------------------------- "
set spelllang=en                  " syntax check
setglobal helplang=en             " syntax check
set nostartofline                 " don't jump to start of line
" set expandtab                     " Prefer spaces over tabs
set hls
"
set autoindent                    " autoindent files
set smartindent                   " auto indent while editing
set noexpandtab
" set copyindent
" set preserveindent
set softtabstop=0
set shiftwidth=2
set tabstop=2
" set softtabstop=2                 " Number of spaces for a tab
" set shiftround                    " Snap indents via > or < to multiples of w
"
set scrolloff=20                    " limit of line to scroll
set showtabline=2
set incsearch                       " Show search result while typing
set encoding=utf-8
filetype plugin indent on           " Enable filetype detection for plugins and indentation options
set nocompatible
set ignorecase
set smartcase
set path+=**
set diffopt+=indent-heuristic
set wildmenu
set laststatus=2
set ai
set showcmd
" set cmdheight=2                   " Better display for messages
set updatetime=100                  " Smaller updatetime for CursorHold & CursorHoldI
set mouse=a                         " enbable mouse functionnalities
" set tags=tags
" set splitbelow splitright         " new split view appaer verticqly splitted
set nobackup
set nowritebackup
set incsearch                       " Show search result while typing
set hidden
set autoread                        " automatically reload files changed on disk
set switchbuf=useopen               " quickfix reuses open windows
" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
            \ if line("'\"") > 0 && line ("'\"") <= line("$") |
            \   exe "normal! g'\"" |
            \ endif
set noswapfile                      " No swap files for unmodified buffers
augroup Swap
    autocmd CursorHold,BufWritePost,BufReadPost,BufLeave *
                \ if isdirectory(expand("<amatch>:h")) | let &swapfile = &modified | endif
augroup END
syntax on
set virtualedit=onemore             " allow the cursor to go one char after end of line

" set relative numbers
set nu
set rnu

set fillchars=vert:\|,fold:>,diff:-
set suffixes+=.pyc,.pyo           " ignore compiled Python files
set suffixes+=.egg-info           " ignore compiled Python files
set suffixes+=.png                " don't edit .png files please
set wildignore+=*.pyc,*.pyo       " same as 'suffixes', but for tab completion
set wildignore+=*/__pycache__/*   " compiled python files
set wildignore+=*/*.egg-info/*    " setuptools droppings
set wildignore+=*/.venv           " virtualenv
set wildignore+=*/local           " virtualenv

set undodir=~/.cache/undo   " backup directory location
set undolevels=10000                 " remember last 10000 changes
" set whichwrap     =b,s,h,l,~,[,],<,>     " all movement keys wrap
"
set ttyfast                        " more smoothness

" -------------------------------------------------------------------------- "
" --------- change mksession ----------------------------------------------- "
" -------------------------------------------------------------------------- "
set sessionoptions+=tabpages    " register tab
set sessionoptions-=blank       " dont't register blank pages

" -------------------------------------------------------------------------- "
" -------- wrap lines ------------------------------------------------------ "
" -------------------------------------------------------------------------- "
" set textwidth=79
" autocmd FileType text setlocal textwidth=79
" set columns=80

set backspace=indent,eol,start    " remove space in indent and end of line
" set breakindent
" set breakindentopt=sbr
" I use a unicode curly array with a <backslash><space>
"'breakat'
set linebreak
set breakat="," "choose caracters causing a line break
set breakat+="." "choose caracters causing a line break

" -------------------------------------------------------------------------- "
" ------------- autoformat options ----------------------------------------- "
" -------------------------------------------------------------------------- "
set formatoptions-=o " dont inser comment leader when pressing <o> or <O>
set formatoptions+=n " recognize number list form formating
set formatoptions+=j " join comment when join lines
" set formatoptions+=] " Respect textwidth rigorously
set formatoptions+=t " allow auto-wrap text
set formatoptions+=c " allow auto-wrap comment
" let formatoptions+="v" "break line on space only
" set formatexpr       " where to break line
":set virtualedit=insert

if has('unix')
    " ---------------------------------------------------------------------- "
    "  ------ Unix config -------------------
    " ---------------------------------------------------------------------- "
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
    " ---------------------------------------------------------------------- "
    "  ------ Windows config -------------------
    " ---------------------------------------------------------------------- "
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

" -------------------------------------------------------------------------- "
"                         sourcing 
" -------------------------------------------------------------------------- "
execute 'source ' VimrcPath('mappings.vim')
execute 'source ' VimrcPath('plugins.vim')
execute 'source ' VimrcPath('mapping_plugin.vim')
execute 'source ' VimrcPath('colors/colors.vim')
execute 'source ' VimrcPath('coc.vim')

if has('nvim')
	" -------------------------------------------------------------------------- "
	"                         neovide 
	" -------------------------------------------------------------------------- "
	set guifont=Inconsolata:h16
	highlight! Normal guibg=#0F1419
	let g:neovide_transparency=0.8
	let g:neovide_no_idle=v:true
	let g:neovide_cursor_animation_length=0.05
	" let g:neovide_refresh_rate=140
	" let g:neovide_fullscreen=v:true
	" let g:neovide_cursor_vfx_mode = "railgun"
	let g:neovide_cursor_vfx_opacity=200.0
	set signcolumn=number
endif

" -------------------------------------------------------------------------- "
"                         python template 
" -------------------------------------------------------------------------- "
"  apply a template when creating a python file

autocmd BufNewFile *.py :call CheckPyFile()

function! CheckPyFile()
		let s:file = "> FILE:           " . expand("%:t:r") . "." . expand("%:t:e")
		if (getline("1") !~ "# -*- coding: utf-8 -*")
				normal!ggO# -*- coding: utf-8 -*
				normal!o"""
				call append(2, s:file)
				normal!o> AUTEUR:         P. GAUTHIER ( CEA TEAM )
				let created = "> CREATED         " . expand(strftime('%y/%m/%d %T'))
				call append(5, created)
				let modif = "> LAST MODIFIED:  " . expand(strftime('%y/%m/%d %T'))
				call append(6, modif)
				normal!GGo
				normal!o> DESCRIPTION:    TODO    
				normal!o"""
				normal!o
				normal!o
				normal!odef main() -> None:
				normal!o""" Main script's function """
				normal!oreturn None
				normal!o
				normal!o
				normal!oif '__main__' == __name__:
				normal!omain()
				/\<TODO\>
		endif
endfunction

" When closing the buffer the 'modified date' is updated
autocmd BufWinLeave *.py :call UpdateDatePyFile()
function! UpdateDatePyFile()
		if (stridx(getline("7"), "> LAST MODIFIED:  ") !~ -1)
				:7d
				let modif = "> LAST MODIFIED:  " . expand(strftime('%y/%m/%d %T'))
				call append(6, modif)
				:update
		endif
endfunction
