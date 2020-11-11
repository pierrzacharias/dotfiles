"
" smoothie
"
nmap <Down> :call  smoothie#downwards()<CR>
nmap <Up> :call  smoothie#upwards()<CR>"
"
" TagBar
"
nnoremap <leader>p :TagbarTogglePause<CR> "Freezes/Unfreezes the Tagbar Windowsf
"
" workspace
"
nnoremap <leader>w :ToggleWorkspace<CR>
nnoremap <leader>bc :CloseHiddenBuffers<CR>
nnoremap <leader>a :ToggleAutosave<CR>
"
" indentwise
"
" map [- <Plug>(IndentWisePreviousLesserIndent)
" map [= <Plug>(IndentWisePreviousEqualIndent)
" map [+ <Plug>(IndentWisePreviousGreaterIndent)
" map ]- <Plug>(IndentWiseNextLesserIndent)
" map ]= <Plug>(IndentWiseNextEqualIndent)
" map ]+ <Plug>(IndentWiseNextGreaterIndent)
" map [_ <Plug>(IndentWisePreviousAbsoluteIndent)
" map ]_ <Plug>(IndentWiseNextAbsoluteIndent)
" map [% <Plug>(IndentWiseBlockScopeBoundaryBegin)
" map ]% <Plug>(IndentWiseBlockScopeBoundaryEnd)"
"
" pythonsense
"
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
" map <buffer> ]m <Plug>(PythonsenseStartOfNextPythonFunction)
" map <buffer> ]M <Plug>(PythonsenseEndOfPythonFunction)
" map <buffer> [m <Plug>(PythonsenseStartOfPythonFunction)
" map <buffer> [M <Plug>(PythonsenseEndOfPreviousPythonFunction)
" map <buffer> g: <Plug>(PythonsensePyWhere)" easy-align
"
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)"
"
" Sideway
"
" to stay in container
" https://github.com/jeetsukumaran/vim-argwrap/commit/30edd6ba0a654d22db62359e4bca9d174f1eead5
nnoremap <Leader>h :SidewaysLeft<cr>
nnoremap <Leader>l :SidewaysRight<cr>
nmap <leader>si <Plug>SidewaysArgumentInsertBefore
nmap <leader>sa <Plug>SidewaysArgumentAppendAfter
nmap <leader>sI <Plug>SidewaysArgumentInsertFirst
nmap <leader>sA <Plug>SidewaysArgumentAppendLast
" anzu
"
" <buffer><Leader>cf :Yapf<CR>"
"
" wrap
"
nnoremap <silent> <leader>a :ArgWrap<CR>
" vimtweak
"
" Window transparency shortcuts
let g:dll = globpath(&rtp, 'vimtweak.dll')
function Transparency(v)
  call libcallnr("vimtweak64.dll", "SetAlpha", 255-a:v)
endfunction
nnoremap <silent> <leader>a0 :call Transparency(0)<CR>
nnoremap <silent> <leader>a1 :call Transparency(10)<CR>
nnoremap <silent> <leader>a2 :call Transparency(20)<CR>
nnoremap <silent> <leader>a3 :call Transparency(30)<CR>
nnoremap <silent> <leader>a4 :call Transparency(40)<CR>
nnoremap <silent> <leader>a5 :call Transparency(50)<CR>
nnoremap <silent> <leader>a6 :call Transparency(60)<CR>
nnoremap <silent> <leader>a7 :call Transparency(70)<CR>
nnoremap <silent> <leader>mm :call libcallnr("vimtweak64.dll", "EnableMaximize", 1)<CR>
nnoremap <silent> <leader>ms :call libcallnr("vimtweak64.dll", "EnableMaximize", 0)<CR>
nnoremap <silent> <leader>mt :call libcallnr("vimtweak64.dll", "EnableTopMost", 1)<CR>
nnoremap <silent> <leader>mp :call libcallnr("vimtweak64.dll", "EnableTopMost", 0)<CR>

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
" latex
"
" map <C-s> :call Synctex()<cr>
execute "set <M-c>=\e3"
nnoremap <M-c> :VimtexCompile<cr>
execute "set <M-3>=\e3"
" :copen to see error
nnoremap <M-3> :copen<cr>

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
" animate
"
" nnoremap <silent> <Up>    :call animate#window_delta_height(10)<CR>
" nnoremap <silent> <Down>  :call animate#window_delta_height(-10)<CR>
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
execute "set <M-i>=\ei"
nnoremap <M-i> :QuickRun -mode n<CR>
vnoremap  <M-i> :QuickRun -mode v<CR>
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
" nnoremap <C-n> :BLines<CR>
" nnoremap <C-o> :FzfPreviewProjectFiles<CR>
nmap <C-D> :Files<CR>
nmap <C-b> :Buffers<CR>
execute "set <M-g>=\en"
inoremap <silent><expr> <M-g> coc#refresh()
nmap <Leader>H :History<CR>
" nmap <Leader>: :History:<CR>
" nmap <Leader>gm :Maps<CR>

