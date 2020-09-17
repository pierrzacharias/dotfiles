hi Terminal cterm=None
colorscheme gruvbox                        | " Sets theme to gruvbox
" colorscheme gruvbit
let g:gruvbox_italic=1
" let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_contrast_dark = 'hard'
" hi Search cterm=NONE ctermfg=190  ctermbg=26
let g:gruvbox_undercurl=0
" set cursorline                               " Highlight current line
" let g:conoline_color_normal_dark = 'guifg=#3d321e'
" let base16colorspace=256                    | " Access colors present in 256 colorspace
" set termuicolors                           | " Enables 24bit colors
set background=dark
hi Normal guibg=NONE ctermbg=NONE
hi Terminal guibg=NONE ctermbg=NONE
hi SignColumn guifg=#ebdbb2 guibg=NONE ctermbg=NONE
highlight VertSplit ctermbg=NONE
hi! StatusLine cterm=NONE gui=NONE
" let &colorcolumn="81,140"                   | " Add indicator for 80 and 120
set foldtext=clean_fold#fold_text_minimal() | " Clean folds
set noshowmode                              | " Don't show mode changes
" set novisualbell                            | " Don't display visual bell
" set nowrap                                  | " Don't wrap lines
" set showmatch                               | " Show matching braces
"
highlight Comment gui=italic            | " Make comments italic
highlight Keyword cterm=italic ctermfg=5
" hi Search cterm=NONE ctermfg=118  ctermbg=18
hi Search cterm=NONE ctermfg=118  ctermbg=18
hi IncSearch cterm=NONE ctermfg=18  ctermbg=76
