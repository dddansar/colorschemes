"==============================================================================
" File: ddd_mocca.vim
"------------------------------------------------------------------------------
" Description: Creates a new colorscheme called ddd_mocca. This file
"              edits the colors of the built-in vim highlighting groups. Gets
"              loaded by vim if the colorscheme is set to ddd_mocca.
" NOTE: See also more_colors.vim.
"------------------------------------------------------------------------------
" Authors: Danny Sarraf
"------------------------------------------------------------------------------
" URL: https://github.com/dddansar/colorschemes
"------------------------------------------------------------------------------
" Copyright: MIT License
"
" Copyright (c) 2026 Danny Sarraf
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
" SOFTWARE.
"==============================================================================

" Exit if the file was already loaded
hi clear
let g:colors_name = 'ddd_mocca'

" NOTE: If you change the colors here, you change them in all files for all
"       relevant groups.

"------------------------------------------------------------------------------
" List of Vim default highlight groups and what they match.
"------------------------------------------------------------------------------
"
" 1. Default Display
"
" Normal: Default text and background
" EndOfBuffer: Region after the last line in the file/buffer (~)
" LineNr: Line numbers on the side (:set number)
" LineNrAbove: Line numbers above the cursor line (:set relativenumber)
" LineNrBelow: Line numbers below the cursor line (:set relativenumber)
"
" 2. Syntax Groups
"
" Statement: General programming statements (return, break, etc.)
" Keyword: Other language keywords
" Type: Type names (int, char, etc.)
" Identifier: Variable and function names. myVariable, upvars, &t_EI
" Label: Case/switch labels, title labels, "option" labels
" Character: Single character literals ('a', 'Z')
" String: String literals: "Hello world", 'some text'
" Conditional: Conditional statements (if, else, switch)
" Repeat: Loop constructs (for, while, do)
"
" Constant: General constants MY_CONST
" Number: Integer numeric literals
" Float: Floating point literals (1.0, 3.14)
" Boolean: Boolean literals (true, false)
"
" SpecialChar: Special characters within strings (\n, \t, %d) \%( \)
" Delimiter: Delimiters like brackets, braces, parentheses, commas, colons
" SpecialKey: Unprintable characters shown as special symbols (e.g. )
" Special: Special symbols and characters that don't fit elsewhere.
"
" Exception: Exception keywords (try, catch, throw)
" NonText: Non text characters like @ in wrap and EOL $ (:set list)
" Comment: Comments
" SpecialComment: Special comments (e.g. java /** @brief */ comments)
" Debug: Things like assert(), and print statements used for debug.
"
" StorageClass: Storage class keywords (static, register, volatile, extern)
" Function: A sub-group of Identifier specifically for function/method names.
" Operator: Operators (+, -, *, /, etc.)
"
" Macro: A sub-group of PreProc for macro definitions and macro names. Example:
"        #define MY_MACRO 123   #undef ABC
" Define: #define directives
" PreCondit: Preprocessor conditionals (#ifdef, #endif, etc.)
" PreProc: General preprocessor directives Examples:
"          #include <stdio.h>   #ifdef DEBUG   #pragma once
" Include: #include directives
"
" Typedef: typedef declarations
" Structure: struct/union/enum declarations
" Underlined: Text that should be underlined (e.g. URLs)
" Tag: example: XML tags
"
" Todo: TODO/FIXME/XXX comment keywords
" Error: Syntax and other errors
"
" 3. Misc
"
" Ignore: Text that is hidden/concealed (open :help -> :set conceallevel=0)
" Conceal: Concealed text. **word** in markdown or help (:set conceallevel=1)
" Directory: Directory names in listings (open folder -> vim .)
" MatchParen: Matching bracket/paren/brace highlight
" Visual: Visual mode selection
" VisualNOS: Visual mode selection when vim is not the focused application
"
" 4. Search
"
" Search: Previous search pattern highlight
" CurSearch: Current search match (the one the cursor is on)
" IncSearch: Incremental search match while typing (:set incsearch)
" QuickFixLine: Current line in the quickfix/location list window
"               :copen              " open quickfix window
"               :vimgrep /NOTE/ %   " populate quickfix
"
" 5. Messages & Prompts
"
" Title: Titles in output (:set all  or  :autocmd  or  :messages)
" MoreMsg: More-prompt (:set all)
" Question: Prompt for user input (:!ls  or  :hi Special  or  :messages)
" ErrorMsg: Error messages in the command area (:do this)
" WarningMsg: Warning messages (when search wraps)
" ModeMsg: The text Vim shows at the bottom left when you enter a mode.
"          Example  -- INSERT --   -- VISUAL --   -- REPLACE --
" MessageWindow: A floating window used to display messages, documentation
"                (LSP hover), or other informational popups. (:echowindow)
"                NOTE: The message window is available when Vim was compiled
"                      with the +timer and the +popupwin features.
"                      :echo has('timer') && has('popupwin')
" PopupNotification: Floating popup notifications
"                    (:call popup_notification('Hello World!', #{time: 3000}))
"
" 6. Spelling
"
" SpellBad: Spell check: word not recognized (:set spell)
" SpellCap: Spell check: word should be capitalized (:set spellcapcheck&)
" SpellLocal: Spell check: word recognized in another region
"             flavour  " British spelling (set spelllang=en_us)
" SpellRare: Spell check: word rarely used (:spellrare wordlying)
"
" 7. Diff
"
" DiffAdd: Added lines in diff mode (gvimdiff file1 file2)
" DiffChange: Changed lines in diff mode
" DiffDelete: Deleted lines in diff mode
" DiffText: Changed text within a changed line in diff mode
"
" 8. Fold
"
" Folded: Closed fold lines (fold zm | unfold zr)
" FoldColumn: Fold indicator column (:set foldcolumn=1)
" SignColumn: Column used for signs/diagnostics (:set signcolumn=yes)
"
" 9. Cursor & Position
"
" Cursor: The cursor where text is typed
" CursorIM: The cursor highlight when an Input Method Editor (IME) is active.
"           Relevant for typing Chinese, Japanese, Korean (CJK) characters
"           Not easily triggered without IME software active.
" lCursor: Cursor when using an input method (:set imsearch=1 then /)
" ColorColumn: Column highlighted by colorcolumn option (:set cc=80)
" CursorColumn: Column of the cursor (:set cursorcolumn)
" CursorLine: Line of the cursor (:set cursorline)
" CursorLineNr: Line number of the cursor line (:set cursorline)
" CursorLineFold: Fold indicator on the cursor line (:set foldcolumn=1)
" CursorLineSign: Sign column on the cursor line (:set signcolumn=yes)
"
" 10. Popup menu
"
" Pmenu: Popup menu (autocomplete, etc.) (<c-n> in insert mode)
" PmenuSel: Selected item in the popup menu (try <c-n> on in)
" PmenuSbar: Scrollbar of the popup menu
" PmenuThumb: Scrollbar thumb in the popup menu
" PmenuMatch: Matching characters in popup menu items
" PmenuMatchSel: Matching characters in the selected popup menu item
"
" 11. Status Lines & Splits
"
" StatusLine: Active status line of the current window (where info such as the
"             filename, line/column number and percentage are displayed)
" StatusLineNC: Status lines of non-current windows
" VertSplit: Column dividing vertically split windows
" Terminal: Text inside a terminal buffer (:terminal).
" StatusLineTerm: Status line for active terminal buffer (:terminal)
" StatusLineTermNC: Status line for inactive terminal buffer (:terminal)
" WildMenu: Wildmenu/command-line tab completion (type :c and press Tab).
"
" 12. Tabs
"
" TabLine: Tabline at the top of the screen when using tabs. (:tabnew) (in Vim!)
" TabLineSel: The currently active/selected tab in the tabline
" TabLineFill: Fill area of the tabline (after the last tab label)
" TabPanel: Tab panel sidebar (:set showtabpanel=1)
" TabPanelFill: Fill area of the tab panel (:set showtabpanel=1)
"
" 13. Top Bar
"
" TitleBar: Title bar of the GUI window (active)
"           TitleBar is supported only in the MS-Windows GUI in Vim 9.1+
" TitleBarNC: Title bar of the GUI window (inactive)
"             TitleBarNC is supported only in the MS-Windows GUI in Vim 9.1+
" ToolbarButton: The clickable buttons in the toolbar (:set guioptions+=T)
" ToolbarLine: The background of the toolbar row (:set guioptions+=T)
"------------------------------------------------------------------------------

