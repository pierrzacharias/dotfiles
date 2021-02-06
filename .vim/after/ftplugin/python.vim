set textwidth=80
set backspace=indent,eol,start    " remove space in indent and end of line
" set breakindent
" set breakindentopt=sbr
" I use a unicode curly array with a <backslash><space>
"'breakat'
set linebreak
set breakat="," "choose caracters causing a line break
set breakat+="." "choose caracters causing a line break
" if !exists("current_compiler")
  " compiler python
" endif
" au BufNewFile,BufRead *.py
    " \ if !exists("current_compiler")
    " \     compiler python              " assign compiler to custom python compiler
    " \ endif
    " \ set makeprg=python3\ %
"
    " \ set foldmethod=indent
    " \ set expandtab       |" replace tabs with spaces
    " \ set shiftwidth=4
    " \ set softtabstop=4
    " \ set tabstop=4
let g:pymode_python = 1
let g:ale_python_autopep8_use_global = 1
" let g:syntastic_python_checker = 'flake8 --ignore=E501'
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
"
" add syntax highlight for python
" augroup python_syntax_extra
"   autocmd!
"   autocmd! Syntax python :syn keyword Keyword self
" augroup END
