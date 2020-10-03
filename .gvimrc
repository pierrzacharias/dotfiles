" #002b36
colorscheme solarized                        | " Sets theme to gruvbox
set guifont=Delugia\ Nerd\ Font:h14:cANSI
" set guifont=Inconsolata-g:h14:cANSI
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set guioptions-=m  "remove menu bar
set go-=L " Removes left hand scroll bar
set guioptions-=M
autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <%%> correctly
autocmd FileType text setlocal textwidth=78
" hi! CursorLineNr guifg=#b58900 guibg=NONE                    " current line number color
hi! LineNr  guifg=#6c71c4 guibg=NONE                          " line numbers color
hi VertSplit guibg=NONE guifg=#6c71c4
" hi VertSplit guibg=NONE guifg=#d33682