" May be needed just in case something goes wrong
set background=light

" NOTE: You can find a list of vim's colorschemes in $VIMRUNTIME/colors/
" Vim default groups
"------------------------------------------------------------------------------
" NOTE: See ":help highlight-groups" for all the default highlighting groups.
" NOTE: You can see the current settings with the ":highlight" command.

hi Normal            cterm=NONE gui=NONE ctermfg=16   guifg=black       ctermbg=229  guibg=moccasin   guisp=NONE
hi Ignore            cterm=NONE gui=NONE ctermfg=240  guifg=grey40      ctermbg=229  guibg=moccasin   guisp=NONE
hi TitleBar          cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=229  guibg=moccasin   guisp=NONE
hi EndOfBuffer       cterm=NONE gui=NONE ctermfg=233  guifg=grey5       ctermbg=228  guibg=khaki      guisp=NONE
hi LineNr            cterm=bold gui=bold ctermfg=238  guifg=grey30      ctermbg=NONE guibg=NONE       guisp=NONE

hi Statement         cterm=bold gui=bold ctermfg=129  guifg=purple1     ctermbg=NONE guibg=NONE       guisp=NONE
hi Keyword           cterm=bold gui=bold ctermfg=129  guifg=purple1     ctermbg=NONE guibg=NONE       guisp=NONE
hi Type              cterm=bold gui=bold ctermfg=40   guifg=green3      ctermbg=NONE guibg=NONE       guisp=NONE
hi Identifier        cterm=bold gui=bold ctermfg=40   guifg=green3      ctermbg=NONE guibg=NONE       guisp=NONE
hi Character         cterm=bold gui=bold ctermfg=34   guifg=green4      ctermbg=NONE guibg=NONE       guisp=NONE
hi String            cterm=bold gui=bold ctermfg=34   guifg=green4      ctermbg=NONE guibg=NONE       guisp=NONE
hi Label             cterm=bold gui=bold ctermfg=40   guifg=green3      ctermbg=NONE guibg=NONE       guisp=NONE
hi Conditional       cterm=bold gui=bold ctermfg=22   guifg=darkgreen   ctermbg=NONE guibg=NONE       guisp=NONE
hi Repeat            cterm=bold gui=bold ctermfg=22   guifg=darkgreen   ctermbg=NONE guibg=NONE       guisp=NONE

hi Constant          cterm=bold gui=bold ctermfg=33   guifg=dodgerblue  ctermbg=NONE guibg=NONE       guisp=NONE
hi Float             cterm=bold gui=bold ctermfg=45   guifg=cyan3       ctermbg=NONE guibg=NONE       guisp=NONE
hi Number            cterm=bold gui=bold ctermfg=45   guifg=cyan3       ctermbg=NONE guibg=NONE       guisp=NONE
hi Boolean           cterm=bold gui=bold ctermfg=45   guifg=cyan3       ctermbg=NONE guibg=NONE       guisp=NONE
hi Debug             cterm=bold gui=bold ctermfg=30   guifg=teal        ctermbg=NONE guibg=NONE       guisp=NONE

hi Special           cterm=bold gui=bold ctermfg=33   guifg=dodgerblue  ctermbg=NONE guibg=NONE       guisp=NONE
hi SpecialChar       cterm=NONE gui=NONE ctermfg=129  guifg=purple1     ctermbg=NONE guibg=NONE       guisp=NONE
hi Delimiter         cterm=bold gui=bold ctermfg=208  guifg=darkorange  ctermbg=NONE guibg=NONE       guisp=NONE

hi Exception         cterm=NONE gui=NONE ctermfg=196  guifg=red2        ctermbg=NONE guibg=NONE       guisp=NONE
hi NonText           cterm=bold gui=bold ctermfg=196  guifg=red2        ctermbg=NONE guibg=NONE       guisp=NONE
hi Question          cterm=bold gui=bold ctermfg=205  guifg=hotpink     ctermbg=NONE guibg=NONE       guisp=NONE
hi Comment           cterm=bold gui=bold ctermfg=17   guifg=navy        ctermbg=NONE guibg=NONE       guisp=NONE
hi SpecialComment    cterm=NONE gui=NONE ctermfg=129  guifg=purple1     ctermbg=NONE guibg=NONE       guisp=NONE

