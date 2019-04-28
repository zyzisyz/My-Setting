" -----------------------------------
" Author: Yang Zhang

" Time: 2018-8-5
" 开始地点: 中国-四川-成都-电子科技大学

" time：2019-4-10
" 地点：中国-北京-清华大学-FIT-CSLT

" time：2019-4-28
" 地点：中国-北京-北邮-西土城校区-图书馆
" -----------------------------------

" 自动补全括号等
"inoremap ' ''<ESC>i
"inoremap " ""<ESC>i
"inoremap ( ()<ESC>i
"inoremap [ []<ESC>i
"inoremap { {}<ESC>i
"inoremap { {<CR>}<ESC>O


" 各种缩进
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent   " 自动缩进
set cindent
set noexpandtab

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）  
set mouse=a  
set selection=exclusive  
set selectmode=mouse,key 
vnoremap <c-c>   " 选中状态下 Ctrl+c 复制
nmap <silent> <C-v>  " Ctrl+v
set wildmenu"按TAB键时命令行自动补齐
set nu     " 显示行号
set history=2000      " 显示历史纪录
set showmatch    " 匹配括号高亮
set syntax=on    " 语法高亮
set showcmd         " 输入的命令显示出来，看的清楚些
filetype on     " 侦测文件类型
filetype indent on   " 为特定文件类型载入相关缩进文件
set nocompatible     " 不要使用vi的键盘模式，而是vim自己的
set fileencodings=utf-8   " utf-8
set fileformats=unix,dos,mac
set cmdheight=2  " 设置命令行的高度为2

"syntax and theme
colorscheme desert
set background=dark
set cursorline
set cursorcolumn

" 不要交换文件和备份文件，减少冲突"
set noswapfile
set nobackup
set nowritebackup



""""""""""""""""""""""""""""""""""""""""""
" 新建.c,.h,.sh,.java文件，自动插入文件头 
""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile *.cpp,*.sh,*.rb,*.java,*.py,*.h exec ":call SetTitle()" 
autocmd BufNewFile * normal G   " 新建文件后，自动定位到文件末尾

""定义函数SetTitle，自动插入文件头 
func SetTitle() 

	"sh 
	if &filetype == 'sh' 
		call setline(1,"\#!/bin/bash")
		call append(line("."), "") 
		call append(line(".")+1, "#*************************************************************************")
		call append(line(".")+2, "#	> File Name: ".expand("%"))
		call append(line(".")+3, "#	> Author: Yang Zhang ") 
		call append(line(".")+4, "#	> Mail: zyziszy@foxmail.com ") 
		call append(line(".")+5, "#	> Created Time: ".strftime("%c")) 
		call append(line(".")+6, "# ************************************************************************/") 
		call append(line(".")+7, "")
		call append(line(".")+8, "")
		call append(line(".")+9, "")

	" py
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
	    call append(line(".")+1, "")
		call append(line(".")+2, "# *************************************************************************")
		call append(line(".")+3, "#	> File Name: ".expand("%"))
		call append(line(".")+4, "#	> Author: Yang Zhang ") 
		call append(line(".")+5, "#	> Mail: zyziszy@foxmail.com") 
		call append(line(".")+6, "#	> Created Time: ".strftime("%c")) 
		call append(line(".")+7, "# ************************************************************************/") 
		call append(line(".")+8, "")
		call append(line(".")+9, "")
		call append(line(".")+10, "")

	" ruby
    elseif &filetype == 'ruby'
        call setline(1,"#!/usr/bin/env ruby")
        call append(line("."),"# encoding: utf-8")
	    call append(line(".")+1, "")
		call append(line(".")+2, "# *************************************************************************")
		call append(line(".")+3, "#	> File Name: ".expand("%"))
		call append(line(".")+4, "#	> Author: Yang Zhang ") 
		call append(line(".")+5, "#	> Mail: zyziszy@foxmail.com ") 
		call append(line(".")+6, "#	> Created Time: ".strftime("%c")) 
		call append(line(".")+7, "# ************************************************************************/") 
		call append(line(".")+8, "")
		call append(line(".")+9, "")
		call append(line(".")+10, "")
	
	" else / not #
	else 
		call setline(1, "/*************************************************************************") 
		call append(line("."), "	> File Name: ".expand("%")) 
		call append(line(".")+1, "	> Author: Yang Zhang ") 
		call append(line(".")+2, "	> Mail: zyziszy@foxmail.com ") 
		call append(line(".")+3, "	> Created Time: ".strftime("%c")) 
		call append(line(".")+4, " ************************************************************************/") 
		call append(line(".")+5, "")
	endif

	" cpp
	if expand("%:e") == 'cpp'
		call append(line(".")+6, "#include<iostream>")
		call append(line(".")+7, "using namespace std;")
		call append(line(".")+8, "")
		call append(line(".")+9, "")
		call append(line(".")+10, "")
	endif

	" c
	if &filetype == 'c'
		call append(line(".")+6, "#include<stdio.h>")
		call append(line(".")+7, "")
		call append(line(".")+8, "")
		call append(line(".")+9, "")
	endif

	" h
	if expand("%:e") == 'h'
		call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H")
		call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H")
		call append(line(".")+8, "#endif")
		call append(line(".")+9, "")
		call append(line(".")+10, "")
		call append(line(".")+11, "")
	endif

	" java
	if &filetype == 'java'
		call append(line(".")+6, "public class ".expand("%:r"))
		call append(line(".")+7, "")
	endif

endfunc

" 一键编译运行
autocmd FileType cpp map <F5> <ESC>:w<CR>:!g++ % && ./a.out<CR>
autocmd FileType python map <F5> <ESC>:w<CR>:!python %<CR>
autocmd FileType sh map <F5> <ESC>:w<CR>:!sh %<CR>
