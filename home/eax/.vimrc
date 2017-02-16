syntax on

colorscheme desert
":set expandtab
set number
set tabstop=4
set shiftwidth=4

" don't switch a keymap during normal mode
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" Doesn't work well in Ctr+C, Ctr+V cases
" set autoindent

" always show status line
" set laststatus=2
set laststatus=1

" Large history
set history=1000

" Save bookmarks in ~/.viminfo
set viminfo='1000,f1

nmap <C-n> :set invnumber<Enter>

" wordwrap
"set textwidth=72
"set wrap

nmap <C-p> <C-w><C-]><C-w>T

command! CommitPush :!git commit -am fix ; git push origin HEAD
command! TabToSpace :1,$s/\t/    /g
command! Breakpoints :!cat % | perl -ne 'if($_ =~ /^(\w+)\(/) { print "b $1\n"; }'
command! HtmlList :'<,'>s!^\(.*\)$!<li><a href="\1">\1</a>;</li>
command! HtmlListAnchor :'<,'>s!^\(.*\)\s\+\(\S\+\)\s*$!<li><a href="\2">\1</a>;</li>
command! BackupVimrc :!scp ~/.vimrc vpn:.vimrc
command! ReloadVimrc :so $MYVIMRC
command! SpellOn :set spell spelllang=en_us,ru_ru
command! SpellOff :set nospell
command! MarkdownPreview !python3 -m markdown % -f /tmp/vim-preview.html && chromium-browser /tmp/vim-preview.html
command! MarkdownUpdate !python3 -m markdown % -f /tmp/vim-preview.html
" list global marks
command! Marks :marks ABCDEFGHIJKLMNOPQRSTUVWXYZ<Enter>

set foldmethod=manual

" highlight search string
set hlsearch
" change default search highligt color
highlight Search ctermbg=DarkBlue
" incremental search
set incsearch

" don't clutter your normal directories with *.swp files
set swapfile
set dir=~/temp/vimswap

" highlight trailing spaces
highlight ExtraWhitespace ctermbg=red guibg=red
" match ExtraWhitespace /\s\+$/
" Doesn't work too good for Python
" match ExtraWhitespace /\([ ]\{4\}\|\s\+$\)/

" limit the width of e-mail text to 72 characters
au BufRead /home/eax/temp/mutt-* set tw=72
" enable spellcheck for all emails
au BufRead /home/eax/temp/mutt-* SpellOn

" quickfix example
":set makeprg=grep
":set errorformat=%f:%l:%m

"filetype plugin on
"" set omnifunc=syntaxcomplete#Complete

"set nocompatible              " be iMproved, required
"filetype off                  " required

"" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

"" Plugin 'rust-lang/rust.vim'
"" Plugin 'phildawes/racer'
"Plugin 'derekwyatt/vim-scala'
"" Plugin 'zah/nimrod.vim'

"" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required

