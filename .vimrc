:set number relativenumber

syntax on " This is required
filetype plugin indent on

map <C-s> :call Synctex()<cr>

" ------------------------------------------------ "
" ------------ colorscheme ----------------------- "
" ------------------------------------------------ "

"colorscheme Blade_runner
"colorscheme farout
hi Normal guibg=NONE ctermbg=NONE

" ------------------------------------------------ "
" ------------ airline config ----------------------- "
" ------------------------------------------------ "

let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'

" ------------------------------------------------ "
" ------------ Keyboard Shorcut ------------------- "
" ------------------------------------------------ "

nnoremap <leader>w <c-w>
map <C-g> :Goyo<enter>
map <C-x> :Goyo!<enter>
inoremap <Tab> <C-N>

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
"Plug 'https://github.com/jmcantrell/vim-virtualenv'
Plug 'https://github.com/majutsushi/tagbar'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/vim-scripts/ReplaceWithRegister'
Plug 'https://github.com/christoomey/vim-system-copy'
"Plug 'https://github.com/junegunn/goyo.vim'
"Plug 'https://github.com/godlygeek/tabular'
Plug 'ajmwagar/vim-deus'
" A Vim Plugin for Lively Previewing LaTeX PDF Output :LLPStartPreview
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
"Plug 'https://github.com/vim-latex/vim-latex'
Plug 'lervag/vimtex'

 call plug#end() "run :PlugInstall

" ------------------------------------------------ "
"---------------- Setup LateX ---------------------"
" ------------------------------------------------ "
function! Synctex()
	execute "silent !zathura --synctex-forward " . line('.') . ":" . col('.') . ":" . bufname('%') . " " . g:syncpdf
	redraw!
endfunction
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









