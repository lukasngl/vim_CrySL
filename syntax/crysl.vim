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
syntax keyword cryslSectionKeyword CONSTRAINTS ENSURES EVENTS FORBIDDEN
                                  \ OBJECTS ORDER REQUIRES SPEC

syntax keyword cryslExpressionKeyword in after

" Indentifier
syntax match cryslIdentifier '\v<[a-zA-Z0-9_]+>'
syntax match cryslQualifiedClassName '\v<([a-zA-Z0-9_]+\.)*[A-Z0-9][a-zA-Z0-9_]+>'
syntax keyword cryslPrimitveType boolean byte char short int long float double

" Literals
syntax region cryslString start='"' end='"' skip='\v(\\\\|\\")' oneline
syntax match cryslInteger '\v<\d+(\^\d+)?>'
syntax keyword cryslBoolean true false

" Comments
syntax match cryslCommentInline /\/\/.*/
syntax region cryslCommentBlock start=/\/\*/ end=/\*\//

" Default Highlighting
highlight default link cryslSectionKeyword Keyword
highlight default link cryslExpressionKeyword Keyword
highlight default link cryslIdentifier Identifier
highlight default link cryslQualifiedClassName Type
highlight default link cryslPrimitveType Type
highlight default link cryslString String
highlight default link cryslInteger Number
highlight default link cryslBoolean Constant
highlight default link cryslCommentInline Comment
highlight default link cryslCommentBlock Comment
