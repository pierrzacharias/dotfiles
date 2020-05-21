"set termguicolors
filetype plugin indent on
set nocompatible
syntax on 
set number relativenumber
set path+=**
set diffopt+=indent-heuristic
set wildmenu
"
" ██████╗░  ██╗░░░░░  ██╗░░░██╗  ░██████╗░  
" ██╔══██╗  ██║░░░░░  ██║░░░██║  ██╔════╝░  
" ██████╔╝  ██║░░░░░  ██║░░░██║  ██║░░██╗░  
" ██╔═══╝░  ██║░░░░░  ██║░░░██║  ██║░░╚██╗  
" ██║░░░░░  ███████╗  ╚██████╔╝  ╚██████╔╝  
" ╚═╝░░░░░  ╚══════╝  ░╚═════╝░  ░╚════╝░  

call plug#begin('~/.vim/plugged')
"
Plug 'michaeljsmith/vim-indent-object' " New text object, based on indentation levels.
Plug 'maxboisvert/vim-simple-complete'
Plug 'sheerun/vim-polyglot'                            " synthax checker
"Plug 'https://github.com/godlygeek/tabular'            " manage tabulation TODO : configure
Plug 'https://github.com/svermeulen/vim-subversive'    " replace content with register
Plug 'preservim/nerdtree'                              " show file tree
Plug 'https://github.com/majutsushi/tagbar'            " show tabs
"Plug 'https://github.com/airblade/vim-gitgutter'      " git helper TODO : configure
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'jlanzarotta/bufexplorer'                         " help to manage opened buffers
Plug 'skywind3000/gutentags_plus'                      " help to generate tags
Plug 'https://github.com/universal-ctags/ctags'
Plug 'https://github.com/miyakogi/conoline.vim'        " highlights the line of the cursor
Plug 'https://github.com/tpope/vim-surround'           " help with (, {, {, ...
Plug 'https://github.com/tpope/vim-commentary'
Plug 'lervag/vimtex'                                   " Latex plugin
"
"Plug 'https://github.com/jmcantrell/vim-virtualenv'
"Plug 'https://github.com/vim-scripts/ReplaceWithRegister'
"Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
"Plug 'https://github.com/mox-mox/vim-localsearch'
"Plug 'https://github.com/nathanaelkane/vim-indent-guides'
"Plug 'https://github.com/jmcantrell/vim-virtualenv'
"Plug 'https://bolt80.com/gutentags/'
"Plug 'https://github.com/vim-latex/vim-latex'
"Plug 'https://github.com/junegunn/goyo.vim'
"Plug 'https://github.com/ervandew/supertab'
"Plug 'skywind3000/vim-auto-popmenu'
"Plug 'liuchengxu/vim-clap'
"Plug 'https://github.com/vim-scripts/AutoComplPop'
"Plug 'https://github.com/tpope/vim-obsession'
"Plug 'https://github.com/vimwiki/vimwiki'
"Plug 'https://github.com/ctrlpvim/ctrlp.vim'
"
call plug#end() "run :PlugInstall
"
" ░██████╗  ██╗░░░██╗  ██████╗░  ███╗░░░███╗  ███████╗  ██████╗░  ░██████╗  ██╗  ██╗░░░██╗  ███████╗  
" ██╔════╝  ██║░░░██║  ██╔══██╗  ████╗░████║  ██╔════╝  ██╔══██╗  ██╔════╝  ██║  ██║░░░██║  ██╔════╝  
" ╚█████╗░  ██║░░░██║  ██████╦╝  ██╔████╔██║  █████╗░░  ██████╔╝  ╚█████╗░  ██║  ╚██╗░██╔╝  █████╗░░  
" ░╚═══██╗  ██║░░░██║  ██╔══██╗  ██║╚██╔╝██║  ██╔══╝░░  ██╔══██╗  ░╚═══██╗  ██║  ░╚████╔╝░  ██╔══╝░░  
" ██████╔╝  ╚██████╔╝  ██████╦╝  ██║░╚═╝░██║  ███████╗  ██║░░██║  ██████╔╝  ██║  ░░╚██╔╝░░  ███████╗  
" ╚═════╝░░  ░╚═════╝░  ╚═════╝░  ╚═╝░░░░░╚═╝  ╚══════╝  ╚═╝░░╚═╝  ╚═════╝░░  ╚═╝  ░░░╚═╝░░░  ╚══════╝  

