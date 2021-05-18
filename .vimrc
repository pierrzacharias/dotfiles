" _____________________________________________________________________________ "
" _____________________________________________________________________________ "
" _____________________________________________________________________________ "
"  _             _  _  _            _                               __  _        
" | |           (_)| || |          (_)                             / _|(_)       
" | |__   _   _  _ | || |_  ______  _  _ __     ___   ___   _ __  | |_  _   __ _ 
" | '_ \ | | | || || || __||______|| || '_ \   / __| / _ \ | '_ \ |  _|| | / _` |
" | |_) || |_| || || || |_         | || | | | | (__ | (_) || | | || |  | || (_| |
" |_.__/  \__,_||_||_| \__|        |_||_| |_|  \___| \___/ |_| |_||_|  |_| \__, |
"                                                                           __/ |
"                                                                          |___/
" _____________________________________________________________________________ "
" _____________________________________________________________________________ "
" _____________________________________________________________________________ "

if has('win32')
	set fileformat=dos              " change end-of-line for windows files
endif

set termguicolors                 " Use gui color for terminal
set conceallevel=0                " manage conceal text
" set noequalalways               " do not resize all windows to equal size after closing/opening
" set eadirection                 " Tells when the 'equalalways' option applies
set splitright                    " new windows appeard right vsplit
set lazyredraw                   " don't draw screen while executing macro for speed

set noerrorbells                  " Ring bell for error messages

set spelllang=en                  " syntax check
setglobal helplang=en             " syntax check

set nostartofline                 " going below move the cursor tp the firrst non-blank line

set hls                           " highlight search

" ----------------- indent ---------------------------------------------------
set autoindent                    " autoindent files
set smartindent                   " auto indent while editing
set noexpandtab
set softtabstop=0
set shiftwidth=2
set tabstop=2

set scrolloff=20                    " limit of line to scroll
set showtabline=2                   " always show tab number
set incsearch                       " Show search result while typing
set encoding=utf-8                  " encoding file
filetype plugin indent on           " Enable filetype detection for plugins and indentation options
set nocompatible
set smartcase                       " smart ingorecase when searching
set path+=**                        " add previous directory for gf, :find, ..

" set diffopt+=indent-heuristica      " option for diffmmode
set wildmenu                        " activate completion menu
set laststatus=2                    " activate always status bar

set ai                              " acitve indentation objects
set showcmd                         " activate show command area below statusline
" set cmdheight=2                   " Better display for messages
set updatetime=100                  " Smaller updatetime for CursorHold & CursorHoldI
set mouse=a                         " enbable mouse functionnalities
set incsearch                       " Show search result while typing
set hidden                          " buffer are hidden when abandonned
set autoread                        " automatically reload files changed on disk
set switchbuf=useopen               " quickfix reuses open windows

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
            \ if line("'\"") > 0 && line ("'\"") <= line("$") |
            \   exe "normal! g'\"" |
            \ endif

set nobackup                        " don't make a backup before overwritting a file
set nowritebackup                   " don't make a backup before overwritting a file
set noswapfile                      " No swap files for unmodified buffers
augroup Swap
    autocmd CursorHold,BufWritePost,BufReadPost,BufLeave *
                \ if isdirectory(expand("<amatch>:h")) | let &swapfile = &modified | endif
augroup END

syntax on                           " activate syntax higlight

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

if has('nvim')
else
	set ttyfast                        " more smoothness, removed ion neobim
endif

"  change mksession 
set sessionoptions+=tabpages    " register tab
set sessionoptions-=blank       " dont't register blank pages

set backspace=indent,eol,start    " remove space in indent and end of line

" Show visual markers
set listchars=tab:»\ ,trail:·,extends:❯,precedes:❮,nbsp:␣,eol:↲
set list
",eol:↲ or ¬ , tab: »·
set showbreak=↪\ \ \ 

" Don't lose visual selection after shifting
xnoremap < <gv
xnoremap > >gv
"  autoformat options 
set formatoptions-=o " dont inser comment leader when pressing <o> or <O>
set formatoptions+=n " recognize number list form formating
set formatoptions+=j " join comment when join lines
set formatoptions+=t " allow auto-wrap text
set formatoptions+=c " allow auto-wrap comment

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



" _____________________________________________________________________________ "
" _____________________________________________________________________________ "
" _____________________________________________________________________________ "
" _____________________________________________________________________________ "
" _____________________________________________________________________________ "
"                 _____  _   _  _____  _____  _____ ___  ___       
"                /  __ \| | | |/  ___||_   _||  _  ||  \/  |     
"                | /  \/| | | |\ `--.   | |  | | | || .  . |     
"                | |    | | | | `--. \  | |  | | | || |\/| |     
"                | \__/\| |_| |/\__/ /  | |  \ \_/ /| |  | |     
"                 \____/ \___/ \____/   \_/   \___/ \_|  |_/     
"          ______  _   _  _   _  _____  _____  _____  _____  _   _  _____         
"          |  ___|| | | || \ | |/  __ \|_   _||_   _||  _  || \ | |/  ___|
"          | |_   | | | ||  \| || /  \/  | |    | |  | | | ||  \| |\ `--. 
"          |  _|  | | | || . ` || |      | |    | |  | | | || . ` | `--. \
"          | |    | |_| || |\  || \__/\  | |   _| |_ \ \_/ /| |\  |/\__/ /
"          \_|     \___/ \_| \_/ \____/  \_/   \___/  \___/ \_| \_/\____/ 
"                                                                
" _____________________________________________________________________________ "
" _____________________________________________________________________________ "
" _____________________________________________________________________________ "

"https://stackoverflow.com/questions/18319284/vim-sign-column-toggle
function! ToggleSignColumn() 
    if !exists("b:signcolumn_on") || b:signcolumn_on
        set signcolumn=no
        let b:signcolumn_on=0
    else
        set signcolumn=auto
        let b:signcolumn_on=0
    endif
endfunction

function! FillLine( str, str_end )
    " set tw to the desired total length
    let tw = 77
    if tw==0 | let tw = 77 | endif
    " strip trailing spaces first
    .s/[[:space:]]*$//
    " calculate total number of 'str's to insert
    let reps = (tw - col("$")) / len(a:str)
    " insert them, if there's room, removing trailing spaces (though forcing
    " there to be one)
    if reps > 0
        .s/$/\=(' '.repeat(a:str, reps))/
		.s/$/\=(' '.repeat(a:str_end, 1))/
    endif
endfunction

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



" _____________________________________________________________________________ "
" _____________________________________________________________________________ "
" _____________________________________________________________________________ "
"                  ______   ___   _____  _____  _____ 
"                  | ___ \ / _ \ /  ___||_   _|/  __ \
"                  | |_/ // /_\ \\ `--.   | |  | /  \/
"                  | ___ \|  _  | `--. \  | |  | |    
"                  | |_/ /| | | |/\__/ / _| |_ | \__/\
"                  \____/ \_| |_/\____/  \___/  \____/
"           ___  ___  ___  ______ ______  _____  _   _  _____  _____         
"           |  \/  | / _ \ | ___ \| ___ \|_   _|| \ | ||  __ \/  ___|
"           | .  . |/ /_\ \| |_/ /| |_/ /  | |  |  \| || |  \/\ `--. 
"           | |\/| ||  _  ||  __/ |  __/   | |  | . ` || | __  `--. \
"           | |  | || | | || |    | |     _| |_ | |\  || |_\ \/\__/ /
"           \_|  |_/\_| |_/\_|    \_|     \___/ \_| \_/ \____/\____/ 
"                                      _                _                       
"                                     | |              (_)       
"                _ __    ___    _ __  | | _   _   __ _  _  _ __  
"               | '_ \  / _ \  | '_ \ | || | | | / _` || || '_ \ 
"               | | | || (_) | | |_) || || |_| || (_| || || | | |
"               |_| |_| \___/  | .__/ |_| \__,_| \__, ||_||_| |_|
"                              | |                __/ |          
"                              |_|               |___/
" _____________________________________________________________________________ "
" _____________________________________________________________________________ "
" _____________________________________________________________________________ "

