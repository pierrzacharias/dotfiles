" ----------------- Leader key ---------------------------------------------- "
" let mapleader="<TAB>"

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
execute "set <M-f>=\ef"
inoremap <M-f> <Esc>:update<CR>
nnoremap <M-f> <Esc><Esc>:update<CR>
" nnoremap <M-p> ]<space>"+pkJK 
nnoremap K i<cr><esc>
nnoremap c<space> i<space><Esc>
execute "set <M-'>=\e'"
nnoremap <M-'> i"+\"<Esc>hK


" -------------------- next error quickfix list ----------------------------- #
nnoremap ]c :cnext<CR>
nnoremap [c :cprev<CR>
nnoremap ]l :lnext<CR>
nnoremap [l :lprev<CR>

" -------- autoformat files ------------------------------------------------- "
" nnoremap <silent> <F9> :r! python -m black expand('%:p') -l 79

" ---- e.g press 1 to go to buffer 1 -----------
" nnoremap <silent> <leader>gt :exe 'tabn' nr2char(getchar())<cr> "e.g press 1 to go to tab1
"
autocmd BufReadPost * map <M-q> :tabn1<CR>
execute "set <M-q>=\eq"
map <M-q> :tabn1<CR>
execute "set <M-w>=\ew"
map <M-w> :tabn2<CR>
execute "set <M-e>=\ee"
map <M-e> :tabn3<CR>
execute "set <M-r>=\er"
map <M-r> :tabn4<CR>
execute "set <M-t>=\et"
map <M-t> :tabn5<CR>
execute "set <M-y>=\ey"
map <M-y> :tabn6<CR>
execute "set <M-u>=\eu"
map <M-u> :tabn7<CR>
execute "set <M-i>=\ei"
map <M-i> :tabn8<CR>
execute "set <M-o>=\eo"
map <M-o> :tabn9<CR>
" execute "set <M-r>=\ep"
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
" execute "set <M-u>=\eu"
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
nnoremap  <Leader>e :call SaveAndExecutePython()<CR>
vnoremap  <Leader>e :<C-u>call SaveAndExecutePython()<CR>
"
"
" python pdb
"
" Add easy nbreakpoint shortcut with correct identation
nnoremap <silent> <C-Y> :let a='import pdb; pdb.set_trace()'\|put=a<CR>kJi<CR><ESC>
" execute python code in a new terminal, usefull with pdb
autocmd Filetype python nnoremap <buffer> <Leader>r :w<CR>:vert ter python3 "%"<CR>
" go out terminal mode by pressing <Esc>, return in terminal mode with i
tnoremap <silent><Esc> <C-[><C-[> <C-\><C-n>
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