" Substitute Motion
nmap gr <plug>(SubversiveSubstitute)
nmap gr_ <plug>(SubversiveSubstituteLine)
nmap gr$ <plug>(SubversiveSubstituteToEndOfLine)
"
" Substitute Over Range Motion
nmap gri <plug>(SubversiveSubstituteRange)
xmap gri <plug>(SubversiveSubstituteRange)
nmap grw <plug>(SubversiveSubstituteWordRange)
"
" need to confirm substitution
nmap <leader>gri <plug>(SubversiveSubstituteRangeConfirm)
xmap <leader>gri <plug>(SubversiveSubstituteRangeConfirm)
nmap <leader>grw <plug>(SubversiveSubstituteWordRangeConfirm)
let g:subversivePromptWithCurrent=1
"let g:subversivePreserveCursorPosition=1 "cursor will not move when substitutions are applied
"
" ██╗░░██╗  ██╗  ████████╗  ███████╗  
" ██║░██╔╝  ██║  ╚══██╔══╝  ██╔════╝  
" █████═╝░  ██║  ░░░██║░░░  █████╗░░  
" ██╔═██╗░  ██║  ░░░██║░░░  ██╔══╝░░  
" ██║░╚██╗  ██║  ░░░██║░░░  ███████╗  
" ╚═╝░░╚═╝  ╚═╝  ░░╚═╝░░░  ╚══════╝  

" You can manually invoke the completions in insert mode with <C-X><C-U>
set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2                                          " always display the status line
"let g:kite_auto_complete=0                               " completions will show up automatically 
let g:kite_tab_complete=1                                " If you'd like to use <Tab> instead of <C-y>
set completeopt+=menuone                                  " show the popup menu even when there is only 1 match
set completeopt+=noinsert                                " don't insert any text until user chooses a match
"set completeopt-=longest                                 " don't insert the longest common text
set completeopt-=preview                                 " show documentation in a new buffer
"autocmd CompleteDone * if !pumvisible() | pclose | endif "preview window automatically closed once a completion has been inserted
"set belloff+=ctrlg
"
" Naviguate between snippets
execute "set <M-h>=\e'"
execute "set <M-l>=\e'"
let g:kite_previous_placeholder = '<M-h>'
let g:kite_next_placeholder = '<M-l>'
"
" ██████╗░  ░█████╗░  ███╗░░░███╗  ██████╗░  ██╗░░░░░  ███████╗  ████████╗  ███████╗  ███╗░░░███╗  ███████╗  
" ██╔══██╗  ██╔══██╗  ████╗░████║  ██╔══██╗  ██║░░░░░  ██╔════╝  ╚══██╔══╝  ██╔════╝  ████╗░████║  ██╔════╝  
" ██║░░╚═╝  ██║░░██║  ██╔████╔██║  ██████╔╝  ██║░░░░░  █████╗░░  ░░░██║░░░  █████╗░░  ██╔████╔██║  █████╗░░  
" ██║░░██╗  ██║░░██║  ██║╚██╔╝██║  ██╔═══╝░  ██║░░░░░  ██╔══╝░░  ░░░██║░░░  ██╔══╝░░  ██║╚██╔╝██║  ██╔══╝░░  
" ╚█████╔╝  ╚█████╔╝  ██║░╚═╝░██║  ██║░░░░░  ███████╗  ███████╗  ░░░██║░░░  ███████╗  ██║░╚═╝░██║  ███████╗  
" ░╚════╝░   ╚════╝░  ╚═╝░░░░░╚═╝  ╚═╝░░░░░  ╚══════╝  ╚══════╝  ░░╚═╝░░░  ╚══════╝  ╚═╝░░░░░╚═╝  ╚══════╝  

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