" ----------------- Leader key ---------------------------------------------- "
" let mapleader="<TAB>"

" -------------------------------------------------------------
"  ALt key activation
"  -----------------------------------------------------------
if has('nvim')
else
	execute "set <M-f>=\ef"
	execute "set <M-'>=\e'"
	execute "set <M-q>=\eq"
	execute "set <M-w>=\ew"
	execute "set <M-e>=\ee"
	execute "set <M-r>=\er"
	execute "set <M-t>=\et"
	execute "set <M-y>=\ey"
	execute "set <M-u>=\eu"
	execute "set <M-i>=\ei"
	execute "set <M-o>=\eo"
endif

" --------------------------------------------------------------------------- "
" # Mappings
" --------------------------------------------------------------------------- "
nnoremap <silent> "" "+yiw
nnoremap <silent> "<space> "+yy

" for comment line
map co :call FillLine('-', '#')<CR>    
map c' i#<Esc> :call FillLine('-', '#')<CR>    
" for print line
map cp :call FillLine('-', '")')<CR>    

nnoremap sv *``
map <space> y
map ck i\<CR><ESC>
" map M <Nop>
nnoremap H ^
nnoremap L g_
inoremap <M-f> <Esc>:update<CR>
nnoremap <M-f> <Esc><Esc>:update<CR>
" nnoremap <M-p> ]<space>"+pkJK 
nnoremap K i<cr><esc>
nnoremap c<space> i<space><Esc>
nnoremap <M-'> i"+\"<Esc>hK


