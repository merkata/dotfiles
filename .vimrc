" PlugInstall
call plug#begin()
Plug 'pearofducks/ansible-vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'valloric/youcompleteme', { 'do': './install.py' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

" toggle NERDTree with C-n
map <C-n> :NERDTreeToggle<CR>

" conf for completions
let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" point to python2 for YCM to work
" let g:ycm_server_python_interpreter = '/usr/bin/python2' NOT NEEDED ANYMORE
let g:ycm_python_binary_path = 'python'

" sane defaults
syntax on
filetype plugin indent on
set expandtab
set shiftwidth=2
set tabstop=2
colorscheme vividchalk

set wildmenu
set wildmode=full

" alchemist specific
" let g:alchemist#elixir_erlang_src = '/home/mddimitrov/foobar/alchemist_sources'

" remaps for YCM scroll through preview window
nmap <a-j> <c-w>w<c-e><c-w>w
nmap <a-k> <c-w>w<c-y><c-w>w

" execute python code in buffer with F9
autocmd FileType python nnoremap <F9> <ESC>:w<CR>:!clear;python %<CR>
" imap <F5> <Esc>:w<CR>:!clear;python %<CR>