" ░█████╗░  ███╗░░░███╗  ███╗░░██╗  ██╗  
" ██╔══██╗  ████╗░████║  ████╗░██║  ██║  
" ██║░░██║  ██╔████╔██║  ██╔██╗██║  ██║  
" ██║░░██║  ██║╚██╔╝██║  ██║╚████║  ██║  
" ╚█████╔╝  ██║░╚═╝░██║  ██║░╚███║  ██║  
"  ╚════╝░  ╚═╝░░░░░╚═╝  ╚═╝░░╚══╝  ╚═╝  

"set omnifunc=syntaxcomplete#Complete
"inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  "\ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"
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

" ██████╗░  ░█████╗░  ██████╗░  ██╗░░░██╗  ██████╗░  
" ██╔══██╗  ██╔══██╗  ██╔══██╗  ██║░░░██║  ██╔══██╗  
" ██████╔╝  ██║░░██║  ██████╔╝  ██║░░░██║  ██████╔╝  
" ██╔═══╝░  ██║░░██║  ██╔═══╝░  ██║░░░██║  ██╔═══╝░  
" ██║░░░░░  ╚█████╔╝  ██║░░░░░  ╚██████╔╝  ██║░░░░░  
" ╚═╝░░░░░   ╚════╝░  ╚═╝░░░░░  ░╚═════╝░  ╚═╝░░░░░  

let g:apc_enable_ft = {'*':1}
set cpt=.,k,w,b

" ████████╗  ░█████╗░  ░██████╗░  ░██████╗  
" ╚══██╔══╝  ██╔══██╗  ██╔════╝░  ██╔════╝  
" ░░░██║░░░  ███████║  ██║░░██╗░  ╚█████╗░  
" ░░░██║░░░  ██╔══██║  ██║░░╚██╗  ░╚═══██╗  
" ░░░██║░░░  ██║░░██║  ╚██████╔╝  ██████╔╝  
" ░░╚═╝░░░  ╚═╝░░╚═╝  ░╚════╝░  ╚═════╝░░  

command! MakeTags !ctags -R .
"set statusline+=%{gutentags#statusline()}
" enable gtags module
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

nnoremap <C-W><C-]> :call FollowTag()<CR>zt
"
"
" ██████╗░  ██╗░░░██╗  ██████╗░  ░██████╗  ░█████╗░  ██████╗░  
" ██╔══██╗  ██║░░░██║  ██╔══██╗  ██╔════╝  ██╔══██╗  ██╔══██╗  
" ██║░░╚═╝  ██║░░░██║  ██████╔╝  ╚█████╗░  ██║░░██║  ██████╔╝  
" ██║░░██╗  ██║░░░██║  ██╔══██╗  ░╚═══██╗  ██║░░██║  ██╔══██╗  
" ╚█████╔╝  ╚██████╔╝  ██║░░██║  ██████╔╝  ╚█████╔╝  ██║░░██║  
" ░╚════╝░  ░╚═════╝░  ╚═╝░░╚═╝  ╚═════╝░░   ╚════╝░  ╚═╝░░╚═╝  

set background=dark
"set cursorline
"Colet g:conoline_color_normal_dark = 'guifg=#3d321e'
"let g:conoline_color_insert_dark = 'guifg=#3d321e'

" ████████╗  ░█████╗░  ██████╗░  
" ╚══██╔══╝  ██╔══██╗  ██╔══██╗  
" ░░░██║░░░  ███████║  ██████╦╝  
" ░░░██║░░░  ██╔══██║  ██╔══██╗  
" ░░░██║░░░  ██║░░██║  ██████╦╝  
" ░░╚═╝░░░  ╚═╝░░╚═╝  ╚═════╝░  
" show existing tab with 4 spaces width
set tabstop=5
" when indenting with '>', use 4 spaces width
set shiftwidth=4
set autoindent
set smartindent

