" #002b36
" colorscheme solarized        
colorscheme gruvbox          
" set guifont=Delugia\ Nerd\ Font:h10:cANSI
    " :set guifont=*                      " to choose font
		" Cousine
		" Noto
		" Space Mono
" set guifont=Delugia\ Nerd\ Font:h10:cANSI
set guifont=Space_Mono:h10:cANSI:qDRAFT
"
set winaltkeys=no                                      " prevent alt opening menu nnoremap <A-j> :m .+1<CR>==
set textwidth=79
set guioptions-=T                          " Removes top toolbar
set guioptions-=r                          " Removes right hand scroll bar
set guioptions-=m                          "remove menu bar
set go-=L                                  " Removes left hand scroll bar
set guioptions-=M
autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <%%> correctly
autocmd FileType text setlocal textwidth=79
" hi! CursorLineNr guifg=#b58900 guibg=NONE                    " current line number color
" hi! LineNr  guifg=#6c71c4 guibg=NONE                          " line numbers color
hi! LineNr  guifg=#458588 guibg=#282828 gui=NONE ctermbg=None                          " line numbers color
" hi VertSplit guibg=NONE guifg=#6c71c4                       " solarized
hi VertSplit guibg=NONE guifg=#458588                       " gruvbox
hi TabLine guibg=#458588 guifg=#073642
hi! Pmenu guibg=#ebdbb2 guifg=#000000

" highlight! link SignColumn LineNr
hi SignColumn gui=bold guibg=NONE ctermbg=None cterm=None

set colorcolumn=80
highlight ColorColumn guibg=#303029
set guicursor+=a:blinkon0
" highlight! Cursor guibg=#d4b6c4 guifg=#012830
highlight! Comment gui=NONE
set conceallevel=3

"---------------- search color ------------------------------------------------
" autocmd VimEnter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
hi Search gui=NONE guibg=#83a598 guifg=#000000
hi IncSearch gui=NONE guibg=#458588 guifg=#000000
hi SignColumn guifg=#ebdbb2 guibg=#458588 guibg=NONE

" --------- startify color ---------------------------------------
 " highlight! StartifyHeader guifg=#2aa198
 " highlight! StartifyFooter guifg=#2aa198

 " -------- indent color ----------------------------------------
" GVim
let g:indentLine_color_gui = '#458588'

" ---------------------------------------------------------------
"  Functions
"  --------------------------------------------------------------
"
" tags
"
function! FollowTag()
  if !exists("w:tagbrowse")
    vsplit
    let w:tagbrowse=1
  endif
  execute "tag " . expand("<cword>")
endfunction
"
" quickfix
"

function! CloseQuickRunWindow()       " close quickfix
    execute "normal \<c-c>\<c-w>jZZ"
endfunction

function! ToggleSignColumn()                               "https://stackoverflow.com/questions/18319284/vim-sign-column-toggle
    if !exists("b:signcolumn_on") || b:signcolumn_on
        set signcolumn=no
        let b:signcolumn_on=0
    else
        set signcolumn=auto
        let b:signcolumn_on=1
    endif
endfunction
