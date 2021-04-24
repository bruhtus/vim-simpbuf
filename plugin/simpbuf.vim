" File: plugin/simpbuf.vim
" Maintainer: Robertus Diawan Chris <https://github.com/bruhtus>
" License:
" Copyright (c) Robertus Diawan Chris. Distributed under the same terms as Vim itself.
" See :h license
"
" Description:
" simple vim buffer management

if exists('g:loaded_simpbuf')
	finish
endif

let g:loaded_simpbuf = 1

command! SimpBuf call simpbuf#load()
