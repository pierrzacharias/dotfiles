" ------------------------------------------------------------------------------
" # Mappings
" ------------------------------------------------------------------------------
map <space> y
map M <Nop>
nnoremap H ^
nnoremap L $_
execute "set <M-f>=\ef"
inoremap <M-f> <Esc>:update<CR>
nnoremap <M-f> <Esc><Esc>:update<CR>
nnoremap qa :qa!<CR>
execute 'set <M-p>=\ep'
nnoremap <M-p> "+pkJK
nnoremap K i<cr><esc>
nnoremap c<space> i<space><Esc>

" ---- e.g press 1 to go to buffer 1 -----------
nnoremap <silent> <leader>gt :exe "tabn" nr2char(getchar())<cr> " e.g press 1 to go to tab1

" ---- reload config -----------
nnoremap <leader>vo :vsp $MYVIMRC<CR>
nnoremap <leader>vs :source $MYVIMRC<CR>

" from right windows copy current word in register s, go replace with it to the left windows and search the replaced word to reppeat
nnoremap s, "syiw<CR><C-w>h*``cgn<C-R>s<Esc><Esc>
nnoremap s, "syiw<CR><C-w>l*``cgn<C-R>s<Esc><Esc>         " from left windows ...
nnoremap s, "syiw<CR><C-w>j*``cgn<C-R>s<Esc><Esc>         " from bottom windows ...
nnoremap s, "syiw<CR><C-w>k*``cgn<C-R>s<Esc><Esc>         " from top windows ...

" ----- switch tabs -----------
" nnoremap <Tab> :bnext<cr>
" nnoremap <S-Tab> :bprev<cr>

" ---- close buffers on left, rigth, ..
nnoremap ql <C-w>l:wq<CR>
nnoremap qh <C-w>h:wq<CR>
nnoremap qj <C-w>j:wq<CR>
nnoremap qk <C-w>k:wq<CR>
nnoremap qq :bp\|bd #<CR>

" ------ replace inner word and search replace word to reapeat -------
nnoremap c* *``cgn
nnoremap c# #``cgN

" ----- close buffer
nnoremap qb <Esc>:bd!<CR>
inoremap qb <Esc>:bd!<CR>

noremap j gj
noremap k gk

nnoremap <Leader>h :vert terminal<CR>

" nnoremap <silent>db m`:silent +g/\m^\s*$/d<CR>``:noh<CR>           " delete line below if blanck
nnoremap <silent>db jddk                                             " delete line below if blanck
nnoremap <silent>da m`:silent -g/\m^\s*$/d<CR>``:noh<CR>             " delete line above if blank
execute 'set <M-o>=\eo'
nnoremap <silent><M-o> o<esc><esc>      " insert blank line below

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
execute "set <M-u>=\eu"
nnoremap <M-u> :lla <CR>                    " navigate to last item in list

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
nnoremap <silent> "" :registers "0123456789abcdefghijklmnopqrstuvwxyz*+.<CR>
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor
" Clean Registers
execute "set <M-'>=\e'"
nnoremap <M-'> :WipeReg<cr>

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
