if exists("b:current_syntax")
  finish
endif

syntax match prototxtIdentifier "\v\w+\s*(:|\{)@="
highlight link prototxtIdentifier Identifier

syntax match prototxtComment "\v#.*$"
highlight link prototxtComment Comment

syntax region prototxtString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link prototxtString String

let b:current_syntax = "prototxt"
