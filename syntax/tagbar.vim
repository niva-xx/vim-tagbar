" File:        tagbar.vim
" Description: Tagbar syntax settings
" Author:      Jan Larres <jan@majutsushi.net>
" Licence:     Vim licence
" Website:     http://majutsushi.github.com/tagbar/
" Version:     1.5

if exists("b:current_syntax")
  finish
endif

syntax match TagbarComment   '^".*'

syntax match TagbarKind      '\([-+][-+ ]\)\@<=[^-+: ]\+[^:]\+$'
syntax match TagbarScope     '[^-+#(* ]\+\(\*\? :\)\@='
syntax match TagbarScopeType ' : \zs.*'
syntax match TagbarSignature '(.*)'
syntax match TagbarPseudoID  '\*\ze :'

syntax match TagbarFoldIcon  '[-+]\([-+# ]\)\@='

syntax match TagbarAccessPublic    '\([-+ ]\)\@<=+\([^-+# ]\)\@='
syntax match TagbarAccessProtected '\([-+ ]\)\@<=#\([^-+# ]\)\@='
syntax match TagbarAccessPrivate   '\([-+ ]\)\@<=-\([^-+# ]\)\@='

highlight default link TagbarComment   Comment
highlight default link TagbarKind      Identifier
highlight default link TagbarScope     Title
highlight default link TagbarScopeType Type
highlight default link TagbarSignature SpecialKey
highlight default link TagbarPseudoID  NonText
highlight default link TagbarFoldIcon  FoldColumn

highlight default TagbarAccessPublic    guifg=Green ctermfg=Green
highlight default TagbarAccessProtected guifg=Blue  ctermfg=Blue
highlight default TagbarAccessPrivate   guifg=Red   ctermfg=Red

let b:current_syntax = "tagbar"