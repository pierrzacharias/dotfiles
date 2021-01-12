" #002b36
" colorscheme solarized        
set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" set guifont=Space_Mono:h10:cANSI:qDRAFT
set guifont=RobotoMono_Nerd_Font_Mono:h10:cANSI:qDRAFT

"
set winaltkeys=no       " prevent alt opening menu nnoremap <A-j> :m .+1<CR>==
set textwidth=79
set guioptions-=T       " Removes top toolbar
set guioptions-=r       " Removes right hand scroll bar
set guioptions-=m       " Remove menu bar
set go-=L               " Removes left hand scroll bar
set guioptions-=M
" displays <%%> correctly
autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" 
autocmd FileType text setlocal textwidth=79
" hi VertSplit guibg=NONE guifg=#6c71c4                    " solarized
hi VertSplit guibg=NONE guifg=#6c71c4 
hi TabLine guibg=#000000 guifg=#073642
hi! Pmenu guibg=#b58900 guibg=#000000

" ------------------- column limit ------------------------------------------ "
set colorcolumn=80
highlight ColorColumn guibg=#000000

" ------------------- cursor color ------------------------------------------ "
set guicursor+=a:blinkon0
" highlight! Cursor guibg=#d4b6c4 guifg=#012830
highlight! CursorColumn guibg=NONE
" highlight! CursorLine guibg=#000000 "gui=underline cterm=underline
highlight! CursorLine guibg=#002b36	 

highlight! Comment gui=NONE

set conceallevel=3


" ------------------- folding ----------------------------------------------- #
highlight! Folded guibg=NONE guifg=#6c71c4 gui=underline
highlight! FoldColumn guibg=darkgrey guifg=#000000


"---------------- search color ------------------------------------------------
" autocmd VimEnter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
" hi! Search gui=NONE guibg=#000000 guifg=#fabd2f
hi! Search gui=NONE guibg=#6c71c4 guifg=#000000
hi! IncSearch gui=NONE guibg=#98971a guifg=#000000

" current line number color
" hi! CursorLineNr guifg=#b58900 guibg=NONE                
" line numbers color
" hi! LineNr  guifg=#859900 guibg=NONE gui=NONE ctermbg=None 
hi! LineNr  guifg=#859900 guibg=#000000 gui=NONE
" hi! SignColumn guifg=#859900  guibg=NONE
hi! SignColumn guifg=#859900 guibg=#000000
" hi SignColumn gui=bold guibg=NONE ctermbg=None cterm=None

" --------- startify color ---------------------------------------
" highlight! StartifyHeader guifg=#2aa198
" highlight! StartifyFooter guifg=#2aa198

" -------- indent color ----------------------------------------
" GVim
let g:indentLine_color_gui = '#6c71c4'

" ---------------- coc color ------------------------------------------------ #
highlight! CocWarningHighlight ctermfg=Red  guibg=#000000 guifg=#ff0000
highlight! CocErrorHighlight guibg=#000000 
highlight! CocInfoHighlight  guibg=#000000 
highlight! CocHintHighlight guibg=#000000 

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
