set rnu "relative number

set cindent

" --- backup and swap files ---

" I save all the time, those are annoying and unnecessary...


set nobackup

set nowritebackup

set noswapfile



set sidescrolloff=5         " Start scrolling n chars before end of screen.

set sidescroll=1            " The minimal number of columns to scroll

                            "   horizontally.







" --- command completion ---

set wildmenu                " Hitting TAB in command mode will

set wildchar=<TAB>          "   show possible completions.

set wildmode=list:longest

set wildignore+=*.DS_STORE,*.db,node_modules/**,*.jpg,*.png,*.gif





set encoding=utf-8



"---- leader mapping keys ----
let mapleader=","

imap jk <Esc>

:nmap <leader>q :q<CR>

:nmap <leader>w :w<CR>

nnoremap <leader><space> :nohlsearch<CR>

nnoremap <leader>ev :vsp $MYVIMRC<CR>

nnoremap S :%s//g<Left><Left>



nnoremap <Leader>x /\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn

nnoremap <Leader>X ?\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgN

nnoremap <leader>cd :cd ~<CR>



"Auto change dir to current dir

"set autochdir

autocmd BufEnter * silent! lcd %:p:h



" no sound

set visualbell

autocmd GUIEnter * set vb t_vb= " for your GUI

autocmd VimEnter * set vb t_vb=



set cmdheight=2

set showmatch



nnoremap j gj

nnoremap k gk





" Section: Messages and info

setglobal confirm

setglobal showcmd



set number

set mouse=a



set autoindent

set smartindent



set tabstop=4

set shiftwidth=4

set expandtab



set ignorecase

set smartcase



set incsearch

set hlsearch



set title

set ruler



set nocompatible


set scrolloff=5 " 몇줄 남기고 스크롤하기

set ttyfast




" set lines=24 columns=120



set clipboard=unnamedplus " use OS clipboard

" autocmd BufWritePre * %s/\s\+$//e



" ###################################################################

" shortcutting split navigation, saving a keypress:

map <C-h> <C-w>h

map <C-j> <C-w>j

map <C-k> <C-w>k

map <C-l> <C-w>l

"test

" ###################################################################

" if has('win32')

"     set fileencoding=utf-8

"     language messages en_US

" endif



" if has('gui')

"     set encoding=utf-8

"     set guifont=Hack:h12:cANSI

"     set guifontwide=Dotumche:h10:cDEFAULT

" endif

" ###################################################################


source $VIMRUNTIME/delmenu.vim

set langmenu=ko_kr.utf-8

source $VIMRUNTIME/menu.vim



set fileencodings=utf8  ",euc-kr

" set guifont=Consolas:h13:cANSI

set guifont=Consolas:h13:cANSI

set guifontwide=Dotumche:h12:cDEFAULT


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"#############################################################################"
call plug#begin('~/.vim/plugged')
" for go -----
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'AndrewRadev/splitjoin.vim'
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}

" Code and files fuzzy finder

Plug 'ctrlpvim/ctrlp.vim'

" Extension to ctrlp, for fuzzy command finder

Plug 'fisadev/vim-ctrlp-cmdpalette'

Plug 'junegunn/fzf'



Plug 'VundleVim/Vundle.vim'

Plug 'scrooloose/nerdtree'

Plug 'vim-airline/vim-airline'

Plug 'kchmck/vim-coffee-script'

Plug 'altercation/vim-colors-solarized'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-repeat'

Plug 'nanotech/jellybeans.vim'

Plug 'prettier/vim-prettier'

Plug 'flazz/vim-colorschemes'

Plug 'justinmk/vim-sneak'

Plug 'tpope/vim-commentary'

Plug 'vim-scripts/ReplaceWithRegister'

Plug 'christoomey/vim-system-copy'

Plug 'kana/vim-textobj-user'

Plug 'kana/vim-textobj-indent'

Plug 'kana/vim-textobj-line'

Plug 'junegunn/vim-plug'

" Autoclose

Plug 'jiangmiao/auto-pairs'


" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Plug 'junegunn/fzf.vim'


" Code and files fuzzy finder

Plug 'ctrlpvim/ctrlp.vim'

" Extension to ctrlp, for fuzzy command finder

Plug 'fisadev/vim-ctrlp-cmdpalette'

Plug 'scrooloose/nerdtree'

Plug 'vim-airline/vim-airline'

Plug 'kchmck/vim-coffee-script'

Plug 'altercation/vim-colors-solarized'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-repeat'

Plug 'nanotech/jellybeans.vim'

Plug 'prettier/vim-prettier'

Plug 'flazz/vim-colorschemes'

Plug 'justinmk/vim-sneak'

Plug 'vim-syntastic/syntastic'

Plug 'tpope/vim-commentary'

Plug 'vim-scripts/ReplaceWithRegister'

Plug 'christoomey/vim-system-copy'

Plug 'kana/vim-textobj-user'

Plug 'kana/vim-textobj-indent'

Plug 'kana/vim-textobj-line'

Plug 'junegunn/vim-plug'

" Autoclose




call plug#end()

""########################################################################

filetype plugin indent on

map <Leader>nt <ESC>:NERDTree<CR>
nmap <F6> :NERDTreeToggle<CR>

" ------for windows-----------
" map <leader>r <ESC>:w<CR> :!python %<CR>

" ------for linux-----------
map <leader>r <ESC>:w<CR> :!clear; python3 %<CR>

" colorscheme kolor
colorscheme solarized
"============================================================================

" Vim settings and mappings

" You can edit them as you wish



" no vi-compatible

set nocompatible



" allow plugins by file type (required for plugins!)

filetype plugin on

filetype indent on



" tabs and spaces handling

set expandtab

set tabstop=4

set softtabstop=4

set shiftwidth=4



" tab length exceptions on some file types

autocmd FileType html setlocal shiftwidth=4 tabstop=4 softtabstop=4

autocmd FileType htmldjango setlocal shiftwidth=4 tabstop=4 softtabstop=4

autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4


autocmd FileType go setlocal shiftwidth=2 tabstop=2 softtabstop=2


" always show status bar

set ls=2



" incremental search

set incsearch

" highlighted search results

set hlsearch



" syntax highlight on

syntax on



" show line numbers

set nu

" Recommended setting for vim-syntastic
"
"
"
"
" change python syntastic to python3

let g:syntastic_python_checkers=['pylint']

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0



" tab navigation mappings

map tn :tabn<CR>

map tp :tabp<CR>

map tm :tabm

map tt :tabnew

map ts :tab split<CR>

map <C-S-Right> :tabn<CR>

imap <C-S-Right> <ESC>:tabn<CR>

map <C-S-Left> :tabp<CR>

imap <C-S-Left> <ESC>:tabp<CR>





" Comment this line to enable autocompletion preview window

" (displays documentation related to the selected completion option)

" Disabled by default because preview makes the window flicker

set completeopt-=preview





" autocompletion of files and commands behaves like shell

" (complete only the common part, list the options that match)

set wildmode=list:longest



" better backup, swap and undos storage

set directory=~/.vim/dirs/tmp     " directory to place swap files in

set backup                        " make backup files

set backupdir=~/.vim/dirs/backups " where to put backup files

set undofile                      " persistent undos - undo after you re-open the file

set undodir=~/.vim/dirs/undos

set viminfo+=n~/.vim/dirs/viminfo

" store yankring history file there too

let g:yankring_history_dir = '~/.vim/dirs/'



" create needed directories if they don't exist

if !isdirectory(&backupdir)

    call mkdir(&backupdir, "p")

endif

if !isdirectory(&directory)

    call mkdir(&directory, "p")

endif

if !isdirectory(&undodir)

    call mkdir(&undodir, "p")

endif



" ============================================================================

" Plugins settings and mappings

" Edit them as you wish.

" Autoimport for go --------------

let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
" let g:go_highlight_extra_types = 1
" let g:go_highlight_generate_tags = 1


  " :GoTest
  autocmd FileType go nmap <leader>t  <Plug>(go-test)

  " :GoRun
  autocmd FileType go nmap <leader>r  <Plug>(go-run)
" Autoclose ------------------------------



" Fix to let ESC work as espected with Autoclose plugin

let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}



" CtrlP ------------------------------



" file finder mapping

let g:ctrlp_map = ',e'

" tags (symbols) in current file finder mapping

nmap ,g :CtrlPBufTag<CR>

" tags (symbols) in all files finder mapping

nmap ,G :CtrlPBufTagAll<CR>

" general code finder in all files mapping

nmap ,f :CtrlPLine<CR>

" recent files finder mapping

nmap ,m :CtrlPMRUFiles<CR>

" commands finder mapping

nmap ,c :CtrlPCmdPalette<CR>

" to be able to call CtrlP with default search text

function! CtrlPWithSearchText(search_text, ctrlp_command_end)

    execute ':CtrlP' . a:ctrlp_command_end

    call feedkeys(a:search_text)

endfunction



" don't change working directory

let g:ctrlp_working_path_mode = 0


" Plugin to copy matches (search hits which may be multiline).
" Version 2012-05-03 from http://vim.wikia.com/wiki/VimTip478
"
" :CopyMatches      copy matches to clipboard (each match has newline added)
" :CopyMatches x    copy matches to register x
" :CopyMatches X    append matches to register x
" :CopyMatches -    display matches in a scratch buffer (does not copy)
" :CopyMatches pat  (after any of above options) use 'pat' as search pattern
" :CopyMatches!     (with any of above options) insert line numbers
" Same options work with the :CopyLines command (which copies whole lines).

" Jump to first scratch window visible in current tab, or create it.
" This is useful to accumulate results from successive operations.
" Global function that can be called from other scripts.
function! GoScratch()
  let done = 0
  for i in range(1, winnr('$'))
    execute i . 'wincmd w'
    if &buftype == 'nofile'
      let done = 1
      break
    endif
  endfor
  if !done
    new
    setlocal buftype=nofile bufhidden=hide noswapfile
  endif
endfunction

" Append match, with line number as prefix if wanted.
function! s:Matcher(hits, match, linenums, subline)
  if !empty(a:match)
    let prefix = a:linenums ? printf('%3d  ', a:subline) : ''
    call add(a:hits, prefix . a:match)
  endif
  return a:match
endfunction

" Append line numbers for lines in match to given list.
function! s:MatchLineNums(numlist, match)
  let newlinecount = len(substitute(a:match, '\n\@!.', '', 'g'))
  if a:match =~ "\n$"
    let newlinecount -= 1  " do not copy next line after newline
  endif
  call extend(a:numlist, range(line('.'), line('.') + newlinecount))
  return a:match
endfunction

" Return list of matches for given pattern in given range.
" If 'wholelines' is 1, whole lines containing a match are returned.
" This works with multiline matches.
" Work on a copy of buffer so unforeseen problems don't change it.
" Global function that can be called from other scripts.
function! GetMatches(line1, line2, pattern, wholelines, linenums)
  let savelz = &lazyredraw
  set lazyredraw
  let lines = getline(1, line('$'))
  new
  setlocal buftype=nofile bufhidden=delete noswapfile
  silent put =lines
  1d
  let hits = []
  let sub = a:line1 . ',' . a:line2 . 's/' . escape(a:pattern, '/')
  if a:wholelines
    let numlist = []  " numbers of lines containing a match
    let rep = '/\=s:MatchLineNums(numlist, submatch(0))/e'
  else
    let rep = '/\=s:Matcher(hits, submatch(0), a:linenums, line("."))/e'
  endif
  silent execute sub . rep . (&gdefault ? '' : 'g')
  close
  if a:wholelines
    let last = 0  " number of last copied line, to skip duplicates
    for lnum in numlist
      if lnum > last
        let last = lnum
        let prefix = a:linenums ? printf('%3d  ', lnum) : ''
        call add(hits, prefix . getline(lnum))
      endif
    endfor
  endif
  let &lazyredraw = savelz
  return hits
endfunction

" Copy search matches to a register or a scratch buffer.
" If 'wholelines' is 1, whole lines containing a match are returned.
" Works with multiline matches. Works with a range (default is whole file).
" Search pattern is given in argument, or is the last-used search pattern.
function! s:CopyMatches(bang, line1, line2, args, wholelines)
  let l = matchlist(a:args, '^\%(\([a-zA-Z"*+-]\)\%($\|\s\+\)\)\?\(.*\)')
  let reg = empty(l[1]) ? '+' : l[1]
  let pattern = empty(l[2]) ? @/ : l[2]
  let hits = GetMatches(a:line1, a:line2, pattern, a:wholelines, a:bang)
  let msg = 'No non-empty matches'
  if !empty(hits)
    if reg == '-'
      call GoScratch()
      normal! G0m'
      silent put =hits
      " Jump to first line of hits and scroll to middle.
      ''+1normal! zz
    else
      execute 'let @' . reg . ' = join(hits, "\n") . "\n"'
    endif
    let msg = 'Number of matches: ' . len(hits)
  endif
  redraw  " so message is seen
  echo msg
endfunction
command! -bang -nargs=? -range=% CopyMatches call s:CopyMatches(<bang>0, <line1>, <line2>, <q-args>, 0)
command! -bang -nargs=? -range=% CopyLines call s:CopyMatches(<bang>0, <line1>, <line2>, <q-args>, 1)

if !has('nvim')
    set viminfo+=~/.vim/viminfo
endif
