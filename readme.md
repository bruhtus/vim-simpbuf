# simpbuf.vim

Simpbuf is a shameless extension of the famous mapping `:ls<CR>:b` command in vim. To make it simple, it manage your buffer using `:b`, `:ls`, and `:bd` command. So, please treat it the same as you use those three command.

For example: <br>
- If you want to change buffer, only pass one argument. Let's say you want to change to buffer number 69, then you need to pass the number `69` and hit enter. Do not pass multiple buffer number if you want to change buffer, like `69 23`.
- If you want to delete buffer, you can pass more than one argument. Let's say you want to delete buffer number 69 and 23, then you need to type the number `69 23` and hit enter. Do not forget the spacing between the number.

## Installation

Install this plugin using your favorite plugin manager, below is a few example of the plugin manager that available:
- [vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'bruhtus/vim-simpbuf'
```
- [packer.nvim](https://github.com/wbthomason/packer.nvim)
```vim
use 'bruhtus/vim-simpbuf'
```
- [minpac](https://github.com/k-takata/minpac)
```vim
call minpac#add('bruhtus/vim-simpbuf')
```

## Usage

After you invoke the `SimpBuf` command, there's a prompt that ask you whether you want to see list buffer, change buffer, or delete buffer. Below is the action you can use:
- If you press `L` (uppercase/lowercase doesn't matter), then you only see buffer list. To exit, `press enter or any key` like usual.
- If you press `J` (uppercase/lowercase doesn't matter), and enter the buffer number you want to access, then the buffer gonna change to the buffer you specify. The buffer number is on the most left or the first column. If the buffer number doesn't exist, it gonna give you an error (I haven't figured how to handle that at the moment).
- If you press `K` (uppercase/lowercase doesn't matter), and enter the buffer number you want to close, then it gonna close the buffer you specify.

This plugin doesn't provide any keybinding, you can make your own keybinding with the command `SimpBuf`.

For example: <br>
```vim
nnoremap <silent> <leader>n :SimpBuf<CR>
```

## Customization

`¯\_(ツ)_/¯`
