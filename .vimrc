set diffopt+=indent-heuristic
set nocompatible
set number relativenumber
filetype plugin on
syntax on " This is required
filetype plugin indent on
set path+=**
set wildmenu
map <C-s> :call Synctex()<cr>
"-------------------------------------------------"
" ------------ Omni Menu -------------------------"
"-------------------------------------------------"

" ------------ Kite autocompetion ----------------"
set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2  " always display the status line
"let g:kite_auto_complete=0
let g:kite_tab_complete=1
set completeopt+=menuone   " show the popup menu even when there is only 1 match
set completeopt+=noinsert  " don't insert any text until user chooses a match
"set completeopt-=longest   " don't insert the longest common text
"set completeopt+=preview
autocmd CompleteDone * if !pumvisible() | pclose | endif
set belloff+=ctrlg
" ------------ You complete me ----------------"
"set encoding=utf-8
"let g:ycm_python_interpreter_path = ''
"let g:ycm_python_sys_path = []
"let g:ycm_extra_conf_vim_data = [
  "\  'g:ycm_python_interpreter_path',
  "\  'g:ycm_python_sys_path'
  "\]
"let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'
"let g:ycm_autoclose_preview_window_after_completion=1
"let g:loaded_youcompleteme = 1
	
" ------------ Omni Menu -------------------------"
"set omnifunc=syntaxcomplete#Complete
"inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  "\ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"inoremap <expr> <S-Tab>  pumvisible() ? "\<C-p>" : "\<Up>"
" open omni completion menu closing previous if open and 
" opening new menu without changing the text
"inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
 "\ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" open user completion menu closing previous if 
" open and opening new menu without changing the text
"inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
"------------ vim -auto-popmenu -------------------"
let g:apc_enable_ft = {'*':1}
set cpt=.,k,w,b
" ------------------------------------------------ "
" ------------ tags ------------------------------ "
" ------------------------------------------------ "
command! MakeTags !ctags -R .
"set statusline+=%{gutentags#statusline()}
" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']

" config project root markers.
let g:gutentags_project_root = ['.root']

" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')

" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1
"gutentags will identify current project root by by root markers (.git/.svn/.root). if your project is not in any git/svn repository, gutentags will not generate gtags database for it. To avoid this, you can create an empty .root file in your project root, and gutentags will know where is your project root and generate gtags database for it
" ------------------------------------------------ "
" ------------ hi cursor-------------------------- "
" ------------------------------------------------ "
set background=dark
"set cursorline
"Colet g:conoline_color_normal_dark = 'guifg=#3d321e' 
"let g:conoline_color_insert_dark = 'guifg=#3d321e' 
" ------------------------------------------------ "
" ------------ tab highlight---------------------- "
" ------------------------------------------------ "
set shiftwidth=4
set autoindent
set smartindent
" ------------------------------------------------ "
" ------------ split ----------------------------- "
" ------------------------------------------------ "
set splitbelow splitright
nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" ------------------------------------------------ "
" ------------ Functions ----------------------- "
" ------------------------------------------------ "

" ------------------------------------------------ "
" ------------ colorscheme ----------------------- "
" ------------------------------------------------ "

colorscheme Blade_runner
"colorscheme farout
hi Normal guibg=NONE ctermbg=NONE

" ------------------------------------------------ "
" ------------ airline config ----------------------- "
" ------------------------------------------------ "

let g:airline_theme='deus'
"let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '>'
let g:airline_powerline_fonts = 1

" ------------------------------------------------ "
" ------------ Keyboard Shorcut ------------------- "
" ------------------------------------------------ "
" able/disable relative  line number
map <C-l> :set rnu<CR>
map <C-a> :set nornu<CR>

noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

map <Leader>mm :vnew term://zsh<CR>
nnoremap <leader> <c-w>
"inoremap <S-Tab> <C-p>


execute "set <M-f>=\ef"
nnoremap <M-f> :update<cr>

execute "set <M-c>=\ec"
nnoremap <M-c> :VimtexCompile<cr>

execute "set <M-3>=\e3"
nnoremap <M-3> :copen<cr> 
" List contents of all registers (that typically contain pasteable text).
nnoremap <silent> "" :registers "0123456789abcdefghijklmnopqrstuvwxyz*+.<CR>

command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor
execute "set <M-'>=\e'"
nnoremap <M-'> :WipeReg<cr> 
" List contents of all registers (that typically contain pasteable text).

" ------------------------------------------------ "
" ------------ Plug----------- ------------------- "
" ------------------------------------------------ "

call plug#begin('~/.vim/plugged')

"Plug 'https://github.com/mox-mox/vim-localsearch'
"Plug 'https://github.com/nathanaelkane/vim-indent-guides'
"Plug 'https://github.com/jmcantrell/vim-virtualenv'
"Plug 'https://bolt80.com/gutentags/'
"Plug 'https://github.com/godlygeek/tabular'
"Plug 'https://github.com/vim-latex/vim-latex'
"Plug 'https://github.com/junegunn/goyo.vim'
"Plug 'https://github.com/ervandew/supertab'
"Plug 'skywind3000/vim-auto-popmenu'
"Plug 'liuchengxu/vim-clap'
"Plug 'https://github.com/vim-scripts/AutoComplPop'
"
Plug 'https://github.com/jmcantrell/vim-virtualenv'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/tpope/vim-obsession'
Plug 'jlanzarotta/bufexplorer'
Plug 'https://github.com/vimwiki/vimwiki'
Plug 'https://github.com/majutsushi/tagbar'
Plug 'skywind3000/gutentags_plus'
Plug 'https://github.com/universal-ctags/ctags'
Plug 'https://github.com/miyakogi/conoline.vim'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/vim-scripts/ReplaceWithRegister'
Plug 'https://github.com/christoomey/vim-system-copy'
Plug 'ajmwagar/vim-deus'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'lervag/vimtex'
 call plug#end() "run :PlugInstall

" ------------------------------------------------ "
"---------------- Setup LateX ---------------------"
" ------------------------------------------------ "
" :copen to see error
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
    "\   '-verbose',
    "\   '-file-line-error',
    "\   '-synctex=1',
    "\   '-interaction=nonstopmode',
    \ ],
    \}   


"------------------------------------------------------"
"----------  custom functions         -----------------"
"------------------------------------------------------"

" remove whitespace at end of lines
:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

function! Comment(str)
	":python import sys
	":python sys.argv = ["foo", "bar"]
	":python print "Hello"
	":py b[n] = "lkjklj"	
	let comment = a:str
	r! python ~/Documents/comment_generator/generator.py "" . comment
endfunction

function! TestPy2()
python << EOF
import vim
s = range(10)
vim.command("let sInVim = %s"% s)
EOF
    r type(sInVim)
endfunction