"
" coc
"
execute "set <M-g>=\en"
inoremap <silent><expr> <M-g> coc#refresh()
" execute "set <M-i>=\ei"        " <CR> to confirm completion, use: Alt-
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
nmap <silent> mg <Plug>(coc-diagnostic-info)
nmap <silent> mb <Plug>(coc-diagnostic-prev)
nmap <silent> mn <Plug>(coc-diagnostic-next)
nmap <silent> me <Plug>(coc-diagnostic-error)
nmap <silent> md <Plug>(coc-definition)
nmap <silent> gd <Plug>(coc-declaration)
nnoremap <silent> gd :call CocAction('jumpDefinition', 'drop')<CR>
nmap <silent> my <Plug>(coc-type-definition)
nmap <silent> mi <Plug>(coc-implementation)
" nmap <silent> mr <Plug>(coc-references)
" Select inside function
" xmap if <Plug>(coc-funcobj-i)
" omap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap af <Plug>(coc-funcobj-a)
" Select inside class/struct/interface. Recommended mapping:
" xmap ic <Plug>(coc-classobj-i)
" omap ic <Plug>(coc-classobj-i)
" xmap ac <Plug>(coc-classobj-a)
" omap ac <Plug>(coc-classobj-a)
" nnoremap <silent> gr :call <SID>show_documentation()<CR> " show Documentation
nnoremap <silent> gr :call :<C-u>show_documentation<CR> " show Documentation
nnoremap <silent><nowait> ma  :<C-u>CocList diagnostics<cr> " Show all diagnostics.
nnoremap <silent><nowait> <Leader>u  :<C-u>CocList extensions<cr> " Manage extensions.
nnoremap <silent><nowait> mc  :<C-u>CocList commands<cr> " Show commands.
nnoremap <silent><nowait> mo  :<C-u>CocList outline<cr> " Find symbol of current document.
nnoremap <silent><nowait> ms  :<C-u>CocList -I symbols<cr> " Search workspace symbols.
nnoremap <silent><nowait> mp  :<C-u>CocListResume<CR> " Resume latest coc list.
execute "set <M-n>=\en"
nmap <C-n> : " CocCommand explorer<CR> " Explorer
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

 "
 " pep8
 "
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
vnoremap <silent>= :'<,'>Autopep8<CR>

" cocfzflist
"
" " nnoremap <silent> <Leader>a  :<C-u>CocFzfList diagnostics<CR>
" nnoremap <silent> <Leader>b  :<C-u>CocFzfList diagnostics --current-buf<CR>
" nnoremap <silent> <Leader>c  :<C-u>CocFzfList commands<CR>
" " nnoremap <silent> <Leader>e  :<C-u>CocFzfList extensions<CR>
" nnoremap <silent> <Leader>l  :<C-u>CocFzfList location<CR>
" nnoremap <silent> <Leader>o  :<C-u>CocFzfList outline<CR>
" nnoremap <silent> <Leader>s  :<C-u>CocFzfList symbols<CR>
" nnoremap <silent> <Leader>S  :<C-u>CocFzfList services<CR>
" nnoremap <silent> <Leader>p  :<C-u>CocFzfListResume<CR>

"
" NERDTree
"
execute "set <M-b>=\en"
map <C-n> :NERDTreeToggle<CR>
