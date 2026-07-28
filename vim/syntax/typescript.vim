" TypeScript syntax file for Vim
if exists("b:current_syntax")
  finish
endif

syn keyword tsKeyword       import export default from as type interface declare namespace
syn keyword tsKeyword       const let var function return async await yield class extends implements
syn keyword tsKeyword       new this super typeof instanceof in of delete void
syn keyword tsKeyword       if else switch case break continue default try catch finally throw

syn keyword tsType          string number boolean any void unknown never object symbol BigInt
syn keyword tsType          Array Record Partial Readonly Required Promise Omit Pick Exclude Extract
syn keyword tsBoolean       true false null undefined NaN Infinity

syn match   tsComment       "//.*$"
syn region  tsComment       start="/\*" end="\*/"

syn region  tsString        start='"' end='"' skip='\\"'
syn region  tsString        start="'" end="'" skip="\\'"
syn region  tsTemplate      start="`" end="`" skip="\\`"

syn match   tsNumber        "\<\d\+\>"
syn match   tsNumber        "\<0x[0-9a-fA-F]\+\>"
syn match   tsFloat         "\<\d\+\.\d\+\>"

syn match   tsFunction      "\w\+\ze\s*("
syn match   tsOperator      "===\|!==\|==\|!=\|<=\|>=\|=>\|&&\|||\|\.\.\."

hi def link tsKeyword       Keyword
hi def link tsType          Type
hi def link tsBoolean       Boolean
hi def link tsComment       Comment
hi def link tsString        String
hi def link tsTemplate      String
hi def link tsNumber        Number
hi def link tsFloat         Float
hi def link tsFunction      Function
hi def link tsOperator      Operator

let b:current_syntax = "typescript"
