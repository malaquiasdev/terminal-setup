" Gruvbox Dark theme for Vim
" Background: #282828

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "gruvbox"
set background=dark

" Gruvbox Palette Definitions
hi Normal          guifg=#ebdbb2 guibg=#282828 ctermfg=223 ctermbg=235
hi Terminal        guifg=#ebdbb2 guibg=#282828 ctermfg=223 ctermbg=235
hi EndOfBuffer     guifg=#282828 guibg=#282828 ctermfg=235 ctermbg=235
hi LineNr          guifg=#7c6f64 guibg=NONE    ctermfg=243 ctermbg=NONE
hi CursorLine      guibg=#3c3836 ctermbg=237   gui=NONE
hi CursorLineNr    guifg=#fe8019 guibg=NONE    ctermfg=208 ctermbg=NONE gui=bold

hi Comment         guifg=#928374 ctermfg=245   gui=italic
hi Constant        guifg=#d3869b ctermfg=175
hi String          guifg=#b8bb26 ctermfg=142
hi Character       guifg=#b8bb26 ctermfg=142
hi Number          guifg=#d3869b ctermfg=175
hi Boolean         guifg=#d3869b ctermfg=175
hi Float           guifg=#d3869b ctermfg=175

hi Identifier      guifg=#83a598 ctermfg=109
hi Function        guifg=#b8bb26 ctermfg=142   gui=bold

hi Statement       guifg=#fb4934 ctermfg=167   gui=bold
hi Conditional     guifg=#fb4934 ctermfg=167
hi Repeat          guifg=#fb4934 ctermfg=167
hi Label           guifg=#fb4934 ctermfg=167
hi Operator        guifg=#83a598 ctermfg=109
hi Keyword         guifg=#fb4934 ctermfg=167   gui=bold
hi Exception       guifg=#fb4934 ctermfg=167

hi PreProc         guifg=#8ec07c ctermfg=108
hi Include         guifg=#8ec07c ctermfg=108
hi Define          guifg=#8ec07c ctermfg=108
hi Macro           guifg=#8ec07c ctermfg=108
hi PreCondit       guifg=#8ec07c ctermfg=108

hi Type            guifg=#fabd2f ctermfg=214
hi StorageClass    guifg=#fe8019 ctermfg=208
hi Structure       guifg=#8ec07c ctermfg=108
hi Typedef         guifg=#fabd2f ctermfg=214

hi Special         guifg=#fe8019 ctermfg=208
hi SpecialChar     guifg=#fb4934 ctermfg=167
hi Tag             guifg=#83a598 ctermfg=109
hi Delimiter       guifg=#ebdbb2 ctermfg=223
hi SpecialComment  guifg=#928374 ctermfg=245
hi Debug           guifg=#fb4934 ctermfg=167

hi Underlined      gui=underline guifg=#83a598
hi Ignore          guifg=#7c6f64
hi Error           guifg=#fb4934 guibg=#282828 gui=bold
hi Todo            guifg=#282828 guibg=#fabd2f gui=bold

hi Search          guifg=#282828 guibg=#fabd2f ctermfg=235 ctermbg=214
hi IncSearch       guifg=#282828 guibg=#fe8019 ctermfg=235 ctermbg=208
hi Visual          guibg=#504945 ctermbg=239

hi Pmenu           guifg=#ebdbb2 guibg=#3c3836 ctermfg=223 ctermbg=237
hi PmenuSel        guifg=#282828 guibg=#fe8019 ctermfg=235 ctermbg=208 gui=bold
hi PmenuSbar       guibg=#3c3836
hi PmenuThumb      guibg=#7c6f64

hi VertSplit       guifg=#504945 guibg=NONE
hi StatusLine      guifg=#ebdbb2 guibg=#3c3836 gui=bold
hi StatusLineNC    guifg=#7c6f64 guibg=#3c3836
