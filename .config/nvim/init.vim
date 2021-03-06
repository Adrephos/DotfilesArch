set nobackup
set noswapfile
set relativenumber
set number
set tabstop=4 softtabstop=4 shiftwidth=4

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'

Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'

Plug 'iamcco/markdown-preview.nvim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh'
    \ }

call plug#end()

map <F3> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1


nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

nnoremap <C-p> :GFiles<CR>
nnoremap <C-T> :Files<cr>
nnoremap <Leader>b :Buffers<cr>
nnoremap <Leader>s :BLines<cr>

nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gs :G<CR>

nnoremap <leader>gc :GCheckout<CR>

nnoremap gp :call CocAction('runCommand', 'prettier.formatFile')<CR>

"" function to toggle numbers and relative numbers
function! NumberToggle()
    set nu!
    set rnu!
endfunction

map <F2> :call NumberToggle()<CR>

"" nnoremap gp :!npx prettier --write %:p<CR>

let g:mkdp_auto_start = 1
let g:mkdp_refresh_slow = 1

"" set filetypes as typescriptreact
au BufRead,BufNewFile *jsx,*.tsx set filetype=typescriptreact

hi tsxTagName ctermfg=51
hi tsxComponentName ctermfg=155
hi tsxCloseComponentName ctermfg=155
hi tsxCloseTag ctermfg=51
hi tsxCloseTagName ctermfg=51
