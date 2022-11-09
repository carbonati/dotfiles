" set theme and fonts
syntax on
set guifont=Source\ Code\ Pro
set background=dark
set t_Co=256
set re=1

try
  colorscheme onedark
  hi Normal ctermfg=white
  hi Comment ctermfg=grey
  highlight LineNr ctermfg=grey
  set cursorline
catch
endtry

" escape key shortcut
inoremap jj <esc>
inoremap jk <esc>

" line numbers
set number
set numberwidth=4

" history and no backups
set history=1000
set nobackup
set nowb
set noswapfile

" show cursor at current position and copy
set mouse=r
set ruler
set clipboard+=unnamed

" show filepath
set laststatus=2
set statusline+=%F

" auto indentation
set autoindent
set wrap

" .py files
autocmd Filetype python call SetPythonOptions()
function SetPythonOptions()
  set tabstop=4
  set shiftwidth=4
  set indentkeys&
  match Keyword /self/
  " show where 80 characters is
  set colorcolumn=80
endfunction

" .sh files
autocmd Filetype sh call SetShOptions()
function SetShOptions()
  set tabstop=2
  set shiftwidth=2
endfunction

" tabs & spacing
set indentkeys&
set tabstop=2
set shiftwidth=2
set expandtab

" highlight searches
set hlsearch
set incsearch
set smartcase
noremap <silent><leader>/ :nohls<CR>

" show mode and commands typed
set showcmd
set showmode

" remove trailing spaces
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * :%s/\s\+$//e

" set wild menu on
set wildmenu
set wildmode=longest:list,full

" mute sounds
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" show match position
set shortmess-=S

" python linting
let g:pymode_python = 'python3'
let g:pymode_lint_on_write = 0

" local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
