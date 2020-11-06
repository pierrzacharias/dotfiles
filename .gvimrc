" #002b36
colorscheme solarized                        | " Sets theme to gruvbox
set guifont=Delugia\ Nerd\ Font:h10:cANSI
" set guifont=CozetteVector:h12:cANSI
set textwidth=79
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set guioptions-=m  "remove menu bar
set go-=L " Removes left hand scroll bar
set guioptions-=M
autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <%%> correctly
autocmd FileType text setlocal textwidth=79
" hi! CursorLineNr guifg=#b58900 guibg=NONE                    " current line number color
hi! LineNr  guifg=#6c71c4 guibg=NONE                          " line numbers color
hi VertSplit guibg=NONE guifg=#6c71c4
" hi VertSplit guibg=NONE guifg=#d33682
hi! Pmenu guibg=#b58900 guifg=#073642
" hi TabLineSel cterm=bold ctermbg=black ctermfg=7
hi TabLine guibg=#b58900 guifg=#073642
highlight! link SignColumn LineNr
highlight! SignColumn cterm=bold guibg=NONE
set colorcolumn=80
highlight ColorColumn guibg=#073642
set guicursor+=a:blinkon0
set winaltkeys=no                                      " prevent alt opening menu nnoremap <A-j> :m .+1<CR>==

 highlight! StartifyHeader guibg=None guifg=#d33682
 highlight! StartifyFooter guibg=None guifg=#d33682
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
