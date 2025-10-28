" Vim syntax file for Polarity language

if exists("b:current_syntax")
	finish
end

syn keyword polKeyword data codata def codef let absurd use infix as note
syn keyword polControlKeyword match comatch
syn keyword polTypeKeyword Type
syn keyword polModifierKeyword implicit

syn match polOperator "=>"
syn match polPunctuation "[;,:.]"

syn match polComment "//.*$"

syn match polIdentifier "\a\(\a\|[0-9_']\)*"

syn region polString start='"' end='"' contains=polStringEscape
syn region polCharacter start="'" end="'" contains=polStringEscape
syn match polStringEscape "\\[ntr\\\"']" contained
syn match polStringEscape "\\u{[0-9a-fA-F]\{1,6}}" contained

hi def link polKeyword Keyword
hi def link polControlKeyword Conditional
hi def link polTypeKeyword Type
hi def link polModifierKeyword StorageClass
hi def link polOperator Operator
hi def link polPunctuation Delimiter
hi def link polComment Comment
hi def link polString String
hi def link polCharacter Character
hi def link polStringEscape SpecialChar
hi def link polIdentifier Identifier

let b:current_syntax = "polarity"
