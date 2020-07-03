set encoding=utf-8
filetype plugin indent on
set nocompatible
set ignorecase
set smartcase
syntax on
set number relativenumber
set path+=**
set diffopt+=indent-heuristic
set wildmenu
set laststatus=2
set lazyredraw
set ai
set showcmd
set cmdheight=1                                        " Better display for messages
set updatetime=30                                      " Smaller updatetime for CursorHold & CursorHoldI
" don't give |ins-completion-menu| messages.
set shortmess+=c
" set textprop=True
set mouse=a
"
" ██████╗░  ██╗░░░░░  ██╗░░░██╗  ░██████╗░
" ██╔══██╗  ██║░░░░░  ██║░░░██║  ██╔════╝░
" ██████╔╝  ██║░░░░░  ██║░░░██║  ██║░░██╗░
" ██╔═══╝░  ██║░░░░░  ██║░░░██║  ██║░░╚██╗
" ██║░░░░░  ███████╗  ╚██████╔╝  ╚██████╔╝
" ╚═╝░░░░░  ╚══════╝  ░╚═════╝░  ░╚════╝░
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/AndrewRadev/sideways.vim'     " move func args  
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }    " fuzzy finder 
Plug 'junegunn/fzf.vim'                                " fuzzy finder Plug 'junegunn/fzf.vim'
" Plug 'https://github.com/yuki-ycino/fzf-preview.vim'                                " fuzzy finder Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'                             " place search at prject root, look for .gitingore
Plug 'antoinemadec/coc-fzf'                            " integrate fzf with coc.vim
Plug 'junegunn/vim-easy-align'                         " Helps alignment TODO: LEARN
Plug 'dense-analysis/ale'                              " syntax checking and semantic errors
Plug 'neoclide/coc.nvim', {'branch': 'release'}        " visual studio completion engine
Plug 'michaeljsmith/vim-indent-object'                 " New text object, based on indentation levels.
Plug 'maxboisvert/vim-simple-complete'                 " as-you-type keyword completion
Plug 'https://github.com/svermeulen/vim-subversive'    " replace content with register
Plug 'preservim/nerdtree'                              " file explorer
Plug 'ryanoasis/vim-devicons'                          "  add icon
Plug 'morhetz/gruvbox'
Plug 'https://github.com/majutsushi/tagbar'            " show tabs
Plug 'vim-airline/vim-airline'                         " add visual line
Plug 'vim-airline/vim-airline-themes'                  " theme for airline
Plug 'jlanzarotta/bufexplorer'                         " help to manage opened buffers
Plug 'skywind3000/gutentags_plus'                      " help to generate tags
Plug 'https://github.com/universal-ctags/ctags'        " help to generate tags
Plug 'https://github.com/miyakogi/conoline.vim'        " highlights the line of the cursor
Plug 'https://github.com/tpope/vim-surround'           " object with (, {, {, ...
Plug 'https://github.com/tpope/vim-commentary'         " comment out
Plug 'lervag/vimtex'                                   " Latex plugin
Plug 'https://github.com/Yggdroot/indentLine'          " help with indent TODO: Configure
"
" TOTEST
" https://github.com/mileszs/ack.vim                   " wrap grep tools in vim
" Plug 'vim-vdebug/vdebug'                             "TODO : configure  https://github.com/camspiers/dotfiles/blob/master/files/.config/nvim/init.VimtexCompile
" Plug 'kkoomen/vim-doge'                              " Docblock generator
" Plug 'rbong/vim-flog'                                " Commit viewer
" Plug 'bkad/CamelCaseMotion'                          " Motions for inside camel case
"
" REMOVED
"
" Plug 'https://github.com/chengzeyi/fzf-preview.vim'
" Plug 'sheerun/vim-polyglot'                          " synthax checker
" Plug 'lifepillar/vim-gruvbox8'                         " Faster version of gruvbox
"Plug 'https://github.com/airblade/vim-gitgutter'      " git helper TODO : configure
"Plug 'https://github.com/godlygeek/tabular'           " manage tabulation TODO : configure
" Plug 'https://github.com/szymonmaszke/vimpyter'      " jupyter files in vim
" Plug 'https://github.com/jupyter-vim/jupyter-vim'    " TODO : tester avec  neovim
"Plug 'https://github.com/jmcantrell/vim-virtualenv'
"Plug 'https://github.com/jmcantrell/vim-virtualenv'
"Plug 'https://github.com/ervandew/supertab'
"Plug 'skywind3000/vim-auto-popmenu'
"Plug 'liuchengxu/vim-clap'
"Plug 'https://github.com/ctrlpvim/ctrlp.vim'
"
call plug#end() "run :PlugInstall
"
" ░██████╗  ██╗  ██████╗░  ███████╗  ░██╗░░░░░░░██╗  ░█████╗░  ██╗░░░██╗  
" ██╔════╝  ██║  ██╔══██╗  ██╔════╝  ░██║░░██╗░░██║  ██╔══██╗  ╚██╗░██╔╝  
" ╚█████╗░  ██║  ██║░░██║  █████╗░░  ░╚██╗████╗██╔╝  ███████║  ░╚████╔╝░  
" ░╚═══██╗  ██║  ██║░░██║  ██╔══╝░░  ░░████╔═████║░  ██╔══██║  ░░╚██╔╝░░  
" ██████╔╝  ██║  ██████╔╝  ███████╗  ░░╚██╔╝░╚██╔╝░  ██║░░██║  ░░░██║░░░  
" ╚═════╝░░  ╚═╝  ╚═════╝░  ╚══════╝  ░░░╚═╝░░░╚═╝░░  ╚═╝░░╚═╝  ░░░╚═╝░░░  
execute "set <M-h>=\eh"
nnoremap <M-h> :SidewaysLeft<cr>
execute "set <M-l>=\el"
nnoremap <M-l> :SidewaysRight<cr>
nnoremap mh :SidewaysJumpLeft<cr>
nnoremap ml :SidewaysJumpRight<cr>
"
" ██████╗░  ░█████╗░  ██╗░░░░░  ░█████╗░  ██████╗░
" ██╔══██╗  ██╔══██╗  ██║░░░░░  ██╔══██╗  ██╔══██╗
" ██║░░╚═╝  ██║░░██║  ██║░░░░░  ██║░░██║  ██████╔╝
" ██║░░██╗  ██║░░██║  ██║░░░░░  ██║░░██║  ██╔══██╗
" ╚█████╔╝  ╚█████╔╝  ███████╗  ╚█████╔╝  ██║░░██║
" ░╚════╝░   ╚════╝░  ╚══════╝   ╚════╝░  ╚═╝░░╚═╝

