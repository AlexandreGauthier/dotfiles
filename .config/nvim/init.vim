nnoremap ; :
vnoremap ; :

nnoremap <SPACE> <Nop>
map <Space> <Leader>

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kassio/neoterm'
call plug#end()

" coc.vim
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=50
set number

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" FZF

nnoremap <Leader>f :Files <CR>
nnoremap <Leader>b :Buffers <CR>

" Terminal
nnoremap <Leader>t :Ttoggle <CR>

