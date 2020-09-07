" ------------------------------------------------------------------------------
" # Mappings
" ------------------------------------------------------------------------------
"
" vimspector
"
" nmap <silent><F5> <Plug>VimspectorContinue
" let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
" F5 	          When debugging, continue.  	                              vimspector#Continue()
" Shift F5 	     Stop debugging.                                             vimspector#Stop()
" Ctrl Shift F5 	Restart debugging with the same configuration.              vimspector#Restart()
 " F6 	          Pause debugee.                                              vimspector#Pause()
" F9 	          Toggle line breakpoint on the current line.                 vimspector#ToggleBreakpoint()
" Shift F9 	     Add a function breakpoint for the expression under cursor 	vimspector#AddFunctionBreakpoint( '<cexpr>' )
" F10 	          Step Over                                        	          vimspector#StepOver()
" F11 	          Step Into                                        	          vimspector#StepInto()
" Shift F11 	     Step out of current function scope           	          vimspector#StepOut()
nnoremap <silent> <leader>dd :call vimspector#Launch()<CR>
nnoremap <silent> <leader>dc :call vimspector#Continue()<CR>
nnoremap <silent> <F5> :call vimspector#Continue()<CR>
nnoremap <silent> <leader>ds :call vimspector#Stop()<CR>
nnoremap <silent> <leader>dr :call vimspector#Restart()<CR>
nnoremap <silent> <leader>dp :call vimspector#Pause()<CR>
nnoremap <silent> <leader>db :call vimspector#ToggleBreakpoint()<CR>
nnoremap <silent> <F9> :call vimspector#ToggleBreakpoint()<CR>
nnoremap <silent> <leader>bf :call vimspector#AddFunctionBreakpoint('<cexpr>')<CR>
nnoremap <silent> <leader>dn :call vimspector#StepOver()<CR>
nnoremap <silent> <F10> :call vimspector#StepOver()<CR>
nnoremap <silent> <leader>di :call vimspector#StepInto()<CR>
nnoremap <silent> <F11> :call vimspector#StepInto()<CR>
nnoremap <silent> <leader>do :call vimspector#StepOut()<CR>
nnoremap <silent> <leader><F11> :call vimspector#StepOut()<CR>
nnoremap <silent> <leader>dq :call vimspector#Reset()<CR>
nnoremap <silent> <leader>da :call vimspector#ClearBreakpoints()<CR>
" :VimspectorShowOutput <category> " see an output in WinBar
" VimspectorWatch <expression>     " Track a variable
" :VimspectorToggleLog               " See logs
"
" general
"