" colorscheme gruvbox8                        | " Sets theme to gruvbox
colorscheme gruvbox                        | " Sets theme to gruvbox
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark = 'soft'
"colorscheme Blade_runner
hi Search cterm=NONE ctermfg=190  ctermbg=26
set cursorline
"Colet g:conoline_color_normal_dark = 'guifg=#3d321e'
"let g:conoline_color_insert_dark = 'guifg=#3d321e'
let base16colorspace=256                    | " Access colors present in 256 colorspace
" set termguicolors                           | " Enables 24bit colors
set background=dark
hi Normal guibg=NONE ctermbg=NONE
hi SignColumn guifg=#ebdbb2 guibg=NONE ctermbg=NONE
highlight VertSplit guibg=NONE guifg=#181A1F
set fillchars=vert:│,fold:+
" let &colorcolumn="81,140"                   | " Add indicator for 80 and 120
set foldtext=clean_fold#fold_text_minimal() | " Clean folds
set noshowmode                              | " Don't show mode changes
" set novisualbell                            | " Don't display visual bell
" set nowrap                                  | " Don't wrap lines
set showmatch                               | " Show matching braces
" Highlight Customizations {{{
highlight Comment gui=italic,bold           | " Make comments italic
"
augroup python_syntax_extra
  autocmd!
  autocmd! Syntax python :syn keyword Keyword self
augroup END
highlight Keyword cterm=italic ctermfg=5
" ██╗░░██╗  ██╗  ░██████╗░  ██╗░░██╗  ██╗░░░░░  ██╗  ░██████╗░  ██╗░░██╗  ████████╗  
" ██║░░██║  ██║  ██╔════╝░  ██║░░██║  ██║░░░░░  ██║  ██╔════╝░  ██║░░██║  ╚══██╔══╝  
" ███████║  ██║  ██║░░██╗░  ███████║  ██║░░░░░  ██║  ██║░░██╗░  ███████║  ░░░██║░░░  
" ██╔══██║  ██║  ██║░░╚██╗  ██╔══██║  ██║░░░░░  ██║  ██║░░╚██╗  ██╔══██║  ░░░██║░░░  
" ██║░░██║  ██║  ╚██████╔╝  ██║░░██║  ███████╗  ██║  ╚██████╔╝  ██║░░██║  ░░░██║░░░  
" ░╚═╝░░╚═╝  ╚═╝  ░╚════╝░  ░╚═╝░░╚═╝  ╚══════╝  ╚═╝  ░╚════╝░  ░╚═╝░░╚═╝  ░░╚═╝░░░  
"
"
" ███████╗  ███████╗  ███████╗  
" ██╔════╝  ╚════██║  ██╔════╝  
" █████╗░░  ░░███╔═╝  █████╗░░  
" ██╔══╝░░  ██╔══╝░░  ██╔══╝░░  
" ██║░░░░░  ███████╗  ██║░░░░░  
" ╚═╝░░░░░  ╚══════╝  ╚═╝░░░░░  
"
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-o': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

map <Leader>h :Files<CR>
map gb :Buffers<CR>
nnoremap <leader>R :Rg<CR>
nnoremap mt :Tags<CR>
nnoremap mm :Marks<CR>
nnoremap <C-f> :BLines<CR>
nnoremap <C-o> :FzfPreviewProjectFiles<CR>


let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp'} }
" let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'left' } }
let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline '
let $FZF_DEFAULT_COMMAND="rg --files --hidden"

let g:fzf_commands_expect = 'alt-enter'
let g:fzf_preview_window = 'right:50%:noborder:hidden'
let g:coc_fzf_opts = []

" Customize fzf colors to match your color scheme
let g:fzf_colors =
    \ { 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'background'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', '#fff'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'] }

"Get Files
execute "set <M-g>=\en"
execute "set <M-g>=\en"
inoremap <silent><expr> <M-g> coc#refresh()
inoremap <silent><expr> <M-g> coc#refresh()

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

" Get text in files with Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Git grep
command! -bang -nargs=* GGrep \ call fzf#vim#grep( \   'git grep --line-number '.shellescape(<q-args>), 0, \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

" # Scoped History Finders  https://github.com/jesseleite/dotfiles/blob/master/vim/plugin-config/fzf.vim
command! -bang PHistory call fzf#run(fzf#wrap(s:preview(<bang>0, {
  \ 'source': s:file_history_from_directory(s:get_git_root()),
  \ 'options': [
  \   '--prompt', 'ProjectHistory> ',
  \   '--multi',
  \ ]}), <bang>0))
command! -bang CwdHistory call fzf#run(fzf#wrap(s:preview(<bang>0, {
  \ 'source': s:file_history_from_directory(getcwd()),
  \ 'options': [
  \   '--prompt', 'CwdHistory> ',
  \   '--multi',
  \ ]}), <bang>0))
function! s:file_history_from_directory(directory)
  return fzf#vim#_uniq(filter(fzf#vim#_recent_files(), "s:file_is_in_directory(fnamemodify(v:val, ':p'), a:directory)"))
endfunction
function! s:file_is_in_directory(file, directory)
  return filereadable(a:file) && match(a:file, a:directory . '/') == 0
endfunction

nmap <Leader>y :PHistory<CR>
nmap <Leader>: :History:<CR>
nmap <Leader>M :Maps<CR>
"
" ░██████╗  ██╗  ░██████╗░  ███╗░░██╗  ██████╗░  ░█████╗░  ██╗░░░░░  ██╗░░░██╗  ███╗░░░███╗  ███╗░░██╗
" ██╔════╝  ██║  ██╔════╝░  ████╗░██║  ██╔══██╗  ██╔══██╗  ██║░░░░░  ██║░░░██║  ████╗░████║  ████╗░██║
" ╚█████╗░  ██║  ██║░░██╗░  ██╔██╗██║  ██║░░╚═╝  ██║░░██║  ██║░░░░░  ██║░░░██║  ██╔████╔██║  ██╔██╗██║
" ░╚═══██╗  ██║  ██║░░╚██╗  ██║╚████║  ██║░░██╗  ██║░░██║  ██║░░░░░  ██║░░░██║  ██║╚██╔╝██║  ██║╚████║
" ██████╔╝  ██║  ╚██████╔╝  ██║░╚███║  ╚█████╔╝  ╚█████╔╝  ███████╗  ╚██████╔╝  ██║░╚═╝░██║  ██║░╚███║
" ╚═════╝░░  ╚═╝  ░╚════╝░  ╚═╝░░╚══╝  ░╚════╝░   ╚════╝░  ╚══════╝  ░╚═════╝░  ╚═╝░░░░░╚═╝  ╚═╝░░╚══╝
" always show signcolumns
" set signcolumn=yes
" autocmd FileType list setl signcolumn=no
" autocmd BufRead,BufNewFile * setlocal signcolumn=yes
" autocmd FileType tagbar,nerdtree setlocal signcolumn=no
"
nnoremap <Leader>2 :call ToggleSignColumn()<CR>            " Toggle signcolumn. Works only on vim>=8.0 or NeoVim
function! ToggleSignColumn()                               "https://stackoverflow.com/questions/18319284/vim-sign-column-toggle
    if !exists("b:signcolumn_on") || b:signcolumn_on
        set signcolumn=no
        let b:signcolumn_on=0
    else
        set signcolumn=auto
        let b:signcolumn_on=1
    endif
