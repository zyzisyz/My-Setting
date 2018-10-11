" -----------------------------------
" Author: Yang Zhang
" Time: 2018-8-5
" 开始地点: 中国-四川-成都
" -----------------------------------

" 自动补全括号等
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i


" 各种缩进
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent   " 自动缩进
set cindent


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


" 不要交换文件和备份文件，减少冲突"
set noswapfile
set nobackup
set nowritebackup

""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头 
""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile *.cpp,*.sh,*.rb,*.java,*.py exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
	"如果文件类型为.sh文件 
	if &filetype == 'sh' 
		call setline(1,"\#!/bin/bash")
		call append(line("."), "") 
		call append(line(".")+1, "#*************************************************************************")
		call append(line(".")+2, "#	> File Name: ".expand("%"))
		call append(line(".")+3, "#	> Author: ") 
		call append(line(".")+4, "#	> Mail: ") 
		call append(line(".")+5, "#	> Created Time: ".strftime("%c")) 
		call append(line(".")+6, "# ************************************************************************/") 
		call append(line(".")+7, "")

    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
	    call append(line(".")+1, "")
		call append(line(".")+2, "# *************************************************************************")
		call append(line(".")+3, "#	> File Name: ".expand("%"))
		call append(line(".")+4, "#	> Author: ") 
		call append(line(".")+5, "#	> Mail: ") 
		call append(line(".")+6, "#	> Created Time: ".strftime("%c")) 
		call append(line(".")+7, "# ************************************************************************/") 
		call append(line(".")+8, "") 

    elseif &filetype == 'ruby'
        call setline(1,"#!/usr/bin/env ruby")
        call append(line("."),"# encoding: utf-8")
	    call append(line(".")+1, "")
		call append(line(".")+2, "# *************************************************************************")
		call append(line(".")+3, "#	> File Name: ".expand("%"))
		call append(line(".")+4, "#	> Author: ") 
		call append(line(".")+5, "#	> Mail: ") 
		call append(line(".")+6, "#	> Created Time: ".strftime("%c")) 
		call append(line(".")+7, "# ************************************************************************/") 
		call append(line(".")+8, "")

	else 
		call setline(1, "/*************************************************************************") 
		call append(line("."), "	> File Name: ".expand("%")) 
		call append(line(".")+1, "	> Author: ") 
		call append(line(".")+2, "	> Mail: ") 
		call append(line(".")+3, "	> Created Time: ".strftime("%c")) 
		call append(line(".")+4, " ************************************************************************/") 
		call append(line(".")+5, "")
	endif
	if expand("%:e") == 'cpp'
		call append(line(".")+6, "#include<iostream>")
		call append(line(".")+7, "using namespace std;")
		call append(line(".")+8, "")
	endif
	if &filetype == 'c'
		call append(line(".")+6, "#include<stdio.h>")
		call append(line(".")+7, "")
	endif
	if expand("%:e") == 'h'
		call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H")
		call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H")
		call append(line(".")+8, "#endif")
	endif
	if &filetype == 'java'
		call append(line(".")+6,"public class ".expand("%:r"))
		call append(line(".")+7,"")
	endif
	"新建文件后，自动定位到文件末尾
endfunc 
autocmd BufNewFile * normal G
