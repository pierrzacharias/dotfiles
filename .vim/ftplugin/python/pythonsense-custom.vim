" -------------------------------------------------------------------------- "
" pythonsense custom plugin
" -------------------------------------------------------------------------- "
" map <buffer> ac <Plug>(PythonsenseOuterClassTextObject)
" map <buffer> ic <Plug>(PythonsenseInnerClassTextObject)
" map <buffer> af <Plug>(PythonsenseOuterFunctionTextObject)
" map <buffer> if <Plug>(PythonsenseInnerFunctionTextObject)
" map <buffer> ad <Plug>(PythonsenseOuterDocStringTextObject)
" map <buffer> id <Plug>(PythonsenseInnerDocStringTextObject)
" map <buffer> ]] <Plug>(PythonsenseStartOfNextPythonClass)
" map <buffer> ][ <Plug>(PythonsenseEndOfPythonClass)
" map <buffer> [[ <Plug>(PythonsenseStartOfPythonClass)
" map <buffer> [] <Plug>(PythonsenseEndOfPreviousPythonClass)
map <buffer> mj <Plug>(PythonsenseStartOfNextPythonFunction)
map <buffer> Mj <Plug>(PythonsenseEndOfPythonFunction)
map <buffer> mk <Plug>(PythonsenseStartOfPythonFunction)
map <buffer> Mk <Plug>(PythonsenseEndOfPreviousPythonFunction)
" map <buffer> g: <Plug>(PythonsensePyWhere)" easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)"
