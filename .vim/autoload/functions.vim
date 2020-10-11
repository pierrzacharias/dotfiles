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

"
" Loclist
"
fun! LNext(prev)
	try
		try
			if a:prev | lprev | else | lnext | endif
		catch /^Vim\%((\a\+)\)\=:E553/
			if a:prev | llast | else | lfirst | endif
		catch /^Vim\%((\a\+)\)\=:E776/
		endtry
	catch /^Vim\%((\a\+)\)\=:E42/
	endtry
endfun
