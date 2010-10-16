" Vim filetype plugin
" Language:		Sass
" Maintainer:		Tim Pope <vimNOSPAM@tpope.info>

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let b:undo_ftplugin = "setl cms< inc< ofu<"

setlocal commentstring=//\ %s
setlocal omnifunc=csscomplete#CompleteCSS

let &l:include = '^\s*@import\s\+\%(url(\)\='


set st=2 sts=2 sw=2 expandtab smarttab
set si

" vim:set sw=2:
