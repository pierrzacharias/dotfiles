hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "Blade_runner"
if &t_Co >= 256 || has("gui_running")
    hi Normal ctermbg=233 ctermfg=187 cterm=NONE guibg=#0F0908 guifg=#E0CCAE gui=NONE
    set background=dark
    hi NonText  ctermfg=cyan cterm=NONE guibg=bg guifg=#66292F gui=NONE
    hi Comment ctermfg=cyan cterm=NONE guifg=#6B4035 gui=NONE
    "hi Comment  ctermfg=239 cterm=NONE guibg=bg guifg=#6B4035 gui=NONE
    hi Constant  ctermfg=Magenta  cterm=NONE guibg=bg guifg=#F2DDBC gui=NONE
    hi Error  ctermfg=red cterm=NONE guibg=red guifg=red gui=NONE
    hi Identifier  ctermfg=magenta cterm=NONE guibg=bg guifg=#A67458 gui=NONE
    hi Ignore  ctermfg=magenta cterm=NONE guibg=bg guifg=#6B4035 gui=NONE
    hi PreProc  ctermfg=white cterm=NONE guibg=bg guifg=#BF472C gui=NONE
    hi Special  ctermfg=magenta cterm=NONE guibg=bg guifg=#a4896f gui=NONE
    hi Statement  ctermfg=Yellow  cterm=NONE guibg=bg guifg=#F2A766 gui=NONE
    hi String  ctermfg=cyan cterm=NONE guibg=bg guifg=#D47D49 gui=NONE
    hi Number  ctermfg=magenta cterm=NONE guibg=bg guifg=#8A4B53 gui=NONE
    hi Todo  ctermfg=223 cterm=bold guibg=bg guifg=#F2DDBC gui=bold
    hi Type  ctermfg=magenta cterm=NONE guibg=bg guifg=#BF472C gui=NONE
    hi Underlined  ctermfg=white cterm=NONE guibg=#6B4035 guifg=#E0CCAE gui=NONE
    hi StatusLine ctermbg=234 ctermfg=red cterm=NONE guibg=#291916 guifg=#A67458 gui=NONE
    hi StatusLineNC ctermbg=234 ctermfg=239 cterm=NONE guibg=#291916 guifg=#6B4035 gui=NONE
    hi! link StatusLineTerm StatusLine
    hi! link StatusLineTermNC StatusLineNC
    hi VertSplit  ctermfg=233 cterm=NONE guibg=bg guifg=#1F1311 gui=NONE
    hi TabLine  ctermfg=cyan cterm=NONE guibg=bg guifg=#6B4035 gui=NONE
    hi TabLineFill ctermbg=233 ctermfg=223 cterm=NONE guibg=#1F1311 guifg=#F2DDBC gui=NONE
    hi TabLineSel  ctermfg=215 cterm=NONE guibg=bg guifg=#F2A766 gui=NONE
    hi Title  ctermfg=Magenta  cterm=bold guibg=bg guifg=#F2DDBC gui=bold
    hi CursorLine ctermbg=NONE ctermfg=NONE cterm=NONE guibg=#1F1311 guifg=NONE gui=NONE
    hi LineNr  cterm=NONE guibg=bg guifg=#cdd1bb gui=NONE
    hi CursorLineNr  ctermfg=137 cterm=NONE guibg=bg guifg=#A67458 gui=NONE
    hi qfLineNr  ctermfg=239 cterm=NONE guibg=bg guifg=#6B4035 gui=NONE
    hi helpLeadBlank  ctermfg=223 cterm=NONE guibg=bg guifg=#F2DDBC gui=NONE
    hi helpNormal  ctermfg=223 cterm=NONE guibg=bg guifg=#F2DDBC gui=NONE
    hi Visual ctermbg=239 ctermfg=187 cterm=NONE guibg=#6B4035 guifg=#E0CCAE gui=NONE
    hi VisualNOS ctermbg=137 ctermfg=223 cterm=NONE guibg=#A67458 guifg=#F2DDBC gui=NONE
    hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#471216 gui=NONE
    hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE
    "hi PmenuSbar  ctermfg=223 cterm=NONE guibg=bg guifg=#F2DDBC gui=NONE
    "hi PmenuThumb  ctermfg=223 cterm=NONE guibg=bg guifg=#F2DDBC gui=NONE
    hi FoldColumn   guibg=#520205 "gui=NONE
    hi Folded  guibg=#520205 "gui=NONE
    hi WildMenu  ctermfg=173 cterm=NONE guibg=bg guifg=#D47D49 gui=NONE
    hi SpecialKey  ctermfg=magenta  cterm=NONE guibg=bg guifg=#a4896f gui=NONE
    hi DiffAdd ctermbg=234 ctermfg=137 cterm=NONE guibg=#291916 guifg=#A4895C gui=NONE
    hi DiffChange ctermbg=234 ctermfg=NONE cterm=NONE guibg=#291916 guifg=#66292F gui=NONE
    hi DiffDelete ctermbg=234 ctermfg=130 cterm=NONE guibg=#291916 guifg=#BF472C gui=NONE
    hi DiffText ctermbg=234 ctermfg=137 cterm=NONE guibg=#291916 guifg=#A4895C gui=NONE
    hi IncSearch cterm=NONE guibg=#000b1e guifg=NONE gui=NONE  gui=NONE 
    hi Search cterm=NONE guibg=peru guifg=wheat gui=NONE 
    hi Directory  ctermfg=223 cterm=NONE guibg=bg guifg=#F2DDBC gui=NONE
    hi MatchParen ctermbg=137 ctermfg=215 cterm=bold guibg=#A67458 guifg=#F2A766 gui=bold
    hi SpellBad ctermbg=darkred ctermfg=NONE cterm=NONE guibg=#66292F guifg=NONE gui=NONE guisp=#66292F
    hi SpellCap ctermbg=234 ctermfg=NONE cterm=NONE guibg=#291916 guifg=NONE gui=NONE guisp=#A67458
    hi SpellLocal ctermbg=137 ctermfg=NONE cterm=NONE guibg=#A4895C guifg=NONE gui=NONE guisp=#A4895C
    hi SpellRare ctermbg=234 ctermfg=NONE cterm=NONE guibg=#291916 guifg=NONE gui=NONE guisp=#A67458
    hi ColorColumn ctermbg=234 ctermfg=NONE cterm=NONE guibg=#1F1311 guifg=NONE gui=NONE
    hi signColumn  ctermfg=137 cterm=NONE guibg=bg guifg=#A67458 gui=NONE
    hi ErrorMsg ctermbg=darkred ctermfg = darkblue cterm=NONE guibg=#66292F guifg=#F2DDBC gui=NONE
    hi ModeMsg  ctermfg=215 cterm=bold guibg=bg guifg=#F2A766 gui=bold
    hi MoreMsg  ctermfg=137 cterm=NONE guibg=bg guifg=#A67458 gui=NONE
    hi Question  ctermfg=215 cterm=NONE guibg=bg guifg=#F2A766 gui=NONE
    hi WarningMsg ctermbg=233 ctermfg=215 cterm=bold guibg=#1F1311 guifg=#F2A766 gui=bold
    hi Cursor ctermbg=137 ctermfg=233 cterm=NONE guibg=#A67458 guifg=#0F0908 gui=NONE
    hi CursorColumn ctermbg=235 ctermfg=NONE cterm=NONE guibg=#1F1311 guifg=NONE gui=NONE
    hi Function  ctermfg=red  cterm=NONE guibg=bg guifg=#BF472C gui=NONE
    hi Operator  ctermfg=darkgreen  cterm=NONE guibg=bg guifg=#A67458 gui=NONE
    hi Delimiter  ctermfg=137 cterm=NONE guibg=bg guifg=#A4895C gui=NONE
    hi Boolean  ctermfg=95 cterm=NONE guibg=bg guifg=#8A4B53 gui=NONE
    hi VimIsCommand  ctermfg=137 cterm=NONE guibg=bg guifg=#A67458 gui=NONE
    hi VimFunction  ctermfg=223 cterm=NONE guibg=bg guifg=#F2DDBC gui=NONE
    hi! link VimFuncKey VimCommand
    hi! link VimSubstPat VimString
    hi VimSubstRep4 ctermbg=233 ctermfg=137 cterm=NONE guibg=#1F1311 guifg=#A67458 gui=NONE
    hi VimMapLhs  ctermfg=223 cterm=NONE guibg=bg guifg=#F2DDBC gui=NONE
    hi javaScriptObjectKey  ctermfg=137 cterm=NONE guibg=bg guifg=#A67458 gui=NONE
    hi javaScriptFunctionKey ctermbg=234 ctermfg=137 cterm=NONE guibg=#291916 guifg=#A67458 gui=NONE
    hi htmlItalic  ctermfg=137 cterm=NONE guibg=bg guifg=#A67458 gui=NONE
    hi markdownLinkTextDelimiter  ctermfg=137 cterm=NONE guibg=bg guifg=#A67458 gui=NONE
    hi markdownLinkDelimiter  ctermfg=239 cterm=NONE guibg=bg guifg=#6B4035 gui=NONE
    hi markdownUrl  ctermfg=239 cterm=NONE guibg=bg guifg=#6B4035 gui=NONE
    hi markdownCodeBlock  ctermfg=173 cterm=NONE guibg=bg guifg=#D47D49 gui=NONE
    hi markdownCode  ctermfg=173 cterm=NONE guibg=bg guifg=#D47D49 gui=NONE
    hi helpExample  ctermfg=137 cterm=NONE guibg=bg guifg=#A67458 gui=NONE
    hi manSectionHeading  ctermfg=215 cterm=NONE guibg=bg guifg=#F2A766 gui=NONE
    hi manOptionDesc  ctermfg=137 cterm=NONE guibg=bg guifg=#A67458 gui=NONE
    hi manLongOptionDesc  ctermfg=137 cterm=NONE guibg=bg guifg=#A67458 gui=NONE
    hi CtrlPLinePre  ctermfg=137 cterm=NONE guibg=bg guifg=#A67458 gui=NONE
    hi CtrlPPrtBase  ctermfg=137 cterm=NONE guibg=bg guifg=#A67458 gui=NONE
    hi CtrlPPtrCursor  ctermfg=137 cterm=NONE guibg=bg guifg=#A67458 gui=NONE
    hi CtrlPMode1  ctermfg=215 cterm=NONE guibg=bg guifg=#F2A766 gui=NONE
    hi CtrlPMode2  ctermfg=137 cterm=NONE guibg=bg guifg=#A4895C gui=NONE
elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16
    hi Normal ctermbg=black ctermfg=white cterm=NONE
    set background=dark
    hi NonText  ctermfg=magenta cterm=NONE
    hi Comment ctermfg=cyan  cterm=NONE
    hi Constant  ctermfg=white cterm=NONE
    hi Error  ctermfg=lightblue cterm=NONE
    hi Identifier  ctermfg=red cterm=NONE
    hi Ignore  ctermfg=darkgrey cterm=NONE
    hi PreProc  ctermfg=darkred cterm=NONE
    hi Special  ctermfg=grey cterm=NONE
    hi Statement  ctermfg=yellow cterm=NONE
    hi String  ctermfg=yellow cterm=NONE
    hi Number  ctermfg=darkblue cterm=NONE
    hi Todo  ctermfg=white cterm=bold
    hi Type  ctermfg=magenta cterm=NONE
    hi Underlined ctermfg=white cterm=NONE
    hi StatusLine ctermbg=black ctermfg=darkgrey cterm=NONE
    hi StatusLineNC ctermbg=black ctermfg=darkgrey cterm=NONE
    hi link StatusLineTerm StatusLine
    hi link StatusLineTermNC StatusLineNC
    hi VertSplit  ctermfg=black cterm=NONE
    hi TabLine  ctermfg=darkgrey cterm=NONE
    hi TabLineFill ctermbg=yellow ctermfg=white cterm=NONE
    hi TabLineSel  ctermfg=yellow cterm=NONE
    hi Title  ctermfg=white cterm=bold
    hi CursorLine ctermbg=black ctermfg=NONE cterm=NONE
    hi LineNr  ctermfg=darkgrey cterm=NONE
    hi CursorLineNr  ctermfg=darkgrey cterm=NONE
    hi qfLineNr  ctermfg=darkgrey cterm=NONE
    hi helpLeadBlank  ctermfg=white cterm=NONE
    hi helpNormal  ctermfg=white cterm=NONE
    hi Visual ctermbg=darkgrey ctermfg=white cterm=NONE
    hi VisualNOS ctermbg=darkgrey ctermfg=white cterm=NONE
    hi Phhenu ctermbg=black ctermfg=darkgrey cterm=NONE
    hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#471216 gui=NONE
    hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE
    "hi PmenuSbar  ctermfg=white cterm=NONE
    "hi PmenuThumb  ctermfg=white cterm=NONE
    hi FoldColumn  guibg=#520205 
    hi Folded  guibg=#520205 
    hi WildMenu  ctermfg=yellow cterm=NONE
    hi SpecialKey  ctermfg=grey cterm=NONE
    hi DiffAdd ctermbg=black ctermfg=lightblue cterm=NONE
    hi DiffChange ctermbg=black ctermfg=magenta cterm=NONE
    hi DiffDelete ctermbg=black ctermfg=darkred cterm=NONE
    hi DiffText ctermbg=black ctermfg=lightred cterm=NONE
    hi IncSearch cterm=NONE guibg=#000b1e guifg=NONE gui=NONE 
    hi Search cterm=NONE guibg=peru guifg=wheat gui=NONE 
    hi Directory  ctermfg=white cterm=NONE
    hi MatchParen ctermbg=darkgrey ctermfg=yellow cterm=bold
    hi SpellBad ctermbg=magenta ctermfg=NONE cterm=NONE
    hi SpellCap ctermbg=black ctermfg=NONE cterm=NONE
    hi SpellLocal ctermbg=darkgreen ctermfg=NONE cterm=NONE
    hi SpellRare ctermbg=black ctermfg=NONE cterm=NONE
    hi ColorColumn ctermbg=black ctermfg=NONE cterm=NONE
    hi signColumn  ctermfg=darkgrey cterm=NONE
    hi ErrorMsg ctermbg=darkred cterm=NONE
    hi ModeMsg  ctermfg=yellow cterm=bold
    hi MoreMsg  ctermfg=darkgrey cterm=NONE
    hi Question  ctermfg=yellow cterm=NONE
    hi WarningMsg ctermbg=black ctermfg=yellow cterm=bold
    hi Cursor ctermbg=darkgrey ctermfg=black cterm=NONE
    hi CursorColumn ctermbg=black ctermfg=NONE cterm=NONE
    hi Function  ctermfg=darkred cterm=NONE
    hi Operator  ctermfg=darkgrey cterm=NONE
    hi Delimiter  ctermfg=darkgreen cterm=NONE
    hi Boolean  ctermfg=darkmagenta cterm=NONE
    hi VimIsCommand  ctermfg=darkgrey cterm=NONE
    hi VimFunction  ctermfg=white cterm=NONE
    hi link VimFuncKey VimCommand
    hi link VimSubstPat VimString
    hi VimSubstRep4 ctermbg=black ctermfg=darkgrey cterm=NONE
    hi VimMapLhs  ctermfg=white cterm=NONE
    hi javaScriptObjectKey  ctermfg=darkgrey cterm=NONE
    hi javaScriptFunctionKey ctermbg=black ctermfg=darkgrey cterm=NONE
    hi htmlItalic  ctermfg=darkgrey cterm=NONE
    hi markdownLinkTextDelimiter  ctermfg=darkgrey cterm=NONE
    hi markdownLinkDelimiter  ctermfg=darkgrey cterm=NONE
    hi markdownUrl  ctermfg=darkgrey cterm=NONE
    hi markdownCodeBlock  ctermfg=yellow cterm=NONE
    hi markdownCode  ctermfg=yellow cterm=NONE
    hi helpExample  ctermfg=darkgrey cterm=NONE
    hi manSectionHeading  ctermfg=yellow cterm=NONE
    hi manOptionDesc  ctermfg=darkgrey cterm=NONE
    hi manLongOptionDesc  ctermfg=darkgrey cterm=NONE
    hi CtrlPLinePre  ctermfg=darkgrey cterm=NONE
    hi CtrlPPrtBase  ctermfg=darkgrey cterm=NONE
    hi CtrlPPtrCursor  ctermfg=darkgrey cterm=NONE
    hi CtrlPMode1  ctermfg=yellow cterm=NONE
    hi CtrlPMode2  ctermfg=darkgreen cterm=NONE
endif

" Generated with RNB (https://gist.github.com/romainl/5cd2f4ec222805f49eca)
