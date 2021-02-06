if has('win32') "specific options for windows
    let g:coc_node_path = 'C:\Program Files\nodejs\node'
endif
set shortmess+=c                                             " Remove messages from in-completion menus
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

let g:coc_global_extensions = [
			\ 'coc-lists',
			\ 'coc-python',
			\ 'coc-json',
			\ 'coc-sql',
			\ 'coc-snippets',
			\ 'coc-css',
			\ 'coc-html',
			\ 'coc-tag',
			\ 'coc-diagnostic',
			\ 'coc-highlight',
			\ 'coc-syntax'
			\ ]
			" \ 'coc-tsserver',
			" \ 'coc-vimtex',
			" \ 'coc-sh',
			" \ 'coc-prettier',
" See coc config in "coc-settings.json" with :CocConfig
    "diagnostic.enable":,
" Map Alt-n to trigger completion: >
" function! s:check_back_space() abort
"     let col = col('.') - 1
"     return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
"
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
"
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
"
" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')
"
"
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
"
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call CocAction('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call CocAction('runCommand', 'editor.action.organizeImport')
" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"
" Novigate in floating windows https://github.com/neoclide/coc.nvim/issues/1405
