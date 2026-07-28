" Tokyo Night theme for Vim
" Palette: Night variant
" Background: #1a1b26

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "tokyonight"
set background=dark

" Highlight groups
hi Normal          guifg=#c0caf5 guibg=#1a1b26 ctermfg=189 ctermbg=234
hi Terminal        guifg=#c0caf5 guibg=#1a1b26 ctermfg=189 ctermbg=234
hi EndOfBuffer     guifg=#1a1b26 guibg=#1a1b26 ctermfg=234 ctermbg=234
hi LineNr          guifg=#3b4261 guibg=NONE    ctermfg=238 ctermbg=NONE
hi CursorLine      guibg=#24283b ctermbg=236   gui=NONE
hi CursorLineNr    guifg=#7aa2f7 guibg=NONE    ctermfg=111 ctermbg=NONE gui=bold

hi Comment         guifg=#565f89 ctermfg=60    gui=italic
hi Constant        guifg=#ff9e64 ctermfg=215
hi String          guifg=#9ece6a ctermfg=149
hi Character       guifg=#9ece6a ctermfg=149
hi Number          guifg=#ff9e64 ctermfg=215
hi Boolean         guifg=#ff9e64 ctermfg=215
hi Float           guifg=#ff9e64 ctermfg=215

hi Identifier      guifg=#bb9af7 ctermfg=141
hi Function        guifg=#7aa2f7 ctermfg=111

hi Statement       guifg=#bb9af7 ctermfg=141   gui=bold
hi Conditional     guifg=#bb9af7 ctermfg=141
hi Repeat          guifg=#bb9af7 ctermfg=141
hi Label           guifg=#bb9af7 ctermfg=141
hi Operator        guifg=#89ddff ctermfg=117
hi Keyword         guifg=#7dcfff ctermfg=117   gui=italic
hi Exception       guifg=#f7768e ctermfg=203

hi PreProc         guifg=#7dcfff ctermfg=117
hi Include         guifg=#7dcfff ctermfg=117
hi Define          guifg=#bb9af7 ctermfg=141
hi Macro           guifg=#bb9af7 ctermfg=141
hi PreCondit       guifg=#7dcfff ctermfg=117

hi Type            guifg=#2ac3de ctermfg=38
hi StorageClass    guifg=#bb9af7 ctermfg=141
hi Structure       guifg=#bb9af7 ctermfg=141
hi Typedef         guifg=#bb9af7 ctermfg=141

hi Special         guifg=#2ac3de ctermfg=38
hi SpecialChar     guifg=#f7768e ctermfg=203
hi Tag             guifg=#7aa2f7 ctermfg=111
hi Delimiter       guifg=#89ddff ctermfg=117
hi SpecialComment  guifg=#565f89 ctermfg=60
hi Debug           guifg=#ff9e64 ctermfg=215

hi Underlined      gui=underline guifg=#7aa2f7
hi Ignore          guifg=#3b4261
hi Error           guifg=#f7768e guibg=#1a1b26 gui=bold
hi Todo            guifg=#1a1b26 guibg=#0db9d7 gui=bold

hi Search          guifg=#c0caf5 guibg=#3d59a1 ctermfg=189 ctermbg=60
hi IncSearch       guifg=#15161e guibg=#ff9e64 ctermfg=234 ctermbg=215
hi Visual          guibg=#2e3c64 ctermbg=237

hi Pmenu           guifg=#c0caf5 guibg=#1f2335 ctermfg=189 ctermbg=235
hi PmenuSel        guifg=#15161e guibg=#7aa2f7 ctermfg=234 ctermbg=111 gui=bold
hi PmenuSbar       guibg=#1f2335
hi PmenuThumb      guibg=#3b4261

hi VertSplit       guifg=#27a1b9 guibg=NONE
hi StatusLine      guifg=#a9b1d6 guibg=#1f2335 gui=bold
hi StatusLineNC    guifg=#3b4261 guibg=#1f2335
