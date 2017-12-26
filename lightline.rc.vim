"
"However, the color of the syntastic component is the same as the lineinfo
"component.
"
"In order to change the syntastic component more outstanding, you have to use
"|g:lightline.component_expand|. See the following example:

	" Example B
	let g:lightline = {
	      \ 'active': {
	      \   'right': [ [ 'syntastic', 'lineinfo' ],
	      \              [ 'percent' ],
	      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
	      \ },
	      \ 'component_expand': {
	      \   'syntastic': 'SyntasticStatuslineFlag',
	      \ },
	      \ 'component_type': {
	      \   'syntastic': 'error',
	      \ }
	      \ }
	let g:syntastic_mode_map = { 'mode': 'passive' }
	augroup AutoSyntastic
	  autocmd!
	  autocmd BufWritePost *.html,*.js  call s:syntastic()
	augroup END
	function! s:syntastic()
    SyntasticCheck
	  call lightline#update()
	endfunction"
