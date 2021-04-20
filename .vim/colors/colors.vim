" -------------------------------------------------------------------------- "
"                         colorscheme 
" -------------------------------------------------------------------------- "
colorscheme ayu
let ayucolor="mirage"   " for dark version of theme

" colorscheme gruvbox
" let g:gruvbox_italic=0
" let g:gruvbox_bold=1
" let g:gruvbox_transparent_bg=0
" let g:gruvbox_hls_cursor="orange"
" let g:gruvbox_contrast_light='hard'
" let g:gruvbox_contrast='hard'

set background=dark

set cursorline                               " Highlight current line
hi CursorLine guibg=#000000

set foldtext=clean_fold#fold_text_minimal()   | " Clean folds
set noshowmode                                | " Don't show mode changes
" set novisualbell                            | " Don't display visual bell
" set nowrap                                  | " Don't wrap lines
" set showmatch                               | " Show matching braces
"
highlight! Comment cterm=NONE
highlight Keyword cterm=italic ctermfg=5
"
hi Normal guibg=NONE ctermbg=NONE
hi Terminal guibg=NONE ctermbg=NONE cterm=None
" Statusline

if has('unix') "specific options for linux
    hi! StatusLine cterm=NONE gui=NONE
endif

"-----------------------------------------------------
"  vim signature
"  ------------------------------------------------------------
highlight SignatureMarkText guifg=#D9D8D7 guibg=#3E4B59

" ------------------------------------------------------------------------- "
" ------------------- cusom highlight ------------------------------------- "
" ------------------------------------------------------------------------- "

" autocmd Filetype python :syn keyword pythonprint     print
" autocmd Filetype python :highlight! pythonprint guifg=#80D4FF

" autocmd Filetype python :syn match pythonCall /\<\h\i*\ze\s*(/ contains=
" 																									\ pythonCallBuiltinType,
" 																									\ pythonCallBuiltinFunc 
" 																									\ nextgroup=pythonCallRegion skipwhite keepend
" autocmd Filetype python :hi link   pythonCallBuiltinType   pythonBuiltinType
" autocmd Filetype python :hi link   pythonCallBuiltinFunc   pythonBuiltinFunc

" " then, match parenthesis. inside it, we contain comma-separated python expressions.
" autocmd Filetype python :syn region pythonCallRegion contained start=/(/  end=/)/ keepend extend
"                                         \ contains=pythonCall,

" " Highlight keyword argument in python function call
" autocmd Filetype python :hi              pythonCall    guifg=#80D4FF


" ------------------------------------------------------------------------- "
" ------------------- column limit ---------------------------------------- "
" ------------------------------------------------------------------------- "
" highlight ColorColumn guibg=#f0f8ff
" set colorcolumn=80

" ------------------------------------------------------------------------- "
" ------------------- folding --------------------------------------------- "
" ------------------------------------------------------------------------- "
" highlight! Folded guibg=NONE guifg=#6c71c4 gui=underline
" highlight! FoldColumn guibg=darkgrey guifg=#000000

" ------------------------------------------------------------------------- "
" ---------------- search color ------------------------------------------- "
" ------------------------------------------------------------------------- "
" autocmd VimEnter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
" hi! Search gui=NONE guibg=#6c71c4 guifg=#000000
" hi! IncSearch gui=NONE guibg=#98971a guifg=#000000

" ------------------------------------------------------------------------- "
" ----------------- current line number color ----------------------------- "
" ------------------------------------------------------------------------- "
hi! SignColumn guifg=#859900 guibg=#5C6773 guifg=#95E6CB
" hi! CursorLineNr guifg=#b58900 guibg=#002b36	
" hi! LineNr guifg=#859900 guibg=#6c71c4 gui=NONE

if has('unix') "specific options for linux
    " autocmd vimenter * hi Normal guibg=NONE " transparent bg
endif

" ------------------------------------------------------------------------- "
" ---------------------- VertSplit ---------------------------------------- "
" ------------------------------------------------------------------------- "
" hi VertSplit guibg=NONE guifg=#6c71c4 
" hi TjbLine guibg=#000000 guifg=#073642
" hi! Pmenu guibg=#b58900 guibg=#000000

" -------- indent color ----------------------------------------
" hi IndentGuidesEven guibg=#002b36	
" hi IndentGuidesOdd guibg=#00364a

" ------------------------------------------------------------------------- "
"                     conoline
" ------------------------------------------------------------------------- "
" let g:conoline_color_normal_dark = 'guibg=#000000'

" --------- startify color ---------------------------------------
" highlight! StartifyHeader guifg=#2aa198
" highlight! StartifyFooter guifg=#2aa198

