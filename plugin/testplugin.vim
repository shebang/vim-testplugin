"=============================================================================
" FILE: testplugin.vim
" License: MIT license
"=============================================================================

let s:save_cpo = &cpo
set cpo&vim

scriptencoding utf-8

if &cp || v:version < 802 || (exists('g:loaded_testplugin') && g:loaded_testplugin)
  finish
endif

let g:loaded_testplugin = 1

let g:testplugin_conf_var1 =
      \ get( g:, 'testplugin_conf_var1', 'Val1' )

let g:testplugin_conf_var2 =
      \ get( g:, 'testplugin_conf_var2', 'Val2' )



function TestPluginFunc()
  echom 'work done...'
endfunction

command! -bar TestPluginCmd  call TestPluginFunc()