endfunction
"
" ██████╗░  ░█████╗░  ██████╗░
" ██╔══██╗  ██╔══██╗  ██╔══██╗
" ██║░░╚═╝  ██║░░██║  ██║░░╚═╝
" ██║░░██╗  ██║░░██║  ██║░░██╗
" ╚█████╔╝  ╚█████╔╝  ╚█████╔╝
" ░╚════╝░   ╚════╝░
let g:coc_global_extensions = [
  \ 'coc-tsserver', 'coc-json', 'coc-snippets', 'coc-prettier', 'coc-python', 'coc-vimtex',
  \ 'coc-vimlsp', 'coc-sql', 'coc-eslint', 'coc-reason', 'coc-tslint','coc-stylelint', 'coc-tsserver', 'coc-sh', 
  \ 'coc-css' #https://github.com/neoclide/coc-tsserver
\ ]
  " \ 'coc-html',  'coc-yaml',
" 'coc-explorer'
  " \ 'coc-lists', 'coc-pairs', 'coc-phpls',
" See coc config in "coc-settings.json" with :CocConfig
    "diagnostic.enable":,
" Map Alt-n to trigger completion: >
execute "set <M-g>=\en"
inoremap <silent><expr> <M-g> coc#refresh()
"
set nobackup
set nowritebackup
set shortmess+=c                                             " Remove messages from in-completion menus
" execute "set <M-i>=\ei"                                    " <CR> to confirm completion, use: Alt-
" inoremap <expr> <M-i> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Enter> pumvisible() ? "\<C-y>" : "\<CR>"
" Map <tab> for trigger completion, completion confirm, snippet expand and jump like VSCode. >
" inoremap <silent><expr> <TAB>
"     \ pumvisible() ? coc#_select_confirm() :
"     \ coc#expandableOrJumpable() ?
"     \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"     \ <SID>check_back_space() ? "\<TAB>" :
"     \ coc#refresh()
" function! s:check_back_space() abort
"     let col = col('.') - 1
"     return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
let g:coc_snippet_next = '<TAB>'
 " 'coc-git',
 " 'coc-spell-checker',
"
"
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"
"
" Show diagnostic message of current position, no truncate.
" nmap <silent> gg <Plug>(coc-diagnostic-info)

nmap <silent> mb <Plug>(coc-diagnostic-prev)
nmap <silent> mn <Plug>(coc-diagnostic-next)
"
" GoTo code navigation.
nmap <silent> md <Plug>(coc-definition)
" nmap <silent> mf <Plug>(coc-fix-current)
nmap <silent> my <Plug>(coc-type-definition)
nmap <silent> mi <Plug>(coc-implementation)
" nmap <silent> mr <Plug>(coc-references)
"
" Slect inside function
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
" Select inside class/struct/interface. Recommended mapping:
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use D to show Documentation in preview window.
"
nnoremap <silent> D :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
"
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
"
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
"
" augroup mygroup
"   autocmd!
"   " Setup formatexpr specified filetype(s).
"   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"   " Update signature help on jump placeholder.
"   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end
"
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)
"
" Remap keys for applying codeAction to the current buffer.
" nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
" nmap <leader>qf  <Plug>(coc-fix-current)
"
" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
"
" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
" nmap <silent> <C-s> <Plug>(coc-range-select)
" xmap <silent> <C-s> <Plug>(coc-range-select)
"
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
"
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
"
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
"
" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"
" Mappings for CoCList
" Show all diagnostics.

nnoremap <silent><nowait> ma  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> me  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> mc  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> mo  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> ms  :<C-u>CocList -I symbols<cr>
" Resume latest coc list.
nnoremap <silent><nowait> mp  :<C-u>CocListResume<CR>
"
" Explorer
" execute "set <M-n>=\en"
" nmap <C-n> :CocCommand explorer<CR>
" autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
"
" ██████╗░  ░█████╗░  ██████╗░  ███████╗  ███████╗  ███████╗  ██╗░░░░░  ██╗  ░██████╗  ████████╗  
" ██╔══██╗  ██╔══██╗  ██╔══██╗  ██╔════╝  ╚════██║  ██╔════╝  ██║░░░░░  ██║  ██╔════╝  ╚══██╔══╝  
" ██║░░╚═╝  ██║░░██║  ██║░░╚═╝  █████╗░░  ░░███╔═╝  █████╗░░  ██║░░░░░  ██║  ╚█████╗░  ░░░██║░░░  
" ██║░░██╗  ██║░░██║  ██║░░██╗  ██╔══╝░░  ██╔══╝░░  ██╔══╝░░  ██║░░░░░  ██║  ░╚═══██╗  ░░░██║░░░  
" ╚█████╔╝  ╚█████╔╝  ╚█████╔╝  ██║░░░░░  ███████╗  ██║░░░░░  ███████╗  ██║  ██████╔╝  ░░░██║░░░  
" ░╚════╝░   ╚════╝░  ░╚════╝░  ╚═╝░░░░░  ╚══════╝  ╚═╝░░░░░  ╚══════╝  ╚═╝  ╚═════╝░░  ░░╚═╝░░░  
nnoremap <silent> <Leader>a  :<C-u>CocFzfList diagnostics<CR>
nnoremap <silent> <Leader>b  :<C-u>CocFzfList diagnostics --current-buf<CR>
nnoremap <silent> <Leader>c  :<C-u>CocFzfList commands<CR>
nnoremap <silent> <Leader>e  :<C-u>CocFzfList extensions<CR>
nnoremap <silent> <Leader>l  :<C-u>CocFzfList location<CR>
nnoremap <silent> <Leader>o  :<C-u>CocFzfList outline<CR>
nnoremap <silent> <Leader>s  :<C-u>CocFzfList symbols<CR>
nnoremap <silent> <Leader>S  :<C-u>CocFzfList services<CR>
nnoremap <silent> <Leader>p  :<C-u>CocFzfListResume<CR>
"
" ███╗░░██╗  ███████╗  ██████╗░  ██████╗░  ████████╗  ██████╗░  ███████╗  ███████╗
" ████╗░██║  ██╔════╝  ██╔══██╗  ██╔══██╗  ╚══██╔══╝  ██╔══██╗  ██╔════╝  ██╔════╝
" ██╔██╗██║  █████╗░░  ██████╔╝  ██║░░██║  ░░░██║░░░  ██████╔╝  █████╗░░  █████╗░░
" ██║╚████║  ██╔══╝░░  ██╔══██╗  ██║░░██║  ░░░██║░░░  ██╔══██╗  ██╔══╝░░  ██╔══╝░░
" ██║░╚███║  ███████╗  ██║░░██║  ██████╔╝  ░░░██║░░░  ██║░░██║  ███████╗  ███████╗
" ╚═╝░░╚══╝  ╚══════╝  ╚═╝░░╚═╝  ╚═════╝░  ░░╚═╝░░░  ╚═╝░░╚═╝  ╚══════╝  ╚══════╝

