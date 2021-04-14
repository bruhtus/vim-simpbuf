" File: simpbuf.vim
" Maintainer: Robertus Diawan Chris <diawan@pm.me>
" License:
" Copyright (c) Robertus Diawan Chris. Distributed under the same terms as Vim itself.
" See :h license
"
" Description:
" simple vim buffer management

function! ManageBuffer()
	let l:choice = confirm("List/Change/Close Buffer(s)?",
				\	"&LList\n&JChange\n&KClose")

	if l:choice == 1
		echo 'List buffer(s)'
		ls

	elseif l:choice == 2
		echo 'Change buffer'
		ls
		call inputsave()
		let l:buffernumber = input('Enter buffer number: ')
		call inputrestore()
		if !empty(l:buffernumber)
			call execute("b " . l:buffernumber)
		endif

	elseif l:choice == 3
		echo 'Close buffer(s)'
		ls
		call inputsave()
		let l:buffernumber = input('Enter buffer number: ')
		call inputrestore()
		if !empty(l:buffernumber)
			call execute("bd " . l:buffernumber)
		endif

	endif
endfunction

command! SimpBuf call ManageBuffer()
