set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
set go+=c
set laststatus=2
set number

syntax on


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'pydave/AsyncCommand'
Plugin 'mnick/vim-pomodoro'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
call vundle#end()            " required
filetype plugin indent on    " required
colorscheme babymate256
" Duration of a pomodoro in minutes (default: 25)
let g:pomodoro_time_work = 25

" Duration of a break in minutes (default: 5)
let g:pomodoro_time_slack = 5 

" Log completed pomodoros, 0 = False, 1 = True (default: 0)
let g:pomodoro_do_log = 1

" Path to the pomodoro log file (default: /tmp/pomodoro.log)
let g:pomodoro_log_file = "/tmp/pomodoro.log" 

