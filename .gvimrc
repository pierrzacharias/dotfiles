" Specific options for gvim here

" ---------------- font --------------------------------------------------- "
" for unix font is set in termianl emulator config
" set guifont=Space_Mono:h10:cANSI:qDRAFT
" set guifont=RobotoMono_Nerd_Font_Mono:h10:cANSI:qDRAFT
set guifont=FiraCode\ Nerd\ Font\ Mono,Gulim,Yu\ Mincho,NSimSun:h16

set winaltkeys=no       " prevent alt opening menu nnoremap <A-j> :m .+1<CR>==
set guioptions-=T       " Removes top toolbar
set guioptions-=r       " Removes right hand scroll bar
set guioptions-=m       " Remove menu bar
set go-=L               " Removes left hand scroll bar
set guioptions-=M

" displays <%%> correctly
" autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" 

" ------------------- cursor color ------------------------------------------ "
set guicursor+=a:blinkon0
" highlight! Cursor guibg=#d4b6c4 guifg=#012830
highlight! CursorColumn guibg=NONE
" highlight! CursorLine guibg=#000000 
highlight! CursorLine guibg=#002b36	
highlight! Comment gui=NONE



