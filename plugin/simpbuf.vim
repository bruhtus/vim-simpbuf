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

function! s:simpbuf()
	let l:choice = confirm('List/Change/Close Buffer(s)?',
				\	'&LList\n&JChange\n&KClose')

	if l:choice == 1
		echo 'List buffer(s)'
		ls

	elseif l:choice == 2
		echo 'Change buffer'
		ls
		call inputsave()
		let l:buffernumber = input('Enter buffer number: ')
		call inputrestore()
		try
			if !empty(l:buffernumber)
				call execute("b " . l:buffernumber)
			endif
		catch
			redraw
			echo "Buffer doesn't exist"
		endtry

	elseif l:choice == 3
		echo 'Close buffer(s)'
		ls
		call inputsave()
		let l:buffernumber = input('Enter buffer number: ')
		call inputrestore()
		try
			if !empty(l:buffernumber)
				call execute("bd " . l:buffernumber)
			endif
		catch
			redraw
			echo "Buffer doesn't exist"
		endtry

	endif
endfunction

command! SimpBuf call <SID>simpbuf()
