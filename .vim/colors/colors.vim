" -------------------------------------------------------------------------- "
"                         colorscheme 
" -------------------------------------------------------------------------- "
colorscheme ayu
let ayucolor="dark"   " for dark version of theme
set background=dark
set cursorline                               " Highlight current line

" let base16colorspace=256                    | " Access colors present in 256 colorspace
" let &colorcolumn="81,140"                   | " Add indicator for 80 and 120
set foldtext=clean_fold#fold_text_minimal()   | " Clean folds
set noshowmode                                | " Don't show mode changes
" set novisualbell                            | " Don't display visual bell
" set nowrap                                  | " Don't wrap lines
" set showmatch                               | " Show matching braces
"
highlight! Comment cterm=NONE
" highlight Keyword cterm=italic ctermfg=5
"
hi Normal guibg=NONE ctermbg=NONE
hi Terminal guibg=NONE ctermbg=NONE cterm=None
" Statusline

if has('unix') "specific options for linux
    hi! StatusLine cterm=NONE gui=NONE
endif

" ------------------------------------------------------------------------- "
" ------------------- column limit ---------------------------------------- "
" ------------------------------------------------------------------------- "
highlight ColorColumn guibg=#002b36	 
set colorcolumn=80
set cc=+0,+1,+2                       " highlight column limit for 3 columns
" highlight outboundcolumn guibg=#00364a
" call matchadd('outboundcolumn', '\%84v', 100) "set column nr

" ------------------------------------------------------------------------- "
" ------------------- folding --------------------------------------------- "
" ------------------------------------------------------------------------- "
highlight! Folded guibg=NONE guifg=#6c71c4 gui=underline
highlight! FoldColumn guibg=darkgrey guifg=#000000

" ------------------------------------------------------------------------- "
" ---------------- search color ------------------------------------------- "
" ------------------------------------------------------------------------- "
" autocmd VimEnter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
hi! Search gui=NONE guibg=#6c71c4 guifg=#000000
hi! IncSearch gui=NONE guibg=#98971a guifg=#000000

" ------------------------------------------------------------------------- "
" ----------------- current line number color ----------------------------- "
" ------------------------------------------------------------------------- "
hi! CursorLineNr guifg=#b58900 guibg=#002b36	
hi! LineNr guifg=#859900 guibg=#6c71c4 gui=NONE
hi! SignColumn guifg=#859900 guibg=#0F1419 gui=NONE 

if has('unix') "specific options for linux
    " autocmd vimenter * hi Normal guibg=NONE " transparent bg
endif

" ------------------------------------------------------------------------- "
" ---------------------- VertSplit ---------------------------------------- "
" ------------------------------------------------------------------------- "
hi VertSplit guibg=NONE guifg=#6c71c4 
hi TjbLine guibg=#000000 guifg=#073642
hi! Pmenu guibg=#b58900 guibg=#000000

" -------- indent color ----------------------------------------
hi IndentGuidesEven guibg=#002b36	
hi IndentGuidesOdd guibg=#00364a

" ------------------------------------------------------------------------- "
"                     conoline
" ------------------------------------------------------------------------- "
let g:conoline_color_normal_dark = 'guibg=#000000'

" --------- startify color ---------------------------------------
" highlight! StartifyHeader guifg=#2aa198
" highlight! StartifyFooter guifg=#2aa198

