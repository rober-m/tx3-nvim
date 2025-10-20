" Tx3 syntax file
" Language: Tx3
" Maintainer: Robertino Martinez <me@roberm.com>

if exists('b:current_syntax')
  finish
endif

" Keywords
syn keyword tx3Keyword asset party policy type tx input output mint burn reference collateral
syn keyword tx3Keyword signers validity since_slot until_slot metadata cardano bitcoin fees
syn keyword tx3Keyword from to amount datum redeemer ref hash datum_is min_amount
syn keyword tx3Keyword stake_delegation_certificate vote_delegation_certificate drep stake
syn keyword tx3Keyword locals env native_witness script treasury_donation coin plutus_witness version

" Constants
syn keyword tx3Constant true false none

" Types
syn keyword tx3Type Int Bool Bytes Address UtxoRef

" Identifiers
syn match tx3Identifier "[a-zA-Z_][a-zA-Z0-9_]*"

" Macros (identifiers ending with !)
syn match tx3Macro "[a-zA-Z_][a-zA-Z0-9_]*!"

" String literals
syn region tx3String start='"' end='"' contains=tx3StringEscape
syn match tx3StringEscape "\\." contained

" Hex strings
syn match tx3HexString "0x[0-9a-fA-F]\+"

" Numbers
syn match tx3Number "-\?\<\d\+\>"

" Comments
syn match tx3Comment "//.*$"
syn region tx3BlockComment start="/\*" end="\*/"

" Operators
syn match tx3Operator "\V+"
syn match tx3Operator "\V-"
syn match tx3Operator "\V*"
syn match tx3Operator "\V/"
syn match tx3Operator "\V%"
syn match tx3Operator "\V="
syn match tx3Operator "\V=="
syn match tx3Operator "\V!="
syn match tx3Operator "\V<"
syn match tx3Operator "\V>"
syn match tx3Operator "\V<="
syn match tx3Operator "\V>="
syn match tx3Operator "\V::"
syn match tx3Operator "\V."

" Punctuation
syn match tx3Punctuation "\V,"
syn match tx3Punctuation "\V;"
syn match tx3Punctuation "\V{"
syn match tx3Punctuation "\V}"
syn match tx3Punctuation "\V("
syn match tx3Punctuation "\V)"

" Highlights
hi def link tx3Keyword Keyword
hi def link tx3Constant Constant
hi def link tx3Type Type
hi def link tx3Identifier Identifier
hi def link tx3Macro Macro
hi def link tx3String String
hi def link tx3StringEscape SpecialChar
hi def link tx3HexString String
hi def link tx3Number Number
hi def link tx3Comment Comment
hi def link tx3BlockComment Comment
hi def link tx3Operator Operator
hi def link tx3Punctuation Delimiter

let b:current_syntax = 'tx3'