execute "set <M-b>=\en"
map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinSize=20
let NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable='>'
let g:NERDTreeDirArrowCollapsible='>'
let NERDTreeStatusline="%{matchstr(getline('.'), '\\s\\zs\\w\\(.*\\)')}"
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "Ξ",
    \ "Staged"    : "Λ",
    \ "Untracked" : "Φ",
    \ "Renamed"   : "ρ",
    \ "Unmerged"  : "Θ",
    \ "Deleted"   : "Χ",
    \ "Dirty"     : "Δ",
    \ "Clean"     : "Γ",
    \ 'Ignored'   : "Ι",
    \ "Unknown"   : "?"
    \ }

let NERDTreeStatusline=""
" Git gutter custom signs
let g:gitgutter_sign_added = '█'
let g:gitgutter_sign_modified = '█'
let g:gitgutter_sign_removed = '█'
"
"  ██████╗░  ██╗░░░██╗  ████████╗  ██╗░░██╗  ░█████╗░  ███╗░░██╗
"  ██╔══██╗  ╚██╗░██╔╝  ╚══██╔══╝  ██║░░██║  ██╔══██╗  ████╗░██║
"  ██████╔╝  ░╚████╔╝░  ░░░██║░░░  ███████║  ██║░░██║  ██╔██╗██║
"  ██╔═══╝░  ░░╚██╔╝░░  ░░░██║░░░  ██╔══██║  ██║░░██║  ██║╚████║
"  ██║░░░░░  ░░░██║░░░  ░░░██║░░░  ██║░░██║  ╚█████╔╝  ██║░╚███║
"  ╚═╝░░░░░  ░░░╚═╝░░░  ░░╚═╝░░░  ░╚═╝░░╚═╝   ╚════╝░  ╚═╝░░╚══╝
"
" let g:syntastic_python_checker = 'flake8 --ignore=E501'
" noremap <F7> :Autoformat<CR>

" Bind F5 to save file if modified and execute python script in a buffer.
nnoremap <silent> <F9> :call SaveAndExecutePython()<CR>
vnoremap <silent> <F9> :<C-u>call SaveAndExecutePython()<CR>

function! SaveAndExecutePython()
    " SOURCE [reusable window]: https://github.com/fatih/vim-go/blob/master/autoload/go/ui.vim

    " save and reload current file
    silent execute "update | edit"

    " get file path of current file
    let s:current_buffer_file_path = expand("%")

    let s:output_buffer_name = "Python"
    let s:output_buffer_filetype = "output"

    " reuse existing buffer window if it exists otherwise create a new one
    if !exists("s:buf_nr") || !bufexists(s:buf_nr)
        silent execute 'botright vnew ' . s:output_buffer_name
        let s:buf_nr = bufnr('%')
    elseif bufwinnr(s:buf_nr) == -1
        silent execute 'botright new'
        silent execute s:buf_nr . 'buffer'
    elseif bufwinnr(s:buf_nr) != bufwinnr('%')
        silent execute bufwinnr(s:buf_nr) . 'wincmd w'
    endif

    silent execute "setlocal filetype=" . s:output_buffer_filetype
    setlocal bufhidden=delete
    setlocal buftype=nofile
    setlocal noswapfile
    setlocal nobuflisted
    setlocal winfixheight
    " setlocal cursorline " make it easy to distinguish
    setlocal nonumber
    setlocal norelativenumber
    setlocal showbreak=""

    " clear the buffer
    setlocal noreadonly
    setlocal modifiable
    %delete _

    " add the console output
    silent execute ".!python " . shellescape(s:current_buffer_file_path, 1)

    " resize window to content length
    " Note: This is annoying because if you print a lot of lines then your code buffer is forced to a height of one line every time you run this function.
    "       However without this line the buffer starts off as a default size and if you resize the buffer then it keeps that custom size after repeated runs of this function.
    "       But if you close the output buffer then it returns to using the default size when its recreated
    "execute 'resize' . line('$')

    " make the buffer non modifiable
    setlocal readonly
    setlocal nomodifiable
endfunction

