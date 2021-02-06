" ---------------------------------------------------------------
"  Functions
"  --------------------------------------------------------------

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
function! FillLine( str, str_end )
    " set tw to the desired total length
    let tw = 77
    if tw==0 | let tw = 77 | endif
    " strip trailing spaces first
    .s/[[:space:]]*$//
    " calculate total number of 'str's to insert
    let reps = (tw - col("$")) / len(a:str)
    " insert them, if there's room, removing trailing spaces (though forcing
    " there to be one)
    if reps > 0
        .s/$/\=(' '.repeat(a:str, reps))/
		.s/$/\=(' '.repeat(a:str_end, 1))/
    endif
endfunction
