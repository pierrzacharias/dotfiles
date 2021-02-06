" ------------------------------------------------------------------------ "
"                           NEOVIDE SETTINGS
" ------------------------------------------------------------------------ "
set guifont=Fira\ Code
let g:neovide_fullscreen=v:true
let g:neovide_cursor_vfx_mode = "railgun"

if has('win32')
		set runtimepath^=~/vimfiles runtimepath+=~/vimfiles/after
endif
if has('unix')
		set runtimepath^=~/.vim runtimepath+=~/.vim/after
endif
call plug#begin(g:plug_install_files)

let &packpath = &runtimepath
source ~/.vimrc