" -------------------- next error quickfix list ----------------------------- #
nnoremap ]c :cnext<CR>
nnoremap [c :cprev<CR>
nnoremap ]l :lnext<CR>
nnoremap [l :lprev<CR>

" -------- autoformat files ------------------------------------------------- "
nnoremap <silent> <F9> :r! python -m black -l 79 expand('%:p') 

" ---- e.g press 1 to go to buffer 1 -----------
" nnoremap <silent> <leader>gt :exe 'tabn' nr2char(getchar())<cr> "e.g press 1 to go to tab1
"
autocmd BufReadPost * map <M-q> :tabn1<CR>
map <M-q> :tabn1<CR>
map <M-w> :tabn2<CR>
map <M-e> :tabn3<CR>
map <M-r> :tabn4<CR>
map <M-t> :tabn5<CR>
map <M-y> :tabn6<CR>
map <M-u> :tabn7<CR>
map <M-i> :tabn8<CR>
map <M-o> :tabn9<CR>
" map <M-q> :tabn10<CR>

" ---- reload config -----------
nnoremap <leader>vo :vsp $MYVIMRC<CR>
nnoremap <leader>vs :source $MYVIMRC<CR>

" from right windows copy current word in register s, go replace with it to the left windows and search the replaced word to reppeat
nnoremap s, "syiw<CR><C-w>h*``cgn<C-R>s<Esc><Esc>
nnoremap s, "syiw<CR><C-w>l*``cgn<C-R>s<Esc><Esc>         " from left windows ...
nnoremap s, "syiw<CR><C-w>j*``cgn<C-R>s<Esc><Esc>         " from bottom windows ...
nnoremap s, "syiw<CR><C-w>k*``cgn<C-R>s<Esc><Esc>         " from top windows ...

" ---- close buffers on left, rigth, ..
nnoremap ql <C-w>l:wq<CR>
nnoremap qh <C-w>h:wq<CR>
nnoremap qj <C-w>j:wq<CR>
nnoremap qk <C-w>k:wq<CR>
nnoremap qq :x<CR>

" ------ replace inner word and search replace word to reapeat -------
nnoremap c* *``cgn
nnoremap c# #``cgN

" ----- close buffer
" nnoremap qb <Esc>:bd!<CR>

noremap j gj
noremap k gk

nnoremap <Leader>h :vert terminal<CR>

nnoremap <Leader>l :let &scrolloff=100-&scrolloff<CR>                " make edit line always centered
nnoremap <silent><Leader>t :TagbarToggle<CR>

"
" Loclist
"
nnoremap <silent> <F3> :call LNext(0)<CR>
nnoremap <silent> <F4> :call LNext(1)<CR>

"
nnoremap <C-w>p :lopen<CR>                  " open loclist
nnoremap <C-p> :lcl<CR>                     " close loclist
" nnoremap <M-u> :lla <CR>                    " navigate to last item in list

nnoremap <silent> <F5> :call ToggleQuickFix()<cr>"
"
" compile with :make
"
" nnoremap <silent><Leader>r :make<CR>

"
" search
"
nnoremap <silent> ff :nohlsearch<Bar>:echo<CR> " Press ff to turn off highlighting and clear any message already displayed.
" noremap <F2> :set hlsearch! hlsearch?<CR> " Press F6 to toggle high lighting on/off, and show  current value.

"
" registers
"
" List contents of all registers
" nnoremap <silent> "" :registers "0123456789abcdefghijklmnopqrstuvwxyz*+.<CR>
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor
" Clean Registers

"
" Tags
"
nnoremap <C-W>[ :call FollowTag()<CR>zt   " Follow tag in a vertical window
"
" signcolumn_on
"
nnoremap <Leader>2 :call ToggleSignColumn()<CR>            " Toggle signcolumn. Works only on vim>=8.0 or NeoVim

"
" python
"
" autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
" autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
" nnoremap  <Leader>e :call SaveAndExecutePython()<CR>
" vnoremap  <Leader>e :<C-u>call SaveAndExecutePython()<CR>
"
"
" python pdb
"
" Add easy nbreakpoint shortcut with correct identation
nnoremap <silent> <C-Y> :let a='import pdb; pdb.set_trace()'\|put=a<CR>kJi<CR><ESC>

"
" split
"
noremap <C-w>f :vertical resize 84<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"max height Ctrl-w _
"maz width Ctrl-w |.
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up>  :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>





" _____________________________________________________________________________ "
" _____________________________________________________________________________ "
" _____________________________________________________________________________ "
"                ______  _      _   _  _____  _____  _   _  _____                
"                | ___ \| |    | | | ||  __ \|_   _|| \ | |/  ___|
"                | |_/ /| |    | | | || |  \/  | |  |  \| |\ `--. 
"                |  __/ | |    | | | || | __   | |  | . ` | `--. \
"                | |    | |____| |_| || |_\ \ _| |_ | |\  |/\__/ /
"                \_|    \_____/ \___/  \____/ \___/ \_| \_/\____/ 
"                                                                 
" _____________________________________________________________________________ "
" _____________________________________________________________________________ "
" _____________________________________________________________________________ "

if has('win32')
    let g:plug_install_files = '$HOME\vimfiles\plugged'
endif
if has('unix')
    let g:plug_install_files = '$HOME/.vim/plugged'
endif
call plug#begin(g:plug_install_files)

" --------------------------------------------------------------
" ------------------ Neovim plugins  ---------------------------
" --------------------------------------------------------------
"  if has('nvim')
Plug 'neovim/nvim-lspconfig'                           " lsp configuration
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/completion-treesitter'
Plug 'nvim-lua/completion-nvim'                        " completion plugin
Plug 'kristijanhusak/completion-tags'                  " better using tag in completion
Plug 'simrat39/symbols-outline.nvim'                   " tree with variables using lsp
Plug 'folke/trouble.nvim'                              " pretty list for diagnostic, reference, quickfix, ..
Plug 'folke/lsp-colors.nvim'                           " colorscheme for lsp

Plug 'norcalli/nvim-colorizer.lua'                     " show colors from hex code
Plug 'kyazdani42/nvim-web-devicons'                    " additionnal icons for neovim
Plug 'hoob3rt/lualine.nvim'                            " statusbar
Plug 'mkitt/tabline.vim'                               " minimal tabiline
" Plug 'romgrk/barbar.nvim'                            " tabbar 
" Plug 'glepnir/indent-guides.nvim'                    " indent line
Plug 'lukas-reineke/indent-blankline.nvim'             " show indent on blankline
Plug 'Xuyuanp/scrollbar.nvim'                          " add a scrollbar

" Plug 'Shougo/denite.nvim'                            " file , buffers manager
" Plug 'ncm2/float-preview.nvim/'

" --------------------------------------------------------------
" ---------------------- To config -----------------------------
" --------------------------------------------------------------
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'RRethy/vim-illuminate'                         " highlihgt word under cursor
" Plug 'mhinz/vim-mix-format'
" Plug 't9md/vim-textmanip'                            " move blocks of text easy
" Plug 't9md/vim-choosewin'
" Plug 'junegunn/vim-easy-align'                       " Helps alignment TODO: LEARN
" Plug 'sjl/gundo.vim'                                 " add undo tree
" Plug 'chimay/wheel/'                                 " better join lines
" Plug 'jeetsukumaran/ctrlp-pythonic.vim'
" Plug 'junegunn/loclisteasy-align'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'                              " fuzzy finder Plug 'junegunn/fzf.vim'

" --------------------------------------------------------------
" ---------------------- New -----------------------------------
" --------------------------------------------------------------
"
" --------------------------------------------------------------
" ---------------------- Navigation ----------------------------
" --------------------------------------------------------------
" Plug 'KKPMW/vim-sendating'                           " Allow incrementing date like int
" Plug 'majutsushi/tagbar'                             " show tags
" Plug 'dahu/vim-fanfingtastic'                        " Extend search with f,t, ...
Plug 'justinmk/vim-sneak'                              " 2 - characters jump
Plug 'kshenoy/vim-signature'                           " show mark in sign
Plug 'mhinz/vim-grepper'                               " grep tool
Plug 'brooth/far.vim'                                  " find and replace in interactive windows
Plug 'jeetsukumaran/vim-indentwise'                    " motions based on indent
Plug 'Shougo/echodoc.vim'                              " echo funcitons doc
Plug 'fcpg/vim-shore'                                  " j/k to first non-blank
Plug 'chrisbra/NrrwRgn'                                " edit selection 
Plug 'moll/vim-bbye'                                   " quit buffers properly
Plug 'mattn/vim-findroot'                              " Find root of project
Plug 'tpope/vim-surround'                              " add object with (, {, {, ...
Plug 'tpope/vim-commentary'                            " comment out
Plug 'tpope/vim-endwise'                               " end certain structures automatically
Plug 'tpope/vim-repeat'                                " Allow to repeat with . some plugins actions
Plug 'svermeulen/vim-subversive'                       " replace content with register
Plug 'tpope/vim-unimpaired'                            " exchange lines relativvely
Plug 'AndrewRadev/sideways.vim'                        " move func args
"
" --------------------------------------------------------------------------- "
" --------------------- Session Management ---------------------------------- "
" --------------------------------------------------------------------------- "
" Plug 'mhinz/vim-startify'                           " start page for vim
" Plug 'vim-scripts/restore_view.vim'                 " replaced by vim-stay

" --------------------------------------------------------------------------- "
" ----------------------- tmux ---------------------------------------------- "
" --------------------------------------------------------------------------- "
Plug 'christoomey/vim-tmux-navigator'                  " navigatte between tmux pane
" Plug 'edkolev/tmuxline.vim'                            " additionnal icons for neovim

" --------------------------------------------------------------------------- "
" ---------------------- IDE masterrace ------------------------------------- "
" --------------------------------------------------------------------------- "
" Plug 'MathSquared/vim-python-sql'
Plug 'preservim/nerdtree'                              " file explorer
Plug 'maxboisvert/vim-simple-complete'                 " as-you-type keyword completion

" --------------------------------------------------------------------------- "
" ---------------------- code completion / inspect -------------------------- "
" --------------------------------------------------------------------------- "
" Plug 'neoclide/coc.nvim', {'branch': 'release'}        " new community driven completion engine
" Plug 'dense-analysis/ale'                            " syntax checking and semantic errors

" Plug 'MathSquared/vim-python-sql'
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
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}           " async executions
" Plug 'sillybun/vim-repl'                             " python terminal
" Plug 'https://github.com/gotcha/vimpdb'
" Plug 'https://github.com/thinca/vim-quickrun'          " Run python and others easely
" Plug 'romainl/vim-qf'                                " help with the quickfix lists
" Plug 'wincent/terminus'                              " send text to as windows
"
" --------------------------------------------------------------
" ---------------------- buffers -------------------------------
" --------------------------------------------------------------
Plug 'jeetsukumaran/vim-buffergator'                   " buffer list
" --------------------------------------------------------------
"- ---------------------- Python -------------------------------
" --------------------------------------------------------------
Plug 'mgedmin/python_open_module.vim'                  " Python standard library source code
Plug 'FooSoft/vim-argwrap'                             " wrap functions args
Plug 'kkoomen/vim-doge'                                " Docstring generator
" Plug 'jmcantrell/vim-virtualenv'                       " Tool for python venv
" Plug 'tell-k/vim-autopep8'                           " autoformat python
" Plug 'wincent/terminus'                              " send text to as windows
" Plug 'ivanov/vim-ipython' 
"
" --------------------------------------------------------------
" ---------------------- Objects -------------------------------
" --------------------------------------------------------------
Plug 'flwyd/vim-conjoin'                               " better join lines
" Plug 'christoomey/vim-system-copy'                   " mapping for clipoard
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
" Plug 'ludovicchabant/vim-gutentags'                      " help to generate tags
" Plug 'mgedmin/pytag.vim'                             " better tags for python
" Plug 'mgedmin/python-imports.vim'                    " Insert Python import statements computed from tags, bound to <F5>
" Plug 'universal-ctags/ctags'                         " help to generate tags
"
" --------------------------------------------------------------
" ---------------------- Theming -------------------------------
" --------------------------------------------------------------
" Plug 'Th3Whit3Wolf/space-nvim'
Plug 'marko-cerovac/material.nvim'
" Plug 'ayu-theme/ayu-vim'                               " theme
Plug 'MTDL9/vim-log-highlighting'                      " highlight .log files
Plug 'JMcKiern/vim-venter'                             " center a windows
Plug 'hrsh7th/vim-unmatchparen'                        " highlight unmatch surrounding
Plug 'ryanoasis/vim-devicons'                        " add icon
" Plug 'vim-airline/vim-airline'                         " add visual line
" Plug 'vim-airline/vim-airline-themes'                  " theme for airline
Plug 'camspiers/animate.vim'                           " windows move animation
Plug 'luochen1990/rainbow'                             " rainbow parenthesis
" Plug 'Yggdroot/indentLine'                             " add visual indent
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'psliwka/vim-smoothie'                            " Better scroll

" Plug 'miyakogi/conoline.vim'                         " highlights the line of the cursor
" Plug 'ipod825/war.vim'
" Plug 'camspiers/lens.vim'                            " resize windows
" Plug 'https://github.com/vim-scripts/fontzoom.vim'   " change font with +/-
" Plug 'troydm/zoomwintab.vim'                         " zoom on a tab
" Plug 'bluz71/vim-moonfly-statusline'                 " Minimal status bar
" Plug 'altercation/vim-colors-solarized'              " color theme
" Plug 'junegunn/seoul256.vim'
" Plug 'vim/killersheep'                               " absolutely essential
" old themes:
" Plug 'morhetz/gruvbox'                               " color theme
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
" Plug 'lervag/vimtex'                                   " Latex plugin
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
" Plug 'tpope/vim-vinegar'
" mileszs/ack.vim                                      " wrap grep tools in vim
"
" --------------------------------------------------------------
" ---------------------- REMOVED -------------------------------
" --------------------------------------------------------------
" Plug 'tmhedberg/SimpylFold'
" Plug 'gotcha/vimpdb'
" Plug 'mattboehm/vim-unstack'                         " open trace, don't  work :(
" Plug 'tpope/vim-dispatch'                            " could be an alternative to quickrun
" Plug 'ervandew/supertab'
" Plug 'skywind3000/vim-auto-popmenu'
" Plug 'liuchengxu/vim-clap'


call plug#end()

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" <<<<<<<<<<<<<<<<<<<< Load lua configuration >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "

if has('nvim')
	" some neovim packges are configured here
	" lua require('$HOME/.vim/lua/lua_config')
	lua require('lua_config')
endif

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" <<<<<<<<<<<<<<<<<<<< Plugin Configuration >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "

if has('nvim')
	" Use completion-nvim in every buffer
	autocmd BufEnter * lua require'completion'.on_attach()
endif

" -------------------------------------------------------------
"  scroll bar
"  ------------------------------------------------------------
augroup ScrollbarInit
  autocmd!
  autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
  autocmd WinLeave,FocusLost             * silent! lua require('scrollbar').clear()
augroup end
let g:scrollbar_shape = {
    \ 'head': '▎',
    \ 'body': '▎',
    \ 'tail': '▎',
    \ }
let g:scrollbar_highlight = {
    \ 'head': 'Insert',
    \ 'body': 'Insert',
    \ 'tail': 'Insert',
    \ }
let g:scrollbar_right_offset = 0


" -------------------------------------------------------------
"  Grepper
"  ------------------------------------------------------------
let g:grepper_quickfix=1          " USe location list
let g:grepper_open=1
let g:grepper_switch=1              " Go into the location list after a search
let g:grepper_side=1                " Open a new window and show matches with surrounding contextu
nmap gs  <plug>(GrepperOperator)
xmap gs  <plug>(GrepperOperator)

" --------------------------------------------------------------
"  Venter
" --------------------------------------------------------------
" let g:venter_use_textwidth=1
let g:venter_close_tab_if_empty=1
let g:venter_disable_vertsplit=v:true

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
let g:indent_guides_guide_size=2
let g:indent_guides_auto_colors=1
let g:indent_guides_color_change_percent = 8
let g:indent_guides_start_level = 2

" --------------------------------------------------------------
" gundo
" --------------------------------------------------------------
" let g:gundo_prefer_python3 = has('python3')  " Unbreak broken default config
 
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
" let g:gitgutter_signs = 0
" let g:gitgutter_sign_added = '+'
" let g:gitgutter_sign_modified = '~'
" let g:gitgutter_sign_removed = '-'

" --------------------------------------------------------------
" tagbar
" --------------------------------------------------------------
" let g:tagbar_compact = 1
" let g:tagbar_show_tag_linenumbers = 1
" let g:tagbar_singleclick = 1
" let g:tagbar_show_linenumbers = 2
" " let g:tagbar_iconchars = ["\u2ba9", "\u2bae"]
" let g:tagbar_iconchars = ["🡲", "🡳"]
" let g:tagbar_autoshowtag = 0
" " let g:tagbar_scopestrs = {
" " 		\    'class': "\uf0e8",
" " 		\    'const': "\uf8ff",
" " 		\    'constant': "\uf8ff",
" " 		\    'enum': "\uf702",
" " 		\    'field': "\uf30b",
" " 		\    'func': "\uf794",
" " 		\    'function': "\uf794",
" " 		\    'getter': "\ufab6",
" " 		\    'implementation': "\uf776",
" " 		\    'interface': "\uf7fe",
" " 		\    'map': "\ufb44",
" " 		\    'member': "\uf02b",
" " 		\    'method': "\uf6a6",
" " 		\    'setter': "\uf7a9",
" " 		\    'variable': "\uf71b",
" " 		\ }
" https://www.reddit.com/r/vim/comments/d77t6j/guide_how_to_setup_ctags_with_gutentags_properly/
" let g:gutentags_modules = ['ctags', 'gtags_cscope'] "enable gtags module
" let g:gutentags_project_root = ['.root']   " config project root markers.
" let g:gutentags_cache_dir = expand('~/.cache/tags')
" let g:gutentags_generate_on_write = 1
" let g:gutentags_generate_on_new = 1
" let g:gutentags_generate_on_missing = 1
" let g:gutentags_generate_on_write = 1
" let g:gutentags_generate_on_empty_buffer = 0
" let g:gutentags_ctags_extra_args = [
"       \ '--tag-relative=yes',
"       \ '--fields=+ailmnS',
"       \ ]
" let g:tagbar_autoshowtag = 1
" " let g:tagbar_previewwin_pos = "aboveleft"
" command! MakeTags !ctags -R .
" " generate databases in my cache directory, prevent gtags files polluting my project
" let g:gutentags_ctags_exclude = [
" 			\ "*.min.js", "*.min.css", "build", "vendor", ".git",
" 			\ '*.tmp', '*.csproj.user', '*.cache', '*.pdb', '*.pyc',
" 			\ '*.class', '*.sln', "node_modules", '*.less', '*.scss',
" 			\ '*.exe', '*.dll', '*.mp3',  '*.ogg', '*.swp',
" 			\ '*.swo', '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png',
"       \ '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz',
" 			\ '*.tar.bz2', '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx',
"       \ "*.vim/bundle/*", "tags*" , "*.idea/*"]
" " generate datebases in my cache directory, prevent gtags files polluting my project
" let g:gutentags_plus_switch = 1      " change focus to quickfix window after search
" set previewheight=60                 " remap tag open in new split windows

" --------------------------------------------------------------
" indent
" --------------------------------------------------------------
" let g:indentLine_setColors = 1
" " let g:indentLine_color_term = 15
" let g:indentLine_color_gui = '#F29718'
" " let g:indentLine_bgcolor_gui = '#B8CC52'
" " let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_char = "▎"
" " let g:indentLine_leadingSpaceEnabled=1
" let g:indentLine_showFirstIndentLevel=0

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
" hide brackets arounds icon node
augroup nerdtree
  autocmd!
  autocmd FileType nerdtree syntax clear NERDTreeFlags
  autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\]" contained conceal containedin=ALL
  autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\[" contained conceal containedin=ALL
  autocmd FileType nerdtree setlocal conceallevel=3
  autocmd FileType nerdtree setlocal concealcursor=nvic
augroup END

let NERDTreeQuitOnOpen=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']
let g:NERDTreeHighlightCursorline=1
let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden=1
let g:NERDTreeShowLineNumbers=1   " display line number
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeDirArrowExpandable='⮞'
let g:NERDTreeDirArrowCollapsible='⮟'
let NERDTreeStatusline=""

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
" airline
" -------------------- theme ------------------------------------------------ "
if has('nvim')
else
	let g:airline_theme = 'desertink'

	" -------------------- general options -------------------------------------- "
	let g:airline_inactive_collapse=1
	let g:airline_inactive_alt_sep=1
	let g:airline_powerline_fonts = 1
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#show_buffers = 0
	let g:airline#extensions#tabline#show_tabs = 1
	" enable/disable displaying tab type (e.g. [buffers]/[tabs]) >
	let g:airline#extensions#tabline#close_symbol = ''
	let g:airline#extensions#tabline#show_close_button = 0
	" let g:airline#extensions#tabline#buffer_min_count = 0   " show tabline only if there is more than 1 buffer

	let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
	let g:airline#extensions#tabline#fnamemod = ':t' " show only file name on tabs

	let g:airline#extensions#tabline#show_tab_type = 1
	"  enable/disable displaying tab number in tabs mode. >

	let g:airline#extensions#tabline#show_splits = 0
	let g:airline#extensions#tabline#buffer_idx_mode=0
	let g:airline#extensions#tabline#show_tab_nr=1
	let g:airline#extensions#tabline#tab_nr_type=0
	let g:airline#extensions#tabline#buffer_nr_show=0

	" let g:airline#extensions#tabline#buffer_nr_format = '%s:'

	" Show superindex numbers in tabline

	" let g:airline#themes#clean#palette = 1
	" let g:airline_stl_path_style = 'short'
	" let g:airline_detect_paste=1
	" let g:airline_inactive_alt_sep=0
	let g:airline#extensions#whitespace#checks = ['']
	let g:airline_skip_empty_sections = 1
	"
	" --------------- extensions ------------------------------------------------
	let g:airline#extensions#tagbar#enabled = 0
	let g:airline#extensions#tagbar#flags = 'f'
	let g:airline#extensions#gutentags#enabled = 1
	let g:airline#extensions#grepper#enabled = 1
	" let g:airline#extensions#virtualenv#enabled = 1         " Enable virtualenv plugin
	let g:airline#extensions#coc#enabled = 0

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
	let g:airline_section_y = airline#section#create([
				\ '%{("")}' . "│" . "",
				\ ])
	let g:airline_section_warning = ''
	" let g:airline_section_error = ''
	let g:airline#extensions#default#layout = [['a', 'c'], ['warning', 'error', 'z']]

	" ---------------- mapping tab ---------------------------------------------- "
	let g:airline#extensions#tabline#buffer_idx_format = {
					\ '0': 'Q',
					\ '1': 'W',
					\ '2': 'E',
					\ '3': 'R',
					\ '4': 'T',
					\ '5': 'Y',
					\ '6': 'U',
					\ '7': 'I',
					\ '8': 'O',
					\ '9': 'P'
					\}
endif

" --------------------------------------------------------------
" vimtex
" --------------------------------------------------------------
"let g:vimtex_enabled=1
"let g:livepreview_previewer = 'zathura'
"let g:vimtex_view_general_viewer = 'zathura'
"" let g:livepreview_engine = 'lualatex'
"let g:vimtex_compiler_method = 'latexmk'
"" let g:vimtex_compiler_latexmk_engines = 'lualatex'
"" See $pdf_mode = 4 in .latexmk for lualatx
"let g:vimtex_compiler_latexmk = {
"    \ 'backend' : 'jobs',
"    \ 'background' : 1,
"    \ 'build_dir' : '',
"    \ 'callback' : 1,
"    \ 'continuous' : 1,
"    \ 'executable' : 'latexmk',
"    \ 'options' : [
"        \   '-shell-escape',
"        \   '-silent',
"        \   '-gg',
"        \   '-lualatex'
"    \ ],
"    \}
""
"let g:tex_flavor = 'latex'

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

let g:startify_custom_header = 'startify#center(startify#fortune#cowsay())'
let g:startify_custom_header = [
			\ '                              ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄                 ',
			\ '                       ▄▄▄▄█▀▀▀            ▀▀██               ',
			\ '                    ▄███▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█▄▄▄           ',
			\ '                  ▄▀▀ █    ▀█▄▀▄▀██████ ▀█▄▀▄▀████▀           ',
			\ '                  █   █      ▀█▄█▄███▀    ▀▀▀▀▀▀▀ ▀▀▄         ',
			\ '                  █   █ ▄▄▄                     ▀▀   █        ',
			\ '                  █   ▀█  █    ▄    ▄     ▀███▀       █       ',
			\ '                  █    █  ▀▄      ▄         █        █▀▄      ',
			\ '                   ▀▄▄▀     ▀▀▄▄▄       ▄▄▄▀ ▀▄▄▄▄▄▀▀  █      ',
			\ '                   █▄            ▀▀▀▀▀▀▀              █       ',
			\ '                    █                              ▄██        ',
			\ '                    ▀█▄                         ▄▀▀           ',
			\ '                       ▀█▄                  ▄▀▀               ',
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
" let b:quickrun_config = {
"             \ 'outputter':'error',
"             \ 'outputter/error/success':'buffer',
"             \ 'outputter/error/error':'loclist',
"             \  }

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
let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline '
let g:fzf_layout = { 'down': '30%' }
let g:fzf_commands_expect = 'alt-enter'
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
" command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
" command! -bang -nargs=? -complete=dir Files
" 	\ call fzf#vim#files(<q-args>, {'options': ['--info=inline']}, <bang>0)










" _____________________________________________________________________________ "
" _____________________________________________________________________________ "
" _____________________________________________________________________________ "
"           ___  ___  ___  ______ ______  _____  _   _  _____  _____         
"           |  \/  | / _ \ | ___ \| ___ \|_   _|| \ | ||  __ \/  ___|
"           | .  . |/ /_\ \| |_/ /| |_/ /  | |  |  \| || |  \/\ `--. 
"           | |\/| ||  _  ||  __/ |  __/   | |  | . ` || | __  `--. \
"           | |  | || | | || |    | |     _| |_ | |\  || |_\ \/\__/ /
"           \_|  |_/\_| |_/\_|    \_|     \___/ \_| \_/ \____/\____/ 
"                ______  _      _   _  _____  _____  _   _  _____                
"                | ___ \| |    | | | ||  __ \|_   _|| \ | |/  ___|
"                | |_/ /| |    | | | || |  \/  | |  |  \| |\ `--. 
"                |  __/ | |    | | | || | __   | |  | . ` | `--. \
"                | |    | |____| |_| || |_\ \ _| |_ | |\  |/\__/ /
"                \_|    \_____/ \___/  \____/ \___/ \_| \_/\____/ 
"                                                                 
" _____________________________________________________________________________ "
" _____________________________________________________________________________ "
" _____________________________________________________________________________ "

" -------------------------------------------------------------
"  Trouble nvim
"  -----------------------------------------------------------
if has('nvim')
	nnoremap <leader>xx <cmd>TroubleToggle<cr>
	nnoremap <leader>xw <cmd>TroubleToggle lsp_workspace_diagnostics<cr>
	nnoremap <leader>xd <cmd>TroubleToggle lsp_document_diagnostics<cr>
	nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
	nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
	nnoremap gR <cmd>TroubleToggle lsp_references<cr>
endif

" -------------------------------------------------------------
"  vim sneak
"  ------------------------------------------------------------
nmap z <Plug>Sneak_s
nmap Z <Plug>Sneak_S
" visual-mode
xmap z <Plug>Sneak_s
xmap Z <Plug>Sneak_S
" operator-pending-mode
omap z <Plug>Sneak_s
omap Z <Plug>Sneak_S
let g:sneak#label = 1
highlight Sneak guifg=#14191F guibg=#F29718
highlight SneakScope guifg=#14191F guibg=#F29718

map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T
" -------------------------------------------------------------
"  ALt key activation
"  -----------------------------------------------------------
if has('nvim')
else
	execute "set <M-'>=\e'"
	execute "set <M-d>=\ed"
	execute "set <M-k>=\ek"
	execute "set <M-j>=\ej"
	execute "set <M-L>=\eL"
	execute "set <M-H>=\eH"
	execute "set <M-h>=\eh"
	execute "set <M-l>=\el"
	execute "set <M-;>=\e;"
	execute "set <M-b>=\en"
	execute "set <M-g>=\en"
	execute "set <M-g>=\en"
	execute "set <M-c>=\ep"
	execute "set <M-p>=\ep"
	execute "set <M-m>=\em"
endif

" --------------------------------------------------------------
"  Venter
" --------------------------------------------------------------
map <silent> <M-m> :VenterToggle<cr>

" -------------------------------------------------------------
"  vim sneak
"  ------------------------------------------------------------
nmap z <Plug>Sneak_s
nmap Z <Plug>Sneak_S
" visual-mode
xmap z <Plug>Sneak_s
xmap Z <Plug>Sneak_S
" operator-pending-mode
omap z <Plug>Sneak_s
omap Z <Plug>Sneak_S

" --------- Wipe Grep ------------------------------------------------------- #
nnoremap <M-'> :WipeReg<cr>

" ------------------- Doge -------------------------------------------------- #
nnoremap <M-d> :DogeGenerate<cr>

" -------------------- buffergator ----------------------------------------- "
map <C-b> :BuffergatorOpen<CR>
 
" -------------------------------------------------------------------------- "
" smoothie
" -------------------------------------------------------------------------- "
" nmap <Down> :call  smoothie#downwards()<CR>
" nmap <Up> :call  smoothie#upwards()<CR>"
nmap <Down> <C-d>
nmap <Up> <C-u>

" -------------------------------------------------------------------------- "
" TagBar
" -------------------------------------------------------------------------- "
nnoremap <leader>p :TagbarTogglePause<CR> "Freezes/Unfreezes the Tagbar Windowsf

" -------------------------------------------------------------------------- "
" workspace
" -------------------------------------------------------------------------- "
nnoremap <leader>w :ToggleWorkspace<CR>
nnoremap <leader>bc :CloseHiddenBuffers<CR>
nnoremap <leader>a :ToggleAutosave<CR>

" -------------------------------------------------------------------------- "
" indentwise
" -------------------------------------------------------------------------- "
map <M-k> <Plug>(IndentWisePreviousEqualIndent)
map <M-j> <Plug>(IndentWiseNextEqualIndent)
map <M-L> <Plug>(IndentWisePreviousGreaterIndent)
map <M-H> <Plug>(IndentWisePreviousLesserIndent)
map <M-h> <Plug>(IndentWiseNextLesserIndent)
map <M-l> <Plug>(IndentWiseNextGreaterIndent)
" map <M-E> <Plug>(IndentWisePreviousAbsoluteIndent)
" map <M-e> <Plug>(IndentWiseNextAbsoluteIndent)
" map <M-e> <Plug>(IndentWiseBlockScopeBoundaryBegin)
" map <M-e> <Plug>(IndentWiseBlockScopeBoundaryEnd)"

" -------------------------------------------------------------------------- "
" pythonsense
" -------------------------------------------------------------------------- "
" map <buffer> ac <Plug>(PythonsenseOuterClassTextObject)
" map <buffer> ic <Plug>(PythonsenseInnerClassTextObject)
" map <buffer> af <Plug>(PythonsenseOuterFunctionTextObject)
" map <buffer> if <Plug>(PythonsenseInnerFunctionTextObject)
" map <buffer> ad <Plug>(PythonsenseOuterDocStringTextObject)
" map <buffer> id <Plug>(PythonsenseInnerDocStringTextObject)
" map <buffer> ]] <Plug>(PythonsenseStartOfNextPythonClass)
" map <buffer> ][ <Plug>(PythonsenseEndOfPythonClass)
" map <buffer> [[ <Plug>(PythonsenseStartOfPythonClass)
" map <buffer> [] <Plug>(PythonsenseEndOfPreviousPythonClass)
nnoremap mj <Plug>(PythonsenseStartOfNextPythonFunction)
nnoremap <buffer> Mj <Plug>(PythonsenseEndOfPythonFunction)
map <buffer> mk <Plug>(PythonsenseStartOfPythonFunction)
map <buffer> Mk <Plug>(PythonsenseEndOfPreviousPythonFunction)
" map <buffer> g: <Plug>(PythonsensePyWhere)" easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
" xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
" nmap ga <Plug>(EasyAlign)"

" -------------------------------------------------------------------------- "
" Sideway
" -------------------------------------------------------------------------- "
" to stay in container
" https://github.com/jeetsukumaran/vim-argwrap/commit/30edd6ba0a654d22db62359e4bca9d174f1eead5
nnoremap <Leader>h :SidewaysLeft<cr>
nnoremap <Leader>l :SidewaysRight<cr>
nmap <leader>si <Plug>SidewaysArgumentInsertBefore
nmap <leader>sa <Plug>SidewaysArgumentAppendAfter
nmap <leader>sI <Plug>SidewaysArgumentInsertFirst
nmap <leader>sA <Plug>SidewaysArgumentAppendLast

" -------------------------------------------------------------------------- "
" anzu
" -------------------------------------------------------------------------- "
" <buffer><Leader>cf :Yapf<CR>"

" -------------------------------------------------------------------------- "
" wrap
" -------------------------------------------------------------------------- "
nnoremap <silent> <M-;> :ArgWrap<CR><Esc>

" -------------------------------------------------------------------------- "
" vimtweak
" -------------------------------------------------------------------------- "
" Window transparency shortcuts
" let g:dll = globpath(&rtp, 'vimtweak.dll')
" function Transparency(v)
"   call libcallnr("vimtweak64.dll", "SetAlpha", 255-a:v)
" endfunction
" nnoremap <silent> <leader>a0 :call Transparency(0)<CR>
" nnoremap <silent> <leader>a1 :call Transparency(10)<CR>
" nnoremap <silent> <leader>a2 :call Transparency(20)<CR>
" nnoremap <silent> <leader>a3 :call Transparency(30)<CR>
" nnoremap <silent> <leader>a4 :call Transparency(40)<CR>
" nnoremap <silent> <leader>a5 :call Transparency(50)<CR>
" nnoremap <silent> <leader>a6 :call Transparency(60)<CR>
" nnoremap <silent> <leader>a7 :call Transparency(70)<CR>
" nnoremap <silent> <leader>mm :call libcallnr("vimtweak64.dll", "EnableMaximize", 1)<CR>
" nnoremap <silent> <leader>ms :call libcallnr("vimtweak64.dll", "EnableMaximize", 0)<CR>
" nnoremap <silent> <leader>mt :call libcallnr("vimtweak64.dll", "EnableTopMost", 1)<CR>
" nnoremap <silent> <leader>mp :call libcallnr("vimtweak64.dll", "EnableTopMost", 0)<CR>

" -------------------------------------------------------------------------- "
" submersive
" -------------------------------------------------------------------------- "
" s for substitute
nmap s <plug>(SubversiveSubstitute)
nmap ss <plug>(SubversiveSubstituteLine)
nmap S <plug>(SubversiveSubstituteToEndOfLine)
" Substitute Over Range Motion
nmap <leader>s <plug>(SubversiveSubstituteRange)
xmap <leader>s <plug>(SubversiveSubstituteRange)
nmap <leader>s <plug>(SubversiveSubstituteWordRange)
" need to confirm substitution
nmap <leader>cs <plug>(SubversiveSubstituteRangeConfirm)
xmap <leader>cs <plug>(SubversiveSubstituteRangeConfirm)
nmap <leader>css <plug>(SubversiveSubstituteWordRangeConfirm)

" -------------------------------------------------------------------------- "
" latex
" -------------------------------------------------------------------------- "
" map <C-s> :call Synctex()<cr>
" nnoremap <M-c> :VimtexCompile<cr>
" :copen to see error
nnoremap <M-3> :copen<cr>

" -------------------------------------------------------------------------- "
" animate
" -------------------------------------------------------------------------- "
" nnoremap <silent> <Up>    :call animate#window_delta_height(10)<CR>
" nnoremap <silent> <Down>  :call animate#window_delta_height(-10)<CR>
nnoremap <silent> <Left>  :call animate#window_delta_width(10)<CR>
nnoremap <silent> <Right> :call animate#window_delta_width(-10)<CR>

" -------------------------------------------------------------------------- "
" sendto
" -------------------------------------------------------------------------- "
nmap (l <Plug>SendRight
xmap (l <Plug>SendRightV
nmap (h <Plug>SendLeft
xmap (h <Plug>SendLeftV
nmap (k <Plug>SendUp
xmap (k <Plug>SendUpV
nmap (j <Plug>SendDown
xmap (j <Plug>SendDownV

" -------------------------------------------------------------------------- "
" repl
" -------------------------------------------------------------------------- "
" nnoremap <leader>r :REPLToggle<CR>
" autocmd Filetype python nnoremap <F12> <Esc>:REPLDebugStopAtCurrentLine<Cr>
" autocmd Filetype python nnoremap <F10> <Esc>:REPLPDBN<Cr>
" autocmd Filetype python nnoremap <F11> <Esc>:REPLPDBS<Cr>

" -------------------------------------------------------------------------- "
"" QuickRun
" -------------------------------------------------------------------------- "
"nnoremap <M-i> :QuickRun -mode n<CR>
"vnoremap  <M-i> :QuickRun -mode v<CR>

" -------------------------------------------------------------------------- "
" Fzf
" -------------------------------------------------------------------------- "
nnoremap <Leader> <C-w>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-h': 'split',
  \ 'ctrl-v': 'vsplit' }
" nnoremap mr :Rg<CR>
" nnoremap mt :Tags<CR>
" nnoremap mm :Marks<CR>
" nnoremap <C-n> :BLines<CR>
" nnoremap <C-o> :FzfPreviewProjectFiles<CR>
" nmap <C-D> :Files<CR>
" nmap <C-b> :Buffers<CR>
inoremap <silent><expr> <M-g> coc#refresh()
nmap <Leader>H :History<CR>
" nmap <Leader>: :History:<CR>
" nmap <Leader>gm :Maps<CR>

" -------------------------------------------------------------------------- "
" coc
" -------------------------------------------------------------------------- "
inoremap <silent><expr> <M-g> coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
let g:coc_snippet_next = '<TAB>'
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<TAB>'
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" nmap  <silent><C-c> :CocEnable<CR>
nmap <M-c> :CocDiagnostics<CR>
nmap <silent> <M-p> <Plug>(coc-action-diagnosticPreview)
nmap <silent> gs <Plug>(coc-action-diagnosticToggle)
nmap <silent> gi <Plug>(coc-diagnostic-info)
nmap <silent> gb <Plug>(coc-diagnostic-prev)
nmap <silent> gn <Plug>(coc-diagnostic-next)
" nmap <silent> me <Plug>(coc-diagnostic-error)
nmap <silent> gd <Plug>(coc-action-jumpDefinition)
nmap <silent> ge <Plug>(coc-action-jumpDeclaration)
nnoremap <silent> gr :call :<C-u>show_documentation<CR> " show Documentation
nnoremap <silent><nowait> ga  :<C-u>CocList diagnostics<cr> " Show all diagnostics.
nnoremap <silent><nowait> <Leader>u  :<C-u>CocList extensions<cr> " Manage extensions.
" nnoremap <silent><nowait> mc  :<C-u>CocList commands<cr> " Show commands.
" nnoremap <silent><nowait> mo  :<C-u>CocList outline<cr> " Find symbol of current document.
" nnoremap <silent><nowait> ms  :<C-u>CocList -I symbols<cr> " Search workspace symbols.
" nnoremap <silent><nowait> mp  :<C-u>CocListResume<CR> " Resume latest coc list.
" nmap <C-n> : " CocCommand explorer<CR> " Explorer
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" moving in coc windows
" nnoremap <silent><expr> <down> coc#util#has_float() ? coc#util#float_scroll(1) : "\<down>"
" nnoremap <silent><expr> <up> coc#util#has_float() ? coc#util#float_scroll(0) : "\<up>"
" inoremap <silent><expr> <down> coc#util#has_float() ? <SID>coc_float_scroll(1) : "\<down>"
" inoremap <silent><expr> <up> coc#util#has_float() ? <SID>coc_float_scroll(0) : "\<up>"
" vnoremap <silent><expr> <down> coc#util#has_float() ? <SID>coc_float_scroll(1) : "\<down>"
" vnoremap <silent><expr> <up> coc#util#has_float() ? <SID>coc_float_scroll(0) : "\<up>"/

" -------------------------------------------------------------------------- "
" cocfzflist
" -------------------------------------------------------------------------- "
" " nnoremap <silent> <Leader>a  :<C-u>CocFzfList diagnostics<CR>
" nnoremap <silent> <Leader>b  :<C-u>CocFzfList diagnostics --current-buf<CR>
" nnoremap <silent> <Leader>c  :<C-u>CocFzfList commands<CR>
" " nnoremap <silent> <Leader>e  :<C-u>CocFzfList extensions<CR>
" nnoremap <silent> <Leader>l  :<C-u>CocFzfList location<CR>
" nnoremap <silent> <Leader>o  :<C-u>CocFzfList outline<CR>
" nnoremap <silent> <Leader>s  :<C-u>CocFzfList symbols<CR>
" nnoremap <silent> <Leader>S  :<C-u>CocFzfList services<CR>
" nnoremap <silent> <Leader>p  :<C-u>CocFzfListResume<CR>

" -------------------------------------------------------------------------- "
" NERDTree
" -------------------------------------------------------------------------- "
map <C-n> :NERDTreeToggle<CR>

" call NERDTreeAddKeyMap({
"         \ 'key': 'yy',
"         \ 'callback': 'NERDTreeYankCurrentNode',
"         \ 'quickhelpText': 'put full path of current node into the default register' })

function! NERDTreeYankCurrentNode()
    let n = g:NERDTreeFileNode.GetSelected()
    if n != {}
        call setreg('"', n.path.str())
    endif
endfunction

" -------------------------------------------------------------------------- "
" NVIM LSP
" -------------------------------------------------------------------------- "
if has('nvim')
	autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()
endif










" ___________________________________________________________________________ "
" ___________________________________________________________________________ "
" ___________________________________________________________________________ "
"                             _____  _____  _____ 
"                            /  __ \|  _  |/  __ \
"                            | /  \/| | | || /  \/
"                            | |    | | | || |    
"                            | \__/\\ \_/ /| \__/\
"                             \____/ \___/  \____/
" ___________________________________________________________________________ "
" ___________________________________________________________________________ "
" ___________________________________________________________________________ "


if has('win32') "specific options for windows
    let g:coc_node_path = 'C:\Program Files\nodejs\node'
endif
set shortmess+=c                                             " Remove messages from in-completion menus
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" ---------------- coc color ------------------------------------------------ #
highlight! CocWarningSign guifg=#F07178 guibg=NONE gui=NONE cterm=NONE
highlight! CocErrorSign guifg=#F07178 guibg=NONE gui=NONE cterm=NONE
highlight! CocInfoSign  guifg=#F07178 guibg=NONE gui=NONE cterm=NONE
highlight! CocHintSign guifg=#F07178 guibg=NONE gui=NONE cterm=NONE

highlight! CocWarningHighlight guibg=NONE gui=NONE cterm=NONE 
highlight! CocErrorHighlight guibg=NONE gui=NONE cterm=NONE 
highlight! CocInfoHighlight  guibg=NONE gui=NONE cterm=NONE 
highlight! CocHintHighlight guibg=NONE gui=NONE cterm=NONE 

" use location list
let g:coc_global_extensions = [
			\ 'coc-highlight',
			\ 'coc-lists',
			\ 'coc-python',
			\ 'coc-json',
			\ 'coc-sql',
			\ 'coc-snippets',
			\ 'coc-css',
			\ 'coc-html',
			\ 'coc-diagnostic',
			\ 'coc-syntax'
			\ ]
			" \ 'coc-tag',
			" \ 'coc-tsserver',
			" \ 'coc-vimtex',
			" \ 'coc-sh',
			" \ 'coc-prettier',
" See coc config in "coc-settings.json" with :CocConfig
    "diagnostic.enable":,
" Map Alt-n to trigger completion: >
" function! s:check_back_space() abort
"     let col = col('.') - 1
"     return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
"
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
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
" autocmd CursorHold * silent call CocActionAsync('highlight')
"
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
"
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call CocAction('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call CocAction('runCommand', 'editor.action.organizeImport')
" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}










" _____________________________________________________________________________ "
" _____________________________________________________________________________ "
" _____________________________________________________________________________ "
"                 _____  _____  _      _____ ______  _____          
"                /  __ \|  _  || |    |  _  || ___ \/  ___|
"                | /  \/| | | || |    | | | || |_/ /\ `--. 
"                | |    | | | || |    | | | ||    /  `--. \
"                | \__/\\ \_/ /| |____\ \_/ /| |\ \ /\__/ /
"                 \____/ \___/ \_____/ \___/ \_| \_|\____/ 
" _____________________________________________________________________________ "
" _____________________________________________________________________________ "

" colorscheme 
" colorscheme ayu
" colorscheme space-nvim

colorscheme material

" let ayucolor="mirage"   " for dark version of theme
" set background=dark
set background=dark

set cursorline                               " Highlight current line
hi CursorLine guibg=#0F1419

"set foldtext=clean_fold#fold_text_minimal()    | " Clean folds
"set noshowmode                                | " Don't show mode changes
"" set novisualbell                            | " Don't display visual bell
"" set nowrap                                  | " Don't wrap lines
"" set showmatch                               | " Show matching braces
""
"highlight! Comment cterm=NONE
"highlight Keyword cterm=italic ctermfg=5

" hi Normal guibg=NONE ctermbg=NONE
" hi Terminal guibg=NONE ctermbg=NONE cterm=None

" " Statusline
" if has('unix') "specific options for linux
"     hi! StatusLine cterm=NONE gui=NONE
" endif

" ------------------------------------------------------------------------- "
" ------------------- column limit ---------------------------------------- "
" ------------------------------------------------------------------------- "
" highlight ColorColumn guibg=#272D38
set colorcolumn=80

" ------------------------------------------------------------------------- "
" ------------------- folding --------------------------------------------- "
" ------------------------------------------------------------------------- "
" highlight! Folded guibg=NONE guifg=#6c71c4 gui=underline
" highlight! FoldColumn guibg=darkgrey guifg=#000000

" ------------------------------------------------------------------------- "
" ---------------- search color ------------------------------------------- "
" ------------------------------------------------------------------------- "
" autocmd VimEnter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
" hi! Search gui=NONE guibg=#E6B673 guifg=#000000
" hi! IncSearch gui=NONE guibg=#98971a guifg=#000000

" ------------------------------------------------------------------------- "
" ----------------- current line number color ----------------------------- "
" ------------------------------------------------------------------------- "
hi! CursorLineNr guifg=#FFEE99 guibg=#0F1419
" hi! LineNr guifg=#95E6CB guibg=#272D38
" hi SignColumn guibg=NONE

" ------------------------------------------------------------------------- "
" ---------------------- VertSplit ---------------------------------------- "
" ------------------------------------------------------------------------- "
" hi VertSplit guibg=NONE guifg=#6c71c4 
" hi TjbLine guibg=#000000 guifg=#073642
" hi! Pmenu guibg=#b58900 guibg=#000000

" -------- indent color ----------------------------------------
" hi IndentGuidesEven guibg=#002b36	
" hi IndentGuidesOdd guibg=#00364a

" --------- startify color ---------------------------------------
" highlight! StartifyHeader guifg=#2aa198
" highlight! StartifyFooter guifg=#2aa198

" -------------------------------------------------------------
"  vim signature
"  ------------------------------------------------------------
hi SignatureMarkText guifg=#B0BEC5 guibg=#263238
klsdjfdklsjfsdkljflksjdf