let g:pymode_python = 0
"
" ░░░░░██╗  ██╗░░░██╗  ██████╗░  ██╗░░░██╗  ████████╗  ███████╗  ██████╗░
" ░░░░░██║  ██║░░░██║  ██╔══██╗  ╚██╗░██╔╝  ╚══██╔══╝  ██╔════╝  ██╔══██╗
" ░░░░░██║  ██║░░░██║  ██████╔╝  ░╚████╔╝░  ░░░██║░░░  █████╗░░  ██████╔╝
" ██╗░░██║  ██║░░░██║  ██╔═══╝░  ░░╚██╔╝░░  ░░░██║░░░  ██╔══╝░░  ██╔══██╗
" ╚█████╔╝  ╚██████╔╝  ██║░░░░░  ░░░██║░░░  ░░░██║░░░  ███████╗  ██║░░██║
" ░╚════╝░  ░╚═════╝░  ╚═╝░░░░░  ░░░╚═╝░░░  ░░╚═╝░░░  ╚══════╝  ╚═╝░░╚═╝
" autocmd Filetype ipynb nmap <silent><Leader>ji :VimpyterInsertPythonBlock<CR>
" autocmd Filetype ipynb nmap <silent><Leader>js :VimpyterStartJupyter<CR>
" autocmd Filetype ipynb nmap <silent><Leader>jn :VimpyterStartNteract<CR>
" https://github.com/szymonmaszke/vimpyter/issues/4
" convert a notebook to a python file or whatever
" jupyter-nbconvert --to python *.ipynb
" set pythonthreedll=
" set pythonthreehome = "/usr/lib/python3.8/"
" let g:jupyter_auto_connect=1
" let b:jupyter_kernel_type='python3'
" set pythonthreedll=python38.dll
let g:jupyter_monitor_console=1
" set pyxversion=3
"
" ░██████╗  ██╗░░░██╗  ██████╗░  ███╗░░░███╗  ███████╗  ██████╗░  ░██████╗  ██╗  ██╗░░░██╗  ███████╗
" ██╔════╝  ██║░░░██║  ██╔══██╗  ████╗░████║  ██╔════╝  ██╔══██╗  ██╔════╝  ██║  ██║░░░██║  ██╔════╝
" ╚█████╗░  ██║░░░██║  ██████╦╝  ██╔████╔██║  █████╗░░  ██████╔╝  ╚█████╗░  ██║  ╚██╗░██╔╝  █████╗░░
" ░╚═══██╗  ██║░░░██║  ██╔══██╗  ██║╚██╔╝██║  ██╔══╝░░  ██╔══██╗  ░╚═══██╗  ██║  ░╚████╔╝░  ██╔══╝░░
" ██████╔╝  ╚██████╔╝  ██████╦╝  ██║░╚═╝░██║  ███████╗  ██║░░██║  ██████╔╝  ██║  ░░╚██╔╝░░  ███████╗
" ╚═════╝░░  ░╚═════╝░  ╚═════╝░  ╚═╝░░░░░╚═╝  ╚══════╝  ╚═╝░░╚═╝  ╚═════╝░░  ╚═╝  ░░░╚═╝░░░  ╚══════╝

" Substitute Motion
nmap gr <plug>(SubversiveSubstitute)
nmap gr_ <plug>(SubversiveSubstituteLine)
nmap gr$ <plug>(SubversiveSubstituteToEndOfLine)
"
" Substitute Over Range Motion
nmap <leader> grf <plug>(SubversiveSubstituteRange)
xmap <leader> grf <plug>(SubversiveSubstituteRange)
nmap <leader> grm <plug>(SubversiveSubstituteWordRange)
"
" need to confirm substitution
nmap <leader> grc <plug>(SubversiveSubstituteRangeConfirm)
xmap <leader> grc <plug>(SubversiveSubstituteRangeConfirm)
nmap <leader> grcw <plug>(SubversiveSubstituteWordRangeConfirm)
let g:subversivePromptWithCurrent=1
"let g:subversivePreserveCursorPosition=1 "cursor will not move when substitutions are applied
"
" ██╗░░██╗  ██╗  ████████╗  ███████╗
" ██║░██╔╝  ██║  ╚══██╔══╝  ██╔════╝
" █████═╝░  ██║  ░░░██║░░░  █████╗░░
" ██╔═██╗░  ██║  ░░░██║░░░  ██╔══╝░░
" ██║░╚██╗  ██║  ░░░██║░░░  ███████╗
" ╚═╝░░╚═╝  ╚═╝  ░░╚═╝░░░  ╚══════╝

" You can manually invoke the completions in insert mode with <C-X><C-U>
" set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
" set laststatus=2                                          " always display the status line
"let g:kite_auto_complete=0                               " completions will show up automatically
" let g:kite_tab_complete=1                                " If you'd like to use <Tab> instead of <C-y>
" set completeopt+=menuone                                  " show the popup menu even when there is only 1 match
" set completeopt+=noinsert                                " don't insert any text until user chooses a match
"set completeopt-=longest                                 " don't insert the longest common text
" set completeopt-=preview                                 " show documentation in a new buffer
"autocmd CompleteDone * if !pumvisible() | pclose | endif "preview window automatically closed once a completion has been inserted
"set belloff+=ctrlg
" Naviguate between snippets
" execute "set <M-h>=\e'"
" execute "set <M-l>=\e'"
" let g:kite_previous_placeholder = '<M-h>'
" let g:kite_next_placeholder = '<M-l>'
"
"
" ░█████╗░  ███╗░░░███╗  ███╗░░██╗  ██╗
" ██╔══██╗  ████╗░████║  ████╗░██║  ██║
" ██║░░██║  ██╔████╔██║  ██╔██╗██║  ██║
" ██║░░██║  ██║╚██╔╝██║  ██║╚████║  ██║
" ╚█████╔╝  ██║░╚═╝░██║  ██║░╚███║  ██║
"  ╚════╝░  ╚═╝░░░░░╚═╝  ╚═╝░░╚══╝  ╚═╝

"set omnifunc=syntaxcomplete#Complete
"inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  "\ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"
"inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  " \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"inoremap <expr> <S-Tab>  pumvisible() ? "\<C-p>" : "\<Up>"
" open omni completion menu closing previous if open and
" opening new menu without changing the text
"inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
 "\ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" open user completion menu closing previous if
" open and opening new menu without changing the text
"inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
"
" ██████╗░  ░█████╗░  ██████╗░  ██╗░░░██╗  ██████╗░
" ██╔══██╗  ██╔══██╗  ██╔══██╗  ██║░░░██║  ██╔══██╗
" ██████╔╝  ██║░░██║  ██████╔╝  ██║░░░██║  ██████╔╝
" ██╔═══╝░  ██║░░██║  ██╔═══╝░  ██║░░░██║  ██╔═══╝░
" ██║░░░░░  ╚█████╔╝  ██║░░░░░  ╚██████╔╝  ██║░░░░░
" ╚═╝░░░░░   ╚════╝░  ╚═╝░░░░░  ░╚═════╝░  ╚═╝░░░░░

