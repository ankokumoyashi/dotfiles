" いつもの
inoremap <silent> jk <ESC>
" window分割系
map <silent> sv :vsplit<CR>
map <silent> sp :sp<CR>
" ターミナルでのescape用
tnoremap <silent> <ESC> <C-\><C-n>
" dein.vimのディレクトリ
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" なければgit clone
if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . s:dein_repo_dir

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " 管理するプラグインを記述したファイル
  let s:toml = '~/.config/nvim/dein.toml'
  let s:lazy_toml = '~/.config/nvim/dein_lazy.toml'
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif
" プラグインの追加・削除やtomlファイルの設定を変更した後は
" 適宜 call dein#update や call dein#clear_state を呼んでください。
" そもそもキャッシュしなくて良いならload_state/save_stateを呼ばないようにしてください。

" 2016.04.16 追記
" load_cache -> load_state
" save_cache -> save_state
" となり書き方が少し変わりました。
" 追記終わり

" その他インストールしていないものはこちらに入れる
if dein#check_install()
  call dein#install()
endif
" }}}

" VimFiler
map <C-n> :VimFilerExplorer<CR>
map <C-b> :Unite bookmark<CR>
map <C-j> :Unite file_mru buffer<CR>
autocmd TermOpen * setlocal norelativenumber
autocmd TermOpen * setlocal nonumber
autocmd FileType vimfiler call unite#custom_default_action('directory', 'cd')
let g:vimfiler_as_default_explorer = 1
let g:unite_enable_start_insert=1
syntax enable

" memolist.vim
let g:memolist_unite        = 1
let g:memolist_unite_source = "file_rec"
let g:memolist_unite_option = "-start-insert"
let mapleader = "\<Space>"
nnoremap <Leader>mn  :MemoNew<CR>
nnoremap <Leader>ml  :MemoList<CR>
nnoremap <Leader>mg  :MemoGrep<CR>
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l


" markdown_
augroup update_markdown_syntax
  autocmd!
  autocmd BufNew,BufEnter * if &filetype == 'markdown' | syntax match markdownError '\w\@<=\w\@=' | endif
augroup END

" csvtomarkdownの設定
let g:table_converter_root_path = '/root/.config/nvim/table-converter'
source /root/.config/nvim/table-converter/vim/commands.vim

set number             "行番号を表示
set tabstop=4          "タブを何文字の空白に変換するか
set shiftwidth=4       "自動インデント時に入力する空白の数
set expandtab          "タブ入力を空白に変換
set splitright         "画面を縦分割する際に右に開く
set clipboard=unnamed  "yank した文字列をクリップボードにコピー
set hls                "検索した文字をハイライトする
set smarttab
set mouse=             "コピペのためにmouse無効化
set norelativenumber
set nocursorline
set noswapfile

" === gruvbox ===
colorscheme gruvbox

set background=dark
set t_Co=256            " gruvboxをカラースキーマにするときに必要！
let g:ligthline = { 'colorscheme': 'gruvbox' }
" === gruvbox ===1