hi StorageClass      cterm=bold gui=bold ctermfg=178  guifg=orange      ctermbg=NONE guibg=NONE       guisp=NONE
hi Function          cterm=bold gui=bold ctermfg=208  guifg=darkorange  ctermbg=NONE guibg=NONE       guisp=NONE
hi Operator          cterm=bold gui=bold ctermfg=202  guifg=orangered   ctermbg=NONE guibg=NONE       guisp=NONE
hi Macro             cterm=bold gui=bold ctermfg=166  guifg=darkorange3 ctermbg=NONE guibg=NONE       guisp=NONE
hi Define            cterm=bold gui=bold ctermfg=166  guifg=darkorange3 ctermbg=NONE guibg=NONE       guisp=NONE
hi PreCondit         cterm=bold gui=bold ctermfg=166  guifg=darkorange3 ctermbg=NONE guibg=NONE       guisp=NONE
hi PreProc           cterm=bold gui=bold ctermfg=166  guifg=darkorange3 ctermbg=NONE guibg=NONE       guisp=NONE
hi Include           cterm=bold gui=bold ctermfg=166  guifg=darkorange3 ctermbg=NONE guibg=NONE       guisp=NONE
hi Typedef           cterm=bold gui=bold ctermfg=130  guifg=sienna      ctermbg=NONE guibg=NONE       guisp=NONE
hi Structure         cterm=bold gui=bold ctermfg=130  guifg=sienna      ctermbg=NONE guibg=NONE       guisp=NONE
hi Underlined        cterm=bold gui=bold ctermfg=100  guifg=olive       ctermbg=NONE guibg=NONE       guisp=NONE
hi Tag               cterm=bold gui=bold ctermfg=101  guifg=khaki4      ctermbg=NONE guibg=NONE       guisp=NONE

hi Cursor            cterm=bold gui=bold ctermfg=231  guifg=white       ctermbg=16   guibg=black      guisp=NONE
hi CursorColumn      cterm=NONE gui=NONE ctermfg=NONE guifg=NONE        ctermbg=236  guibg=grey20     guisp=NONE
hi CursorLine        cterm=NONE gui=NONE ctermfg=NONE guifg=NONE        ctermbg=236  guibg=grey20     guisp=NONE
hi CursorLineNr      cterm=bold gui=bold ctermfg=130  guifg=sienna      ctermbg=NONE guibg=NONE       guisp=NONE
hi ColorColumn       cterm=NONE gui=NONE ctermfg=238  guifg=grey30      ctermbg=234  guibg=grey10     guisp=NONE

hi StatusLine        cterm=bold gui=bold ctermfg=229  guifg=moccasin    ctermbg=16   guibg=black      guisp=NONE
hi StatusLineNC      cterm=bold gui=bold ctermfg=101  guifg=khaki4      ctermbg=16   guibg=black      guisp=NONE
hi VertSplit         cterm=bold gui=bold ctermfg=101  guifg=khaki4      ctermbg=16   guibg=black      guisp=NONE

hi Search            cterm=NONE gui=NONE ctermfg=16   guifg=black       ctermbg=101  guibg=khaki4     guisp=NONE
hi CurSearch         cterm=NONE gui=NONE ctermfg=16   guifg=black       ctermbg=100  guibg=olive      guisp=NONE
hi IncSearch         cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=100  guibg=olive      guisp=NONE