" ░██████╗  ██████╗░  ██╗░░░░░  ██╗  ████████╗  
" ██╔════╝  ██╔══██╗  ██║░░░░░  ██║  ╚══██╔══╝  
" ╚█████╗░  ██████╔╝  ██║░░░░░  ██║  ░░░██║░░░  
" ░╚═══██╗  ██╔═══╝░  ██║░░░░░  ██║  ░░░██║░░░  
" ██████╔╝  ██║░░░░░  ███████╗  ██║  ░░░██║░░░  
" ╚═════╝░░  ╚═╝░░░░░  ╚══════╝  ╚═╝  ░░╚═╝░░░  

set splitbelow splitright
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-'> <C-w>l
"max height Ctrl-w _
"maz width Ctrl-w |. 
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" ██████╗░  ░█████╗░  ██╗░░░░░  ░█████╗░  ██████╗░  
" ██╔══██╗  ██╔══██╗  ██║░░░░░  ██╔══██╗  ██╔══██╗  
" ██║░░╚═╝  ██║░░██║  ██║░░░░░  ██║░░██║  ██████╔╝  
" ██║░░██╗  ██║░░██║  ██║░░░░░  ██║░░██║  ██╔══██╗  
" ╚█████╔╝  ╚█████╔╝  ███████╗  ╚█████╔╝  ██║░░██║  
" ░╚════╝░   ╚════╝░  ╚══════╝   ╚════╝░  ╚═╝░░╚═╝  

colorscheme Blade_runner
"colorscheme farout
hi Normal guibg=NONE ctermbg=NONE
hi Search guibg=peru guifg=wheat
"hi Search cterm=NONE ctermfg=grey ctermbg=blue
hi Search cterm=NONE ctermfg=190  ctermbg=26
" 215
" ░█████╗░  ██╗  ██████╗░  ██╗░░░░░  ██╗  ███╗░░██╗  ███████╗  
" ██╔══██╗  ██║  ██╔══██╗  ██║░░░░░  ██║  ████╗░██║  ██╔════╝  
" ███████║  ██║  ██████╔╝  ██║░░░░░  ██║  ██╔██╗██║  █████╗░░  
" ██╔══██║  ██║  ██╔══██╗  ██║░░░░░  ██║  ██║╚████║  ██╔══╝░░  
" ██║░░██║  ██║  ██║░░██║  ███████╗  ██║  ██║░╚███║  ███████╗  
" ╚═╝░░╚═╝  ╚═╝  ╚═╝░░╚═╝  ╚══════╝  ╚═╝  ╚═╝░░╚══╝  ╚══════╝  

let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ']'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline_statusline_ontop=1

" ███╗░░██╗  ███████╗  ██████╗░  ██████╗░  ████████╗  ██████╗░  ███████╗  ███████╗  
" ████╗░██║  ██╔════╝  ██╔══██╗  ██╔══██╗  ╚══██╔══╝  ██╔══██╗  ██╔════╝  ██╔════╝  
" ██╔██╗██║  █████╗░░  ██████╔╝  ██║░░██║  ░░░██║░░░  ██████╔╝  █████╗░░  █████╗░░  
" ██║╚████║  ██╔══╝░░  ██╔══██╗  ██║░░██║  ░░░██║░░░  ██╔══██╗  ██╔══╝░░  ██╔══╝░░  
" ██║░╚███║  ███████╗  ██║░░██║  ██████╔╝  ░░░██║░░░  ██║░░██║  ███████╗  ███████╗  
" ╚═╝░░╚══╝  ╚══════╝  ╚═╝░░╚═╝  ╚═════╝░  ░░╚═╝░░░  ╚═╝░░╚═╝  ╚══════╝  ╚══════╝  