let g:apc_enable_ft = {'*':1}
set cpt=.,k,w,b
"
" ████████╗  ░█████╗░  ░██████╗░  ░██████╗
" ╚══██╔══╝  ██╔══██╗  ██╔════╝░  ██╔════╝
" ░░░██║░░░  ███████║  ██║░░██╗░  ╚█████╗░
" ░░░██║░░░  ██╔══██║  ██║░░╚██╗  ░╚═══██╗
" ░░░██║░░░  ██║░░██║  ╚██████╔╝  ██████╔╝
" ░░╚═╝░░░  ╚═╝░░╚═╝  ░╚════╝░  ╚═════╝░░

command! MakeTags !ctags -R .
"set statusline+=%{gutentags#statusline()}
" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']
"
" config project root markers.
let g:gutentags_project_root = ['.root']
"
" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')
"
" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1
" remap tag open in new split windows
set previewheight=60
function! FollowTag()
  if !exists("w:tagbrowse")
    vsplit
    let w:tagbrowse=1
  endif
  execute "tag " . expand("<cword>")
endfunction
"
nnoremap <C-W><C-]> :call FollowTag()<CR>zt
"
" ██████╗░  ███████╗  ███╗░░██╗  ░██████╗  ███████╗   ░█████╗░  ███╗░░██╗  ░█████╗░  ██╗░░░░░  ██╗░░░██╗  ░██████╗  ██╗  ░██████╗
" ██╔══██╗  ██╔════╝  ████╗░██║  ██╔════╝  ██╔════╝   ██╔══██╗  ████╗░██║  ██╔══██╗  ██║░░░░░  ╚██╗░██╔╝  ██╔════╝  ██║  ██╔════╝
" ██║░░██║  █████╗░░  ██╔██╗██║  ╚█████╗░  █████╗░░   ███████║  ██╔██╗██║  ███████║  ██║░░░░░  ░╚████╔╝░  ╚█████╗░  ██║  ╚█████╗░
" ██║░░██║  ██╔══╝░░  ██║╚████║  ░╚═══██╗  ██╔══╝░░   ██╔══██║  ██║╚████║  ██╔══██║  ██║░░░░░  ░░╚██╔╝░░  ░╚═══██╗  ██║  ░╚═══██╗
" ██████╔╝  ███████╗  ██║░╚███║  ██████╔╝  ███████╗   ██║░░██║  ██║░╚███║  ██║░░██║  ███████╗  ░░░██║░░░  ██████╔╝  ██║  ██████╔╝
" ╚═════╝░  ╚══════╝  ╚═╝░░╚══╝  ╚═════╝░░  ╚══════╝   ╚═╝░░╚═╝  ╚═╝░░╚══╝  ╚═╝░░╚═╝  ╚══════╝  ░░░╚═╝░░░  ╚═════╝░░  ╚═╝  ╚═════╝░░
" In ~/.vim/vimrc, or somewhere similar.
let g:ale_fixers = {
    \   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}
" let g:ale_fix_on_save = 1                          " Set this variable to 1 to fix files when you save them.
let g:ale_sign_error = ' '
let g:ale_sign_warning = ' '
" highlight clear ALEErrorSign
" highlight clear ALEWarningSign
highlight ALEErrorSign ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE
highlight ALEWarningSign ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE
" :verbose hi ALEErrorSign

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
nmap <silent> zk <Plug>(ale_previous_wrap)
nmap <silent> zj <Plug>(ale_next_wrap)
let g:ale_set_quickfix = 1
" g:ale_python_auto_pipenv = 1 " Detect whether the file is inside a pipen
" See https://github.com/dense-analysis/ale/blob/master/doc/ale-python.txt
let g:ale_python_pylint_options = "--disable=C0301"  " Remove pylint error useless as long line 
"
" ████████╗  ░█████╗░  ██████╗░
" ╚══██╔══╝  ██╔══██╗  ██╔══██╗
" ░░░██║░░░  ███████║  ██████╦╝
" ░░░██║░░░  ██╔══██║  ██╔══██╗
" ░░░██║░░░  ██║░░██║  ██████╦╝
" ░░╚═╝░░░  ╚═╝░░╚═╝  ╚═════╝░

set expandtab
" show existing tab with 4 spaces width
set tabstop=5
" when indenting with '>', use 4 spaces width
set shiftwidth=4
set autoindent
set smartindent
"
" ░██████╗  ██████╗░  ██╗░░░░░  ██╗  ████████╗
" ██╔════╝  ██╔══██╗  ██║░░░░░  ██║  ╚══██╔══╝
" ╚█████╗░  ██████╔╝  ██║░░░░░  ██║  ░░░██║░░░
" ░╚═══██╗  ██╔═══╝░  ██║░░░░░  ██║  ░░░██║░░░
" ██████╔╝  ██║░░░░░  ███████╗  ██║  ░░░██║░░░
" ╚═════╝░░  ╚═╝░░░░░  ╚══════╝  ╚═╝  ░░╚═╝░░░

