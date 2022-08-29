" Vim syntax file
" Language:         CrySL
" Maintainer:       Theofilos Petsios
" Contributor:      Lukas Nagel
" Last Change:      August 29, 2022

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Keywords
syntax keyword cryslKeyword CONSTRAINTS ENSURES EVENTS FORBIDDEN
                          \ OBJECTS ORDER REQUIRES SPEC

" Indentifier
syntax match cryslIdentifier '\v<[a-zA-Z0-9_]+>'
syntax match cryslQualifiedClassName '\v<([a-zA-Z0-9_]+\.)*[A-Z0-9][a-zA-Z0-9_]+>'
syntax keyword cryslPrimitveTypes boolean byte char short int long float double

" Literals
syntax region cryslString start='"' end='"' skip='\v(\\\\|\\")' oneline
syntax match cryslInteger '\v<(\d+|\d+^d+)>'

" Comments
syntax match cryslCommentInline /\/\/.*/
syntax region cryslCommentBlock start=/\/\*/ end=/\*\//

" Default Highlighting
highlight default link cryslKeyword Keyword
highlight default link cryslIdentifier Identifier
highlight default link cryslQualifiedClassName Type
highlight default link cryslPrimitveTypes Type
highlight default link cryslString String
highlight default link cryslInteger Number
highlight default link cryslCommentInline Comment
highlight default link cryslCommentBlock Comment