map <C-n> :NERDTreeToggle<CR>

" ░██████╗  ██╗░░██╗  ░█████╗░  ██████╗░  ████████╗  ██████╗░  ██╗░░░██╗  ████████╗  ░██████╗  
" ██╔════╝  ██║░░██║  ██╔══██╗  ██╔══██╗  ╚══██╔══╝  ██╔══██╗  ██║░░░██║  ╚══██╔══╝  ██╔════╝  
" ╚█████╗░  ███████║  ██║░░██║  ██████╔╝  ░░░██║░░░  ██║░░╚═╝  ██║░░░██║  ░░░██║░░░  ╚█████╗░  
" ░╚═══██╗  ██╔══██║  ██║░░██║  ██╔══██╗  ░░░██║░░░  ██║░░██╗  ██║░░░██║  ░░░██║░░░  ░╚═══██╗  
" ██████╔╝  ██║░░██║  ╚█████╔╝  ██║░░██║  ░░░██║░░░  ╚█████╔╝  ╚██████╔╝  ░░░██║░░░  ██████╔╝  
" ╚═════╝░░  ░╚═╝░░╚═╝   ╚════╝░  ╚═╝░░╚═╝  ░░╚═╝░░░  ░╚════╝░  ░╚═════╝░  ░░╚═╝░░░  ╚═════╝░░  
map <C-l> :set rnu<CR>
map <C-a> :set nornu<CR>
"
map <Leader>mm :vnew term://zsh<CR>
"
nnoremap <leader> <c-w>
"inoremap <S-Tab> <C-p>
"
execute "set <M-f>=\ef"  
nnoremap <M-f> :update<cr>
execute "set <M-c>=\ec"  
"
execute "set <M-d>=\ed"  
nnoremap <silent><A-d> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>  " delete line below if blanck
execute "set <M-s>=\es"  
nnoremap <silent><A-s> m`:silent -g/\m^\s*$/d<CR>``:noh<CR> " delete line above if blank
execute "set <M-o>=\eo"  
nnoremap <silent><A-o> :set paste<CR>m`o<Esc>``:set nopaste<CR> " insert blank line below
execute "set <M-p>=\em"  
nnoremap <silent><A-p> :set paste<CR>m`O<Esc>``:set nopaste<CR>
"
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid, when inside an event handler
" (happens when dropping a file on gvim) and for a commit message (it's
" likely a different one than last time).
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | end
"
" ░██████╗  ███████╗  ░█████╗░  ██████╗░  ██████╗░  ██╗░░██╗  
" ██╔════╝  ██╔════╝  ██╔══██╗  ██╔══██╗  ██╔══██╗  ██║░░██║  
" ╚█████╗░  █████╗░░  ███████║  ██████╔╝  ██║░░╚═╝  ███████║  
" ░╚═══██╗  ██╔══╝░░  ██╔══██║  ██╔══██╗  ██║░░██╗  ██╔══██║  
" ██████╔╝  ███████╗  ██║░░██║  ██║░░██║  ╚█████╔╝  ██║░░██║  
" ╚═════╝░░  ╚══════╝  ╚═╝░░╚═╝  ╚═╝░░╚═╝  ░╚════╝░  ░╚═╝░░╚═╝  

" Press spacebar to highlight searching items
"set viminfo^=h
set hlsearch
" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" Press F4 to toggle highlighting on/off, and show current value.
noremap <F4> :set hlsearch! hlsearch?<CR>
" F8 will highlight all occurrences of the current word
nnoremap <F8> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
"
" ██████╗░  ███████╗  ░██████╗░  ██╗  ░██████╗  ████████╗  ███████╗  ██████╗░  ░██████╗  
" ██╔══██╗  ██╔════╝  ██╔════╝░  ██║  ██╔════╝  ╚══██╔══╝  ██╔════╝  ██╔══██╗  ██╔════╝  
" ██████╔╝  █████╗░░  ██║░░██╗░  ██║  ╚█████╗░  ░░░██║░░░  █████╗░░  ██████╔╝  ╚█████╗░  
" ██╔══██╗  ██╔══╝░░  ██║░░╚██╗  ██║  ░╚═══██╗  ░░░██║░░░  ██╔══╝░░  ██╔══██╗  ░╚═══██╗  
" ██║░░██║  ███████╗  ╚██████╔╝  ██║  ██████╔╝  ░░░██║░░░  ███████╗  ██║░░██║  ██████╔╝  
" ╚═╝░░╚═╝  ╚══════╝  ░╚════╝░  ╚═╝  ╚═════╝░░  ░░╚═╝░░░  ╚══════╝  ╚═╝░░╚═╝  ╚═════╝░░  

" List contents of all registers 
nnoremap <silent> "" :registers "0123456789abcdefghijklmnopqrstuvwxyz*+.<CR>
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor
" Clean Registers 
execute "set <M-'>=\e'"
nnoremap <M-'> :WipeReg<cr>   
"
"
" ██╗░░░░░  ░█████╗░  ████████╗  ███████╗  ██╗░░██╗  
" ██║░░░░░  ██╔══██╗  ╚══██╔══╝  ██╔════╝  ╚██╗██╔╝  
" ██║░░░░░  ███████║  ░░░██║░░░  █████╗░░  ░╚███╔╝░  
" ██║░░░░░  ██╔══██║  ░░░██║░░░  ██╔══╝░░  ░██╔██╗░  
" ███████╗  ██║░░██║  ░░░██║░░░  ███████╗  ██╔╝╚██╗  
" ╚══════╝  ╚═╝░░╚═╝  ░░╚═╝░░░  ╚══════╝  ╚═╝░░╚═╝  


map <C-s> :call Synctex()<cr>
execute "set <M-c>=\e3"
nnoremap <M-c> :VimtexCompile<cr>  
execute "set <M-3>=\e3"
nnoremap <M-3> :copen<cr>  
"
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
"
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
"

" ███████╗  ██╗░░░██╗  ███╗░░██╗  ██████╗░  ████████╗  ██╗  ░█████╗░  ███╗░░██╗  ░██████╗  
" ██╔════╝  ██║░░░██║  ████╗░██║  ██╔══██╗  ╚══██╔══╝  ██║  ██╔══██╗  ████╗░██║  ██╔════╝  
" █████╗░░  ██║░░░██║  ██╔██╗██║  ██║░░╚═╝  ░░░██║░░░  ██║  ██║░░██║  ██╔██╗██║  ╚█████╗░  
" ██╔══╝░░  ██║░░░██║  ██║╚████║  ██║░░██╗  ░░░██║░░░  ██║  ██║░░██║  ██║╚████║  ░╚═══██╗  
" ██║░░░░░  ╚██████╔╝  ██║░╚███║  ╚█████╔╝  ░░░██║░░░  ██║  ╚█████╔╝  ██║░╚███║  ██████╔╝  
" ╚═╝░░░░░  ░╚═════╝░  ╚═╝░░╚══╝  ░╚════╝░  ░░╚═╝░░░  ╚═╝   ╚════╝░  ╚═╝░░╚══╝  ╚═════╝░░  

" remove whitespace at end of lines
:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
"
function! TestPy2()
python << EOF
import vim
s = range(10)
vim.command("let sInVim = %s"% s)
EOF
    r type(sInVim)
endfunction
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ███████╗  ███╗░░██╗  ██████╗░  
" ██╔════╝  ████╗░██║  ██╔══██╗  
" █████╗░░  ██╔██╗██║  ██║░░██║  
" ██╔══╝░░  ██║╚████║  ██║░░██║  
" ███████╗  ██║░╚███║  ██████╔╝  
" ╚══════╝  ╚═╝░░╚══╝  ╚═════╝░  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
