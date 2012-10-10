" Vim compiler plugin
" Compiler: foodcritic
" Maintainer: atsaki <atsaki01@gmail.com>
" URL: https://github.com/atsaki/foodcritic-vim
" Last Change: 2012 Oct 7

if exists("current_compiler")
  finish
endif
let current_compiler = "foodcritic"

if exists(":CompilerSet") != 2  " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=foodcritic\ .

CompilerSet errorformat=%m:\ %f:%l