set splitbelow splitright
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-o> <C-w>l
"max height Ctrl-w _
"maz width Ctrl-w |.
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up>  :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>
"
" ░█████╗░  ██╗  ██████╗░  ██╗░░░░░  ██╗  ███╗░░██╗  ███████╗
" ██╔══██╗  ██║  ██╔══██╗  ██║░░░░░  ██║  ████╗░██║  ██╔════╝
" ███████║  ██║  ██████╔╝  ██║░░░░░  ██║  ██╔██╗██║  █████╗░░
" ██╔══██║  ██║  ██╔══██╗  ██║░░░░░  ██║  ██║╚████║  ██╔══╝░░
" ██║░░██║  ██║  ██║░░██║  ███████╗  ██║  ██║░╚███║  ███████╗
" ╚═╝░░╚═╝  ╚═╝  ╚═╝░░╚═╝  ╚══════╝  ╚═╝  ╚═╝░░╚══╝  ╚══════╝
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
"
let g:airline#extensions#fugitiveline#enabled = 0
"let g:airline_theme='deus'
" let g:airline_theme = 'minimalist'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '>'
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline#extensions#fugitiveline#enabled = 0
" let g:airline#extensions#whitespace#checks = ['']
" let g:airline#extensions#ale#enabled = 1
"
" ██████╗░  ███████╗  ███╗░░░███╗  ░█████╗░  ██████╗░
" ██╔══██╗  ██╔════╝  ████╗░████║  ██╔══██╗  ██╔══██╗
" ██████╔╝  █████╗░░  ██╔████╔██║  ███████║  ██████╔╝
" ██╔══██╗  ██╔══╝░░  ██║╚██╔╝██║  ██╔══██║  ██╔═══╝░
" ██║░░██║  ███████╗  ██║░╚═╝░██║  ██║░░██║  ██║░░░░░
" ╚═╝░░╚═╝  ╚══════╝  ╚═╝░░░░░╚═╝  ╚═╝░░╚═╝  ╚═╝░░░░░
" paste from clipboard
execute "set <M-p>=\ep"
nnoremap <M-p> "+p
" delete in the black hole register
" execute "set <M-d>=\ed"
" nnoremap <M-d> "_d
" insert space at beginnig of the cursor
nnoremap <space> i <space><esc>
" nnoremap <C-o> <Esc>o<space> <Esc>
"
" execute "set <M-n>=\en"
" nnoremap <M-n> <C-n>
" execute "set <M-m>=\em"
" nnoremap <M-m> <C-p>
nnoremap L g_
nnoremap H ^
:nnoremap K <Esc>i<CR><Esc>
map <C-l> :set rnu<CR>
" map <C-a> :set nornu<CR>
"
map <Leader>mm :vnew term://zsh<CR>
"
nnoremap <leader> <c-w>
"inoremap <S-Tab> <C-p>
"
" Save the file if there is any changes
execute "set <M-f>=\ef"
nnoremap <M-f> :update<cr>
:inoremap <M-f> <Esc> :update<cr>
execute "set <M-c>=\ec"
"
" ░██████╗  ██╗░░██╗  ░█████╗░  ██████╗░  ████████╗  ██████╗░  ██╗░░░██╗  ████████╗  ░██████╗
" ██╔════╝  ██║░░██║  ██╔══██╗  ██╔══██╗  ╚══██╔══╝  ██╔══██╗  ██║░░░██║  ╚══██╔══╝  ██╔════╝
" ╚█████╗░  ███████║  ██║░░██║  ██████╔╝  ░░░██║░░░  ██║░░╚═╝  ██║░░░██║  ░░░██║░░░  ╚█████╗░
" ░╚═══██╗  ██╔══██║  ██║░░██║  ██╔══██╗  ░░░██║░░░  ██║░░██╗  ██║░░░██║  ░░░██║░░░  ░╚═══██╗
" ██████╔╝  ██║░░██║  ╚█████╔╝  ██║░░██║  ░░░██║░░░  ╚█████╔╝  ╚██████╔╝  ░░░██║░░░  ██████╔╝
" ╚═════╝░░  ░╚═╝░░╚═╝   ╚════╝░  ╚═╝░░╚═╝  ░░╚═╝░░░  ░╚════╝░  ░╚═════╝░  ░░╚═╝░░░  ╚═════╝░░
nnoremap <silent>db m`:silent +g/\m^\s*$/d<CR>``:noh<CR>  " delete line below if blanck
nnoremap <silent>da m`:silent -g/\m^\s*$/d<CR>``:noh<CR> " delete line above if blank
execute "set <M-o>=\eo"
nnoremap <silent><A-o> :set paste<CR>m`o<Esc>``:set nopaste<CR> " insert blank line below
execute "set <S-M-o>=\eO"
nnoremap <silent><S-M-o> :set paste<CR>m`O<Esc>``:set nopaste<CR>
"
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid, when inside an event handler
" (happens when dropping a file on gvim) and for a commit message (it's
" likely a different one than last time).
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | end

nnoremap qq :wq<CR>

" remap end-of-line to x
nnoremap x $
inoremap <C-E> <End>
"
" change to the directory of the currently open files
nnoremap <leader>f :cd %:p:h<CR>
"
" ░██████╗  ███████╗  ░█████╗░  ██████╗░  ██████╗░  ██╗░░██╗
" ██╔════╝  ██╔════╝  ██╔══██╗  ██╔══██╗  ██╔══██╗  ██║░░██║
" ╚█████╗░  █████╗░░  ███████║  ██████╔╝  ██║░░╚═╝  ███████║
" ░╚═══██╗  ██╔══╝░░  ██╔══██║  ██╔══██╗  ██║░░██╗  ██╔══██║
" ██████╔╝  ███████╗  ██║░░██║  ██║░░██║  ╚█████╔╝  ██║░░██║
" ╚═════╝░░  ╚══════╝  ╚═╝░░╚═╝  ╚═╝░░╚═╝  ░╚════╝░  ░╚═╝░░╚═╝

" Press spacebar to highlight searching items
"set viminfo^=h
" set hlsearch
" Press ff to turn off highlighting and clear any message already displayed.
nnoremap <silent> ff :nohlsearch<Bar>:echo<CR>
" Press F6 to toggle highlighting on/off, and show current value.
noremap <F6> :set hlsearch! hlsearch?<CR>
" F8 will highlight all occurrences of the current word
nnoremap <F8> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
"
" ██████╗░  ███████╗  ░██████╗░  ██╗  ░██████╗  ████████╗  ███████╗  ██████╗░  ░██████╗
" ██╔══██╗  ██╔════╝  ██╔════╝░  ██║  ██╔════╝  ╚══██╔══╝  ██╔════╝  ██╔══██╗  ██╔════╝
" ██████╔╝  █████╗░░  ██║░░██╗░  ██║  ╚█████╗░  ░░░██║░░░  █████╗░░  ██████╔╝  ╚█████╗░
" ██╔══██╗  ██╔══╝░░  ██║░░╚██╗  ██║  ░╚═══██╗  ░░░██║░░░  ██╔══╝░░  ██╔══██╗  ░╚═══██╗
" ██║░░██║  ███████╗  ╚██████╔╝  ██║  ██████╔╝  ░░░██║░░░  ███████╗  ██║░░██║  ██████╔╝
" ╚═╝░░╚═╝  ╚══════╝  ░╚════╝░  ╚═╝  ╚═════╝░░  ░░╚═╝░░░  ╚══════╝  ╚═╝░░╚═╝  ╚═════╝░░

" List contents of all registers
nnoremap <silent> "" :registers "0123456789abcdefghijklmnopqrstuvwxyz*+.<CR>
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor
" Clean Registers
execute "set <M-'>=\e'"
nnoremap <M-'> :WipeReg<cr>
"
"
" ██╗░░░░░  ░█████╗░  ████████╗  ███████╗  ██╗░░██╗
" ██║░░░░░  ██╔══██╗  ╚══██╔══╝  ██╔════╝  ╚██╗██╔╝
" ██║░░░░░  ███████║  ░░░██║░░░  █████╗░░  ░╚███╔╝░
" ██║░░░░░  ██╔══██║  ░░░██║░░░  ██╔══╝░░  ░██╔██╗░
" ███████╗  ██║░░██║  ░░░██║░░░  ███████╗  ██╔╝╚██╗
" ╚══════╝  ╚═╝░░╚═╝  ░░╚═╝░░░  ╚══════╝  ╚═╝░░╚═╝


