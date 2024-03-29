" Specific options for gvim here

" ---------------- font --------------------------------------------------- "
" for unix font is set in termianl emulator config
set guifont=NotoMono_Nerd_Font_Mono:h12:cANSI:qDRAFT
" set guifont=RobotoMono_Nerd_Font_Mono:h10:cANSI:qDRAFT

set background=dark

set winaltkeys=no       " prevent alt opening menu nnoremap <A-j> :m .+1<CR>==
set guioptions-=T       " Removes top toolbar
set guioptions-=r       " Removes right hand scroll bar
set guioptions-=m       " Remove menu bar
set go-=L               " Removes left hand scroll bar
set guioptions-=M

" displays <%%> correctly
" autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" 

" ------------------- cursor color ---------------------------------------- "
set guicursor+=a:blinkon0
" highlight! CursorColumn guibg=NONE
hi! CursorLine guibg=#14191F
set cursorline  

" highlight! Comment gui=NONE


" ------------------------------------------------------------------------- "
" ----------------- Dont work if not in .gvimrc ? ------------------------- "
"  must be overwtittenin loding somewhere ....
" ------------------------------------------------------------------------- "
set colorcolumn=80
highlight ColorColumn guibg=#242B38
highlight! LineNr guibg=#272D38 guifg=#E6B673
highlight! CursorLineNr guibg=#E6B673 guifg=#212733

" -------- indent color ----------------------------------------
" hi IndentGuidesOdd guibg=#002b36	
" hi IndentGuidesEven guibg=#00364a

" ---------------- search color ------------------------------------------- "
hi! Search guibg=#F29718 guifg=#151A1E
hi! IncSearch guibg=#F07178 guifg=#151A1E

" -------------------------------------------------------------
"  vim signature
"  ------------------------------------------------------------
highlight SignatureMarkText guifg=#D9D8D7 guibg=#3E4B59

" ---------------- coc color ---------------------------------------------- #
highlight! CocWarningSign guifg=#859900 guibg=NONE gui=NONE cterm=NONE
highlight! CocErrorSign guifg=#859900 guibg=NONE gui=NONE cterm=NONE
highlight! CocInfoSign  guifg=#859900 guibg=NONE gui=NONE cterm=NONE
highlight! CocHintSign guifg=#859900 guibg=NONE gui=NONE cterm=NONE

highlight! CocWarningHighlight guibg=NONE gui=NONE cterm=NONE 
highlight! CocErrorHighlight guibg=NONE gui=NONE cterm=NONE 
highlight! CocInfoHighlight  guibg=NONE gui=NONE cterm=NONE 
highlight! CocHintHighlight guibg=NONE gui=NONE cterm=NONE 

" -------------------------------------------------------------
"  vim sneak
"  ------------------------------------------------------------
highlight Sneak guifg=#14191F guibg=#F29718
highlight SneakScope guifg=#14191F guibg=#F29718
