" ██████╗░  ░█████╗░  ██████╗░
" ██╔══██╗  ██╔══██╗  ██╔══██╗
" ██║░░╚═╝  ██║░░██║  ██║░░╚═╝
" ██║░░██╗  ██║░░██║  ██║░░██╗
" ╚█████╔╝  ╚█████╔╝  ╚█████╔╝
" ░╚════╝░   ╚════╝░
"
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
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-snippets', 'coc-prettier', 'coc-python', 'coc-vimtex', 'coc-vimlsp', 'coc-sql', 'coc-eslint', 'coc-tslint', 'coc-stylelint', 'coc-sh', 'coc-css', 'coc-highlight', 'coc-pairs', 'coc-lists', 'coc-html', 'coc-tag', 'coc-syntax']
" See coc config in "coc-settings.json" with :CocConfig
    "diagnostic.enable":,
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
autocmd CursorHold * silent call CocActionAsync('highlight')
"
"
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
"
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"
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