hi Pmenu             cterm=NONE gui=NONE ctermfg=17   guifg=navy        ctermbg=228  guibg=khaki      guisp=NONE
hi PmenuSel          cterm=NONE gui=NONE ctermfg=17   guifg=navy        ctermbg=101  guibg=khaki4     guisp=NONE
hi PmenuSbar         cterm=NONE gui=NONE ctermfg=16   guifg=black       ctermbg=100  guibg=olive      guisp=NONE
hi PmenuThumb        cterm=NONE gui=NONE ctermfg=16   guifg=black       ctermbg=101  guibg=khaki3     guisp=NONE
hi PmenuMatch    cterm=underline gui=underline ctermfg=17  guifg=navy   ctermbg=228  guibg=khaki      guisp=NONE
hi PmenuMatchSel cterm=underline gui=underline ctermfg=17  guifg=navy   ctermbg=101  guibg=khaki4     guisp=NONE

hi MatchParen        cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=30   guibg=teal       guisp=NONE
hi Todo              cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=214  guibg=orange     guisp=NONE
hi Error             cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=196  guibg=red2       guisp=NONE
hi ErrorMsg          cterm=bold gui=bold ctermfg=231  guifg=white       ctermbg=196  guibg=red2       guisp=NONE

hi DiffAdd           cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=48   guibg=lightgreen guisp=NONE
hi DiffChange        cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=81   guibg=skyblue    guisp=NONE
hi DiffDelete        cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=240  guibg=grey40     guisp=NONE
hi DiffText          cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=33   guibg=dodgerblue guisp=NONE

hi Conceal           cterm=NONE gui=NONE ctermfg=231  guifg=white       ctermbg=242  guibg=DarkGrey   guisp=NONE
hi Folded            cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=240  guibg=grey40     guisp=NONE
hi FoldColumn        cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=248  guibg=grey70     guisp=NONE
hi SignColumn        cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=248  guibg=grey70     guisp=NONE

hi Directory         cterm=bold gui=bold ctermfg=100  guifg=olive       ctermbg=NONE guibg=NONE       guisp=NONE
hi SpecialKey        cterm=bold gui=bold ctermfg=20   guifg=blue        ctermbg=NONE guibg=NONE       guisp=NONE
hi Title             cterm=bold gui=bold ctermfg=198  guifg=deeppink    ctermbg=NONE guibg=NONE       guisp=NONE
hi MoreMsg           cterm=bold gui=bold ctermfg=203  guifg=tomato1     ctermbg=NONE guibg=NONE       guisp=NONE

hi Visual            cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=101  guibg=khaki4     guisp=NONE
hi VisualNOS cterm=bold,underline gui=bold,underline ctermfg=250 guifg=grey80 ctermbg=16  guibg=black guisp=NONE

hi WarningMsg        cterm=underline gui=underline ctermfg=196 guifg=red2 ctermbg=NONE guibg=NONE guisp=NONE
hi SpellBad          cterm=underline gui=undercurl ctermfg=196 guifg=NONE ctermbg=NONE guibg=NONE guisp=red
hi SpellCap          cterm=underline gui=undercurl ctermfg=20  guifg=NONE ctermbg=NONE guibg=NONE guisp=blue
hi SpellLocal        cterm=underline gui=undercurl ctermfg=30  guifg=NONE ctermbg=NONE guibg=NONE guisp=darkcyan
hi SpellRare         cterm=underline gui=undercurl ctermfg=201 guifg=NONE ctermbg=NONE guibg=NONE guisp=magenta
"------------------------------------------------------------------------------
hi! link TitleBarNC        Normal

hi! link ToolbarButton     Normal
hi! link ToolbarLine       Normal

hi! link ModeMsg           Normal
hi! link Terminal          Normal
hi! link StatusLineTerm    StatusLine
hi! link StatusLineTermNC  StatusLineNC

hi! link MessageWindow     WarningMsg

hi! link TabLine           StatusLineNC
hi! link TabLineSel        StatusLine
hi! link TabLineFill       ColorColumn
hi! link TabPanel          StatusLineNC
hi! link TabPanelFill      EndOfBuffer

hi! link LineNrAbove       LineNr
hi! link LineNrBelow       LineNr

hi! link PopupNotification Exception

hi! link CursorLineFold    CursorLine
hi! link CursorLineSign    CursorLine

hi! link CursorIM          Cursor
hi! link lCursor           Cursor

hi! link WildMenu          Todo
hi! link QuickFixLine      CurSearch
"------------------------------------------------------------------------------

