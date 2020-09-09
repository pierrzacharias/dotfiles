" from  https://vi.stackexchange.com/questions/5110/quickfix-support-for-python-tracebacks
if exists("current_compiler")
  finish
endif
let current_compiler = "python"

let s:cpo_save = &cpo
set cpo&vim
" https://flukus.github.io/vim-errorformat-demystified.html
" CompilerSet errorformat=
"       \%*\\sFile\ \"%f\"\\,\ line\ %l\\,\ %m,\ %t,
"       \%*\\sFile\ \"%f\"\\,\ line\ %l,
" set errorformat=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
" https://github.com/tpope/vim-dispatch/issues/113
" setlocal errorformat=
CompilerSet errorformat=
    \%A\ \ File\ \"%f\"\\\,\ line\ %l\\\,%m,
    \%C\ \ \ \ %.%#,
    \%+Z%.%#Error\:\ %.%#,
    \%A\ \ File\ \"%f\"\\\,\ line\ %l,
    \%+C\ \ %.%#,
    \%-C%p^,
    \%Z%m,
    \%-GTraceback%.%#,
    \%-G%.%#
CompilerSet makeprg=python3\ %

let &cpo = s:cpo_save
unlet s:cpo_save
