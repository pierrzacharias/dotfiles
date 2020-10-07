if has('unix') "specific options for linux
    colorscheme gruvbox                        | " Sets theme to gruvbox
endif
if has('win32') "specific options for windows
    colorscheme solarized                        | " Sets theme to gruvbox
endif
set background=dark
" let g:gruvbox_italic=1
" let g:gruvbox_contrast_dark = 'soft'
" let g:gruvbox_contrast_dark = 'hard'
" let g:gruvbox_undercurl=0
set cursorline                               " Highlight current line
" let base16colorspace=256                    | " Access colors present in 256 colorspace
" let &colorcolumn="81,140"                   | " Add indicator for 80 and 120
set foldtext=clean_fold#fold_text_minimal() | " Clean folds
set noshowmode                              | " Don't show mode changes
" set novisualbell                            | " Don't display visual bell
" set nowrap                                  | " Don't wrap lines
" set showmatch                               | " Show matching braces
"
" highlight Comment gui=italic            | " Make comments italic
" highlight Keyword cterm=italic ctermfg=5
"
hi Normal guibg=NONE ctermbg=NONE
hi Terminal guibg=NONE ctermbg=NONE cterm=None
" Statusline
if has('unix') "specific options for linux
    hi! StatusLine cterm=NONE gui=NONE
endif
if has('win32') "specific options for windows
endif
" search colors options
if has('unix') "specific options for linux
    autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
    hi Search cterm=NONE ctermfg=118  ctermbg=18
    hi IncSearch cterm=NONE ctermfg=18  ctermbg=76
    " hi Search cterm=NONE ctermfg=190  ctermbg=26
    hi SignColumn guifg=#ebdbb2 guibg=NONE ctermbg=NONE
endif
"
if has('win32') "specific options for windows
    " set termuicolors                           | " Enables 24bit colors
    hi Search cterm=NONE ctermfg=0  ctermbg=10
    hi IncSearch cterm=NONE ctermfg=0  ctermbg=110
    " highlight VertSplit guibg=NONE ctermbg=NONE cterm=NONE
endif
"
" ██████╗░  ░█████╗░  ███╗░░██╗  ░█████╗░  ██╗░░░░░  ██╗  ███╗░░██╗  ███████╗
" ██╔══██╗  ██╔══██╗  ████╗░██║  ██╔══██╗  ██║░░░░░  ██║  ████╗░██║  ██╔════╝
" ██║░░╚═╝  ██║░░██║  ██╔██╗██║  ██║░░██║  ██║░░░░░  ██║  ██╔██╗██║  █████╗░░
" ██║░░██╗  ██║░░██║  ██║╚████║  ██║░░██║  ██║░░░░░  ██║  ██║╚████║  ██╔══╝░░
" ╚█████╔╝  ╚█████╔╝  ██║░╚███║  ╚█████╔╝  ███████╗  ██║  ██║░╚███║  ███████╗
" ░╚════╝░   ╚════╝░  ╚═╝░░╚══╝   ╚════╝░  ╚══════╝  ╚═╝  ╚═╝░░╚══╝  ╚══════╝
" let g:conoline_color_normal_dark = 'guifg=#3d321e'
" if has('unix') "specific options for linux
"     let g:conoline_color_insert_dark = 'guibg=#333333 guifg=NONE gui=None '
"                             \. 'ctermbg=232 ctermfg=NONE'
"     let g:conoline_color_normal_dark = 'guibg=#333333 guifg=NONE gui=None '
"                             \. 'ctermbg=234 ctermfg=NONE'
" endif
if has('win32') "specific options for windows
    " let g:conoline_use_colorscheme_default_normal=0
    " let g:conoline_color_normal_nr_dark = 'guibg=#333333 guifg=#dddddd gui=None '
    "                         \. 'ctermbg=8 ctermfg=NONE'
    " let g:conoline_color_insert_nr_dark = 'guibg=#333333 guifg=#dddddd gui=None '
    "                         \. 'ctermbg=65 ctermfg=NONE'
    " let g:conoline_color_normal_dark = 'guibg=#333333 guifg=#dddddd gui=None '
    "                         \. 'ctermbg=0 ctermfg=NONE'
    " let g:conoline_color_insert_dark = 'guibg=#333333 guifg=#dddddd gui=None '
    "                         \. 'ctermbg=0 ctermfg=NONE'
    " set cursorline                               " Highlight current line
    " hi! CursorLine   cterm=NONE ctermbg=darkblue ctermfg=NONE guibg=darkred guifg=NONE
    " hi! CursorColumn cterm=NONE ctermbg=darkblue ctermfg=NONE guibg=darkred guifg=NONE
endif
