set number
set nowrap
set tabstop=4
set autoindent
set shiftwidth=4
set history=700
set undolevels=1000
set title
set visualbell
set noerrorbells

set encoding=utf8
set ffs=unix,dos,mac

try
	colorscheme monokai
endtry

if('mouse')
	set mouse=a
endif

set expandtab

filetype plugin indent on


" :FormatJSON
command! FormatJSON %!python -m json.tool

syntax on