" map <C-s> :call Synctex()<cr>
execute "set <M-c>=\e3"
nnoremap <M-c> :VimtexCompile<cr>
execute "set <M-3>=\e3"
nnoremap <M-3> :copen<cr>
"
" :copen to see error
let g:vimtex_enabled=1
"let g:vimtex_complete_recursive_bib=1
"let g:vimtex_fold_manual=1
"let g:vimtex_fold_enabled =1
"let g:vimtex_compiler_enabled=1
let g:livepreview_previewer = 'zathura'
let g:vimtex_view_general_viewer = 'zathura'
"let g:livepreview_engine = 'lualatex'
let g:vimtex_compiler_method = 'latexmk'
"let g:vimtex_compiler_latexmk_engines = 'lualatex'
"
" See $pdf_mode = 4 in .latexmk for lualatx
let g:vimtex_compiler_latexmk = {
    \ 'backend' : 'jobs',
    \ 'background' : 1,
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'options' : [
        \   '-shell-escape',
        \   '-silent',
        \   '-gg',
        \   '-lualatex'
    \ ],
    \}
    "\   '-verbose',
    "\   '-file-line-error',
    "\   '-synctex=1',
    "\   '-interaction=nonstopmode',
"
" To prevent conceal in LaTeX files
let g:tex_conceal = ''
"
" To prevent conceal in any file
"set conceallevel = 0

" ███████╗  ██╗░░░██╗  ███╗░░██╗  ██████╗░  ████████╗  ██╗  ░█████╗░  ███╗░░██╗  ░██████╗
" ██╔════╝  ██║░░░██║  ████╗░██║  ██╔══██╗  ╚══██╔══╝  ██║  ██╔══██╗  ████╗░██║  ██╔════╝
" █████╗░░  ██║░░░██║  ██╔██╗██║  ██║░░╚═╝  ░░░██║░░░  ██║  ██║░░██║  ██╔██╗██║  ╚█████╗░
" ██╔══╝░░  ██║░░░██║  ██║╚████║  ██║░░██╗  ░░░██║░░░  ██║  ██║░░██║  ██║╚████║  ░╚═══██╗
" ██║░░░░░  ╚██████╔╝  ██║░╚███║  ╚█████╔╝  ░░░██║░░░  ██║  ╚█████╔╝  ██║░╚███║  ██████╔╝
" ╚═╝░░░░░  ░╚═════╝░  ╚═╝░░╚══╝  ░╚════╝░  ░░╚═╝░░░  ╚═╝   ╚════╝░  ╚═╝░░╚══╝  ╚═════╝░░
:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
"
" ░█████╗░  ████████╗  ██╗░░██╗  ███████╗  ██████╗░
" ██╔══██╗  ╚══██╔══╝  ██║░░██║  ██╔════╝  ██╔══██╗
" ██║░░██║  ░░░██║░░░  ███████║  █████╗░░  ██████╔╝
" ██║░░██║  ░░░██║░░░  ██╔══██║  ██╔══╝░░  ██╔══██╗
" ╚█████╔╝  ░░░██║░░░  ██║░░██║  ███████╗  ██║░░██║
" Novigate in floating windows https://github.com/neoclide/coc.nvim/issues/1405
function! s:coc_float_scroll(forward) abort
  let float = coc#util#get_float()
  if !float | return '' | endif
  let buf = nvim_win_get_buf(float)
  let buf_height = nvim_buf_line_count(buf)
  let win_height = nvim_win_get_height(float)
  if buf_height < win_height | return '' | endif
  let pos = nvim_win_get_cursor(float)
  if a:forward
    if pos[0] == 1
      let pos[0] += 3 * win_height / 4
    elseif pos[0] + win_height / 2 + 1 < buf_height
      let pos[0] += win_height / 2 + 1
    endif
    let pos[0] = pos[0] < buf_height ? pos[0] : buf_height
  else
    if pos[0] == buf_height
      let pos[0] -= 3 * win_height / 4
    elseif pos[0] - win_height / 2 + 1  > 1
      let pos[0] -= win_height / 2 + 1
    endif
    let pos[0] = pos[0] > 1 ? pos[0] : 1
  endif
  call nvim_win_set_cursor(float, pos)
  return ''
endfunction
nnoremap <silent><expr> <down> coc#util#has_float() ? coc#util#float_scroll(1) : "\<down>"
nnoremap <silent><expr> <up> coc#util#has_float() ? coc#util#float_scroll(0) : "\<up>"
inoremap <silent><expr> <down> coc#util#has_float() ? <SID>coc_float_scroll(1) : "\<down>"
inoremap <silent><expr> <up> coc#util#has_float() ? <SID>coc_float_scroll(0) : "\<up>"
vnoremap <silent><expr> <down> coc#util#has_float() ? <SID>coc_float_scroll(1) : "\<down>"
vnoremap <silent><expr> <up> coc#util#has_float() ? <SID>coc_float_scroll(0) : "\<up>"

" ██████╗░  ███████╗  ███╗░░██╗  ████████╗  ███████╗  ██████╗░  
" ██╔══██╗  ██╔════╝  ████╗░██║  ╚══██╔══╝  ██╔════╝  ██╔══██╗  
" ██║░░╚═╝  █████╗░░  ██╔██╗██║  ░░░██║░░░  █████╗░░  ██████╔╝  
" ██║░░██╗  ██╔══╝░░  ██║╚████║  ░░░██║░░░  ██╔══╝░░  ██╔══██╗  
" ╚█████╔╝  ███████╗  ██║░╚███║  ░░░██║░░░  ███████╗  ██║░░██║  
" ░╚════╝░  ╚══════╝  ╚═╝░░╚══╝  ░░╚═╝░░░  ╚══════╝  ╚═╝░░╚═╝  
set scrolloff=999
:nnoremap <Leader>l :let &scrolloff=999-&scrolloff<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ███████╗  ███╗░░██╗  ██████╗░
" ██╔════╝  ████╗░██║  ██╔══██╗
" █████╗░░  ██╔██╗██║  ██║░░██║
" ██╔══╝░░  ██║╚████║  ██║░░██║
" ███████╗  ██║░╚███║  ██████╔╝
" ╚══════╝  ╚═╝░░╚══╝  ╚═════╝░
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