execute "set <M-f>=\ef"
inoremap <M-f> <Esc>:update<CR>
nnoremap <M-f> <Esc>:update<CR>
nnoremap qq :qa!<CR>
" inoremap <C-E> <End>
" nnoremap <leader>f :cd %:p:h<CR>                          " change to the directory of the currently open files
execute 'set <M-p>=\ep'
nnoremap <M-p> "+p
" execute 'set <M-n>=\en'
" nnoremap <M-n> <C-n>
" execute 'set <M-m>=\em'
" nnoremap <M-m> <C-p>
" nnoremap L g_<CR>
" nnoremap H ^<CR>
nnoremap K a<cr><esc>
" map <C-l> :set rnu<CR>
" map <C-a> :set nornu<CR>
" nnoremap <leader> <c-w>
" Save the file if there is any changes
nnoremap g<space> i<space><Esc>
" execute 'set <M-c>=\ec'
" Move between rows in wrapped lines
noremap j gj
noremap k gk
nnoremap <Leader>h :vert terminal<CR>
nnoremap <silent>db m`:silent +g/\m^\s*$/d<CR>``:noh<CR>  " delete line below if blanck
nnoremap <silent>da m`:silent -g/\m^\s*$/d<CR>``:noh<CR>  " delete line above if blank
execute 'set <M-o>=\eo'
nnoremap <silent><M-o> :set paste<CR>m`o<Esc>``:set nopaste<CR> " insert blank line below
nnoremap <Leader>l :let &scrolloff=100-&scrolloff<CR>          " make edit line always centered
nnoremap <silent><Leader>t :TagbarToggle<CR>
" QuickFix
nnoremap <C-w>p :copen<CR>

"
" search
"
nnoremap <silent> ff :nohlsearch<Bar>:echo<CR> " Press ff to turn off highlighting and clear any message already displayed.
noremap <F2> :set hlsearch! hlsearch?<CR> " Press F6 to toggle high lighting on/off, and show  current value.
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
" animate
"
nnoremap <silent> <Up>    :call animate#window_delta_height(10)<CR>
nnoremap <silent> <Down>  :call animate#window_delta_height(-10)<CR>
nnoremap <silent> <Left>  :call animate#window_delta_width(10)<CR>
nnoremap <silent> <Right> :call animate#window_delta_width(-10)<CR>

"
" sendto
"
nmap (l <Plug>SendRight
xmap (l <Plug>SendRightV
nmap (h <Plug>SendLeft
xmap (h <Plug>SendLeftV
nmap (k <Plug>SendUp
xmap (k <Plug>SendUpV
nmap (j <Plug>SendDown
xmap (j <Plug>SendDownV

"
" repl
"
" nnoremap <leader>r :REPLToggle<CR>
" autocmd Filetype python nnoremap <F12> <Esc>:REPLDebugStopAtCurrentLine<Cr>
" autocmd Filetype python nnoremap <F10> <Esc>:REPLPDBN<Cr>
" autocmd Filetype python nnoremap <F11> <Esc>:REPLPDBS<Cr>

"
" QuickRun
"
" nnoremap <F9> :QuickRun -mode n<CR>
" vnoremap  <F9> :QuickRun -mode v<CR>

" sideway
"
nnoremap mh :SidewaysLeft<cr>
nnoremap ml :SidewaysRight<cr>

"
" Fzf
"
nnoremap <Leader> <C-w>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-h': 'split',
  \ 'ctrl-v': 'vsplit' }
nnoremap mr :Rg<CR>
nnoremap mt :Tags<CR>
nnoremap mm :Marks<CR>
nnoremap <C-f> :BLines<CR>
" nnoremap <C-o> :FzfPreviewProjectFiles<CR>
nmap <C-D> :Files<CR>
nmap <C-b> :Buffers<CR>
execute "set <M-g>=\en"
inoremap <silent><expr> <M-g> coc#refresh()
nmap <Leader>y :PHistory<CR>
nmap <Leader>H :History<CR>
nmap <Leader>: :History:<CR>
nmap <Leader>M :Maps<CR>

"
" signcolumn_on
"
nnoremap <Leader>2 :call ToggleSignColumn()<CR>            " Toggle signcolumn. Works only on vim>=8.0 or NeoVim

"
" coc
"
execute "set <M-g>=\en"
inoremap <silent><expr> <M-g> coc#refresh()
" execute "set <M-i>=\ei"        " <CR> to confirm completion, use: Alt-
" inoremap <expr> <M-i> pumvisible() ? "\<C-y>" : "\<CR>"
" inoremap <expr> <Enter> pumvisible() ? "\<C-y>" : "\<CR>"
" Map <tab> for trigger completion, completion confirm, snippet expand and jump like VSCode. >
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
let g:coc_snippet_next = '<TAB>'
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" nmap  <silent><C-c> :CocEnable<CR>
nmap <silent> mg <Plug>(coc-diagnostic-info)
nmap <silent> mb <Plug>(coc-diagnostic-prev)
nmap <silent> mn <Plug>(coc-diagnostic-next)
nmap <silent> me <Plug>(coc-diagnostic-error)
nmap <silent> md <Plug>(coc-definition)
nmap <silent> gd <Plug>(coc-declaration)
" nnoremap <silent> gd :call CocAction('jumpDefinition', 'drop')<CR>
nmap <silent> my <Plug>(coc-type-definition)
nmap <silent> mi <Plug>(coc-implementation)
" nmap <silent> mr <Plug>(coc-references)
" Select inside function
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
" Select inside class/struct/interface. Recommended mapping:
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
nnoremap <silent> D :call <SID>show_documentation()<CR> " show Documentation
nnoremap <silent><nowait> ma  :<C-u>CocList diagnostics<cr> " Show all diagnostics.
nnoremap <silent><nowait> <Leader>u  :<C-u>CocList extensions<cr> " Manage extensions.
nnoremap <silent><nowait> mc  :<C-u>CocList commands<cr> " Show commands.
nnoremap <silent><nowait> mo  :<C-u>CocList outline<cr> " Find symbol of current document.
nnoremap <silent><nowait> ms  :<C-u>CocList -I symbols<cr> " Search workspace symbols.
nnoremap <silent><nowait> mp  :<C-u>CocListResume<CR> " Resume latest coc list.
execute "set <M-n>=\en"
nmap <C-n> : " CocCommand explorer<CR> " Explorer

" cocfzflist
"
" nnoremap <silent> <Leader>a  :<C-u>CocFzfList diagnostics<CR>
nnoremap <silent> <Leader>b  :<C-u>CocFzfList diagnostics --current-buf<CR>
nnoremap <silent> <Leader>c  :<C-u>CocFzfList commands<CR>
" nnoremap <silent> <Leader>e  :<C-u>CocFzfList extensions<CR>
nnoremap <silent> <Leader>l  :<C-u>CocFzfList location<CR>
nnoremap <silent> <Leader>o  :<C-u>CocFzfList outline<CR>
nnoremap <silent> <Leader>s  :<C-u>CocFzfList symbols<CR>
nnoremap <silent> <Leader>S  :<C-u>CocFzfList services<CR>
nnoremap <silent> <Leader>p  :<C-u>CocFzfListResume<CR>

"
" NERDTree
"
execute "set <M-b>=\en"
map <C-n> :NERDTreeToggle<CR>

"
" python
"
" autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
" autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
" nnoremap <silent> <F9> :call SaveAndExecutePython()<CR>
" vnoremap <silent> <F9> :<C-u>call SaveAndExecutePython()<CR>
"
nnoremap + 0 77 l F<space>cl<cr><esc>     " cut the line at the 79th carachter
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
vnoremap <silent>= :'<,'>Autopep8<CR>
" Add easy nbreakpoint shortcut
nnoremap <silent> <C-B> :let a='import pdb; pdb.set_trace()'\|put=a<CR>
"
" submersive
"
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

"
" latex
"
" map <C-s> :call Synctex()<cr>
execute "set <M-c>=\e3"
nnoremap <M-c> :VimtexCompile<cr>
execute "set <M-3>=\e3"
" :copen to see error
nnoremap <M-3> :copen<cr>
