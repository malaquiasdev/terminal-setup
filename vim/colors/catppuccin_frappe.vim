" Catppuccin Frappe theme for Vim
" Background: #303446

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "catppuccin_frappe"
set background=dark

" Catppuccin Frappe Palette Definitions
hi Normal          guifg=#c6d0f5 guibg=#303446 ctermfg=189 ctermbg=237
hi Terminal        guifg=#c6d0f5 guibg=#303446 ctermfg=189 ctermbg=237
hi EndOfBuffer     guifg=#303446 guibg=#303446 ctermfg=237 ctermbg=237
hi LineNr          guifg=#737994 guibg=NONE    ctermfg=8   ctermbg=NONE
hi CursorLine      guibg=#414559 ctermbg=239   gui=NONE
hi CursorLineNr    guifg=#ef9f76 guibg=NONE    ctermfg=216 ctermbg=NONE gui=bold

hi Comment         guifg=#949cbb ctermfg=109   gui=italic
hi Constant        guifg=#ef9f76 ctermfg=216
hi String          guifg=#a6d189 ctermfg=150
hi Character       guifg=#a6d189 ctermfg=150
hi Number          guifg=#ef9f76 ctermfg=216
hi Boolean         guifg=#ef9f76 ctermfg=216
hi Float           guifg=#ef9f76 ctermfg=216

hi Identifier      guifg=#8caaee ctermfg=111
hi Function        guifg=#8caaee ctermfg=111   gui=bold

hi Statement       guifg=#ca9ee6 ctermfg=182   gui=bold
hi Conditional     guifg=#ca9ee6 ctermfg=182
hi Repeat          guifg=#ca9ee6 ctermfg=182
hi Label           guifg=#ca9ee6 ctermfg=182
hi Operator        guifg=#99d1db ctermfg=116
hi Keyword         guifg=#ca9ee6 ctermfg=182   gui=bold
hi Exception       guifg=#e78284 ctermfg=174

hi PreProc         guifg=#f4b8e4 ctermfg=218
hi Include         guifg=#f4b8e4 ctermfg=218
hi Define          guifg=#f4b8e4 ctermfg=218
hi Macro           guifg=#f4b8e4 ctermfg=218
hi PreCondit       guifg=#f4b8e4 ctermfg=218

hi Type            guifg=#e5c890 ctermfg=186
hi StorageClass    guifg=#ef9f76 ctermfg=216
hi Structure       guifg=#e5c890 ctermfg=186
hi Typedef         guifg=#e5c890 ctermfg=186

hi Special         guifg=#ef9f76 ctermfg=216
hi SpecialChar     guifg=#e78284 ctermfg=174
hi Tag             guifg=#8caaee ctermfg=111
hi Delimiter       guifg=#c6d0f5 ctermfg=189
hi SpecialComment  guifg=#949cbb ctermfg=109
hi Debug           guifg=#e78284 ctermfg=174

hi Underlined      gui=underline guifg=#8caaee
hi Ignore          guifg=#737994
hi Error           guifg=#e78284 guibg=#303446 gui=bold
hi Todo            guifg=#303446 guibg=#e5c890 gui=bold

hi Search          guifg=#303446 guibg=#e5c890 ctermfg=237 ctermbg=186
hi IncSearch       guifg=#303446 guibg=#ef9f76 ctermfg=237 ctermbg=216
hi Visual          guibg=#51576d ctermbg=59

hi Pmenu           guifg=#c6d0f5 guibg=#414559 ctermfg=189 ctermbg=239
hi PmenuSel        guifg=#303446 guibg=#ef9f76 ctermfg=237 ctermbg=216 gui=bold
hi PmenuSbar       guibg=#414559
hi PmenuThumb      guibg=#737994

hi VertSplit       guifg=#51576d guibg=NONE
hi StatusLine      guifg=#c6d0f5 guibg=#414559 gui=bold
hi StatusLineNC    guifg=#737994 guibg=#414559
