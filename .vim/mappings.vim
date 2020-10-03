" ------------------------------------------------------------------------------
" # Mappings
" ------------------------------------------------------------------------------
"
" general
"
map M <Nop>
nnoremap H ^
nnoremap L g_<CR>
nnoremap qb <Esc>:bd!<CR>                                    " close a buffer
inoremap qb <Esc>:bd!<CR>                                    " close a buffer
execute "set <M-f>=\ef"
inoremap <M-f> <Esc>:update<CR>
nnoremap <M-f> <Esc><Esc>:update<CR>
nnoremap qq :qa!<CR>
" inoremap <C-E> <End>
" nnoremap <leader>f :cd %:p:h<CR>                          " change to the directory of the currently open files
execute 'set <M-p>=\ep'
nnoremap <M-p> "+p

" execute 'set <M-n>=\en'
" nnoremap <M-n> <C-n>
" execute 'set <M-m>=\em'
" nnoremap <M-m> <C-p>
" nnoremap H ^<CR>
nnoremap K a<cr><esc>
" map <C-l> :set rnu<CR>
" map <C-a> :set nornu<CR>
" nnoremap <leader> <c-w>
" Save the file if there is any changes
nnoremap <space> i<space><Esc>
" execute 'set <M-c>=\ec'
" Move between rows in wrapped lines
" noremap j gj
noremap k gk
nnoremap <Leader>h :vert terminal<CR>
" nnoremap <silent>db m`:silent +g/\m^\s*$/d<CR>``:noh<CR>           " delete line below if blanck
nnoremap <silent>db jddk                                             " delete line below if blanck
nnoremap <silent>da m`:silent -g/\m^\s*$/d<CR>``:noh<CR>             " delete line above if blank
execute 'set <M-o>=\eo'
nnoremap <silent><M-o> :set paste<CR>m`o<Esc>``:set nopaste<CR>      " insert blank line below
nnoremap <Leader>l :let &scrolloff=100-&scrolloff<CR>                " make edit line always centered
nnoremap <silent><Leader>t :TagbarToggle<CR>
"
" Loclist
"



"
nnoremap <C-w>p :lopen<CR>                  " open loclist
nnoremap <C-p> :lcl<CR>                     " close loclist
execute "set <M-u>=\eu"
nnoremap <M-u> :lla <CR>                    " navigate to last item in list

nnoremap <silent> <F2> :call ToggleQuickFix()<cr>"
"
" compile with :make
"
" nnoremap <silent><Leader>r :make<CR>

"
" search
"
nnoremap <silent> ff :nohlsearch<Bar>:echo<CR> " Press ff to turn off highlighting and clear any message already displayed.
" noremap <F2> :set hlsearch! hlsearch?<CR> " Press F6 to toggle high lighting on/off, and show  current value.
nnoremap <F6> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR> " F8 will highlight all occurrences of the current word
nnoremap * /\<<C-R>=expand('<cword>')<CR>\><CR>
nnoremap # ?\<<C-R>=expand('<cword>')<CR>\><CR>

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
nnoremap <C-W><C-]> :call FollowTag()<CR>zt   " Follow tag in a vertical window
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
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
vnoremap <silent>= :'<,'>Autopep8<CR>
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
