highlight clear

if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name = "gothic-cyberpunk"

" ___ Define color variables ___
" Black and Gray Tones
let s:blackest = "#000000"
let s:blacker = "#060606"
let s:black = "#0F0F0F"
let s:light_gray = "#202020"
let s:med_gray = "#1F1F1F"
let s:dark_gray = "#151515"
let s:lighter_gray = "#545454"
let s:lightest_gray = "#8F8F8F"
let s:white = "#C4C4C4"
let s:whiter = "#d9d9d9"
let s:whitest = "#FFFFFF"

let s:vibrant_teal = "#00FFC8"
let s:neon_magenta = "#FF0055"
let s:neon_lavender = "#8533ff"
let s:dark_teal = "#07a180"
let s:dark_magenta = "#960032"
let s:light_lavender = "#ccbcff"
let s:pale_cyan = "#8aadf4"

" For terminal support
let s:cterm_vibrant_teal = "51"  " Approx teal in 256-color
let s:cterm_neon_magenta = "201" " Approx magenta in 256-color

"function! HighlightFor(group, fg, bg, style)
  "execute "hi ".a:group
        "\ ." guifg=".a:fg
        "\ ." guibg=".a:bg
        "\ ." gui=".a:style
        "\ ." ctermfg=".s:cterm_vibrant_teal
        "\ ." ctermbg=".s:cterm_neon_magenta
        "\ ." cterm=".a:style
"endfunction
function! HighlightFor(group, fg, bg, style)
  execute "hi " . a:group
        \ . " guifg=" . a:fg
        \ . " guibg=" . a:bg
        \ . " gui=" . a:style
        \ . " ctermfg=" . (a:fg == s:neon_magenta ? s:cterm_neon_magenta : (a:fg == s:vibrant_teal ? s:cterm_vibrant_teal : "NONE"))
        \ . " ctermbg=" . (a:bg == s:neon_magenta ? s:cterm_neon_magenta : (a:bg == s:vibrant_teal ? s:cterm_vibrant_teal : "NONE"))
        \ . " cterm=" . a:style
endfunction


" Diff
call HighlightFor("DiffAdd",    s:blackest,           s:dark_teal,   "NONE")
call HighlightFor("DiffDelete", s:blackest,           s:dark_magenta,   "NONE")
call HighlightFor("DiffText",   s:whitest,         s:dark_gray,    "NONE")
call HighlightFor("DiffChange", s:blackest,           s:whitest,    "NONE")

" Cursor
call HighlightFor("Cursor",       s:vibrant_teal,    s:blackest,           "NONE")
call HighlightFor("CursorLineNr", s:blackest,       s:vibrant_teal,   "NONE")
"call HighlightFor("CursorColumn", "NONE",            "NONE",           "NONE")
"call HighlightFor("CursorLine",   s:whitest,       s:neon_magenta,   "NONE")
"call HighlightFor("CursorLine",   s:blackest,       s:pale_cyan,   "NONE")
call HighlightFor("CursorLine",   s:whitest,       s:light_gray,   "NONE")

" Folds
call HighlightFor("Folded",      s:vibrant_teal,     s:blacker, "italic")
call HighlightFor("FoldColumn",  s:blackest,        s:whitest,   "NONE")

" Pmenu
call HighlightFor("Pmenu",       s:whitest,      s:dark_gray,   "NONE")
call HighlightFor("PmenuSel",    s:whitest,      s:neon_magenta,  "NONE")
call HighlightFor("PmenuSbar",   s:neon_magenta,     s:whitest,   "NONE")
call HighlightFor("PmenuThumb",  s:neon_magenta,     s:blackest,     "NONE")

" General
call HighlightFor("Normal",      s:white,      s:black,    "italic")
call HighlightFor("Visual",      s:whitest,             s:lightest_gray,  "NONE")
call HighlightFor("LineNr",      s:vibrant_teal,     s:blackest,     "NONE")
call HighlightFor("SignColumn",  s:vibrant_teal,     "NONE",          "NONE")
call HighlightFor("VertSplit",   s:blackest,        s:whitest,   "NONE")
call HighlightFor("IncSearch",    s:blackest,    s:whitest,      "NONE")          " Special chars in strings (e.g., \n)
call HighlightFor("Search",    s:whitest,    s:neon_magenta,      "bold,underdashed")          " Special chars in strings (e.g., \n)
call HighlightFor("Substitute",  s:blackest,        s:vibrant_teal,  "NONE")
call HighlightFor("MatchParen",  s:blackest,        s:vibrant_teal,  "NONE")
call HighlightFor("NonText",     s:white,       "NONE",          "NONE")
call HighlightFor("Whitespace",  s:white,       "NONE",          "NONE")
call HighlightFor("Directory",   s:vibrant_teal,     s:blacker, "NONE")

" Code - data types
call HighlightFor("Comment",     s:lightest_gray,     "NONE",          "italic")
call HighlightFor("String",      s:lightest_gray,      s:blacker,     "italic")
call HighlightFor("Number",      s:light_lavender,     s:blackest,     "bold,italic")
call HighlightFor("Float",      s:light_lavender,     s:blackest,     "bold,italic")
call HighlightFor("Boolean",     s:whitest,      s:blackest,     "NONE")
call HighlightFor("Character",   s:whitest,      s:blackest,     "NONE")

" Code - general
call HighlightFor("Statement",   s:pale_cyan,      s:med_gray, "bold,italic")
call HighlightFor("perlStatement",   s:pale_cyan,      s:med_gray, "bold,italic")
call HighlightFor("perlBraces",   s:pale_cyan,      s:med_gray, "bold,italic")
call HighlightFor("perlStatementFiledesc",   s:pale_cyan,      s:med_gray, "bold,italic")
call HighlightFor("Function",  s:whiter,      s:med_gray,  "bold,italic")
call HighlightFor("Identifier",      s:whitest,      s:med_gray,    "italic")
call HighlightFor("StorageClass",s:whiter,       "NONE",          "italic")
call HighlightFor("Structure",   s:whiter,       "NONE",          "italic")
call HighlightFor("Repeat",      s:white,       s:light_gray,   "italic,standout")
call HighlightFor("Conditional", s:pale_cyan, s:med_gray,   "italic,bold,underline")
call HighlightFor("Operator",    s:vibrant_teal,      s:blacker,     "bold,italic")
call HighlightFor("Type",        s:whitest,      s:light_gray,   "italic")
call HighlightFor("Typedef",     s:whitest,      s:light_gray,   "italic")
call HighlightFor("PreProc",     s:lightest_gray,      s:med_gray,  "italic")
call HighlightFor("Underlined",  s:whitest,      s:lightest_gray,  "italic")
"call HighlightFor("Keyword",  s:lightest_gray,        s:blackest,  "italic")
call HighlightFor("Keyword",  s:whiter,      s:lighter_gray,  "bold,italic")

call HighlightFor("Label",       s:blacker,      s:vibrant_teal,  "italic")
call HighlightFor("Exception",       s:blacker,      s:neon_magenta,  "italic")
call HighlightFor("Todo",        s:blackest,        s:vibrant_teal,  "italic")
call HighlightFor("Error",       s:blackest,        s:neon_magenta,  "italic")
call HighlightFor("WarningMsg",  s:blackest,        s:vibrant_teal,  "italic")
call HighlightFor("Tag",         s:blackest,        s:vibrant_teal,  "italic")

" Status line
call HighlightFor("StatusLine",  s:vibrant_teal,      s:blackest,   "NONE")
call HighlightFor("StatusLineNC",s:vibrant_teal,     s:blackest,     "NONE")

" Tab pages
call HighlightFor("TabLine",     s:whitest,      s:blackest,     "NONE")
call HighlightFor("TabLineSel",  s:blackest,        s:vibrant_teal,  "bold")
call HighlightFor("TabLineFill", s:whitest,      s:black,    "NONE")
" call HighlightFor("BufferLineTab",     s:neon_magenta,      s:neon_magenta,     "NONE")
" call HighlightFor("BufferLineTabSelected",  s:blackest,        s:vibrant_teal,  "bold")
" call HighlightFor("BufferLineFill", s:whitest,      s:black,    "NONE")
" call HighlightFor("BufferLineSeparator", s:vibrant_teal,      s:black,    "NONE")

" Placeholder
call HighlightFor("Title",       s:whitest,      s:dark_gray,   "italic")
call HighlightFor("vimCommentTitle",       s:whitest,      s:dark_gray,   "italic")
call HighlightFor("WildMenu",    s:whitest,      s:lightest_gray,  "NONE")

" Custom fugitive blame colors
call HighlightFor("fugitiveHash",     s:blackest,   s:vibrant_teal,  "NONE")
call HighlightFor("fugitiveAuthor",   s:blackest,   s:neon_magenta,  "NONE")
call HighlightFor("fugitiveTime",     s:blackest,   s:white,    "NONE")
call HighlightFor("fugitiveSummary",  s:blackest,   s:whiter,    "NONE")
call HighlightFor("fugitiveBoundary", s:blackest,   s:neon_magenta,  "NONE")
call HighlightFor("fugitiveUntracked",s:blackest,   s:lightest_gray,  "NONE")
call HighlightFor("fugitiveUnstaged", s:blackest,   s:lighter_gray,  "NONE")
call HighlightFor("fugitiveStaged",   s:blackest,   s:vibrant_teal,  "NONE")

" Additional General Interface Highlights
call HighlightFor("CursorIM",       s:vibrant_teal,     s:blackest,      "NONE")          " Cursor in insert mode (GUI/terminal)
call HighlightFor("VisualNOS",      s:whitest,      s:lightest_gray,   "NONE")          " Visual selection when not owning selection
call HighlightFor("QuickFixLine",   s:blackest,        s:vibrant_teal,   "bold")          " Selected line in quickfix window
call HighlightFor("ErrorMsg",       s:neon_magenta,     s:blackest,      "bold")          " Error messages on command line
call HighlightFor("ModeMsg",        s:whiter,       s:blacker,  "NONE")          " Mode messages (e.g., -- INSERT --)
call HighlightFor("MoreMsg",        s:whiter,       s:blacker,  "NONE")          " More prompts (e.g., -- More --)
call HighlightFor("Question",       s:vibrant_teal,     s:blacker,  "bold")          " Prompt questions (e.g., confirm prompts)
call HighlightFor("ColorColumn",    "NONE",             s:dark_gray,    "NONE")          " Column highlight (e.g., colorcolumn=80)
call HighlightFor("Conceal",        s:lightest_gray,     "NONE",           "NONE")          " Concealed text (e.g., markdown hidden chars)
call HighlightFor("EndOfBuffer",    s:white,       "NONE",           "NONE")          " Beyond buffer (e.g., ~ characters)
call HighlightFor("Menu",           s:whitest,      s:dark_gray,    "NONE")          " GUI Vim menu items
call HighlightFor("ScrollBar",      s:lightest_gray,     s:blacker,  "NONE")          " GUI Vim scrollbar
call HighlightFor("Tooltip",        s:whitest,      s:dark_gray,    "NONE")          " GUI Vim tooltips
call HighlightFor("markdownIalic",        s:whitest,      s:dark_gray,    "italic")          " GUI Vim tooltips

" Additional Syntax Highlights
call HighlightFor("Delimiter",      s:vibrant_teal,       s:med_gray,      "NONE")          " Delimiters (e.g., commas, parentheses)
call HighlightFor("Special",    s:whitest,        s:blackest,   "bold")
call HighlightFor("SpecialChar",    s:vibrant_teal,    s:blackest,      "NONE")          " Special chars in strings (e.g., \n)
call HighlightFor("SpecialComment", s:blackest,     s:vibrant_teal,  "italic")        " Special comments (e.g., TODO, FIXME)
call HighlightFor("SpecialKey",     s:vibrant_teal,     "NONE",           "NONE")          " Special chars when :set list (e.g., tabs)
call HighlightFor("Constant",       s:whitest,      s:blackest,      "italic")          " General constants (parent group)
call HighlightFor("Debug",          s:whiter,       s:dark_gray,    "italic")        " Debugging-related elements
call HighlightFor("Define",         s:whitest,      s:lightest_gray,   "NONE")          " Preprocessor definitions (e.g., #define)
call HighlightFor("Macro",          s:whitest,      s:lightest_gray,   "NONE")          " Macro definitions/invocations
call HighlightFor("PreCondit",      s:whitest,      s:lightest_gray,   "NONE")          " Preprocessor conditionals (e.g., #ifdef)
call HighlightFor("Include",        s:whitest,      s:pale_cyan,   "NONE")          " Include/import statements

" Spell Checking Highlights
call HighlightFor("SpellBad",       s:neon_magenta,     s:blackest,      "undercurl")     " Misspelled words
call HighlightFor("SpellCap",       s:neon_magenta,     s:blackest,      "undercurl")     " Capitalization errors
call HighlightFor("SpellRare",      s:whiter,       s:blackest,      "undercurl")     " Rare/unusual words
call HighlightFor("SpellLocal",     s:vibrant_teal,     s:blackest,      "undercurl")     " Locally correct words

" Neovim-Specific Highlights (LSP and Tree-Sitter)
call HighlightFor("LspDiagnosticsDefaultError",       s:neon_magenta,     s:blackest,      "undercurl")     " LSP error diagnostics
call HighlightFor("LspDiagnosticsDefaultWarning",     s:vibrant_teal,     s:blackest,      "undercurl")     " LSP warning diagnostics
call HighlightFor("LspDiagnosticsDefaultInformation", s:whiter,       s:blackest,      "NONE")          " LSP info diagnostics
call HighlightFor("LspDiagnosticsDefaultHint",        s:vibrant_teal,     s:blackest,      "NONE")          " LSP hint diagnostics
call HighlightFor("LspReferenceText",                 s:whitest,      s:dark_gray,    "NONE")          " LSP reference text
call HighlightFor("LspReferenceRead",                 s:whitest,      s:dark_gray,    "NONE")          " LSP read references
call HighlightFor("LspReferenceWrite",                s:whitest,      s:dark_gray,    "NONE")          " LSP write references
call HighlightFor("TSVariable",                       s:whiter,       s:blackest,      "NONE")          " Tree-sitter variables
call HighlightFor("TSFunction",                       s:blackest,        s:whitest,    "italic")        " Tree-sitter functions
call HighlightFor("TSString",                         s:whitest,      s:blackest,      "NONE")          " Tree-sitter strings
call HighlightFor("TSKeyword",                        s:whitest,      s:lighter_gray,   "italic")        " Tree-sitter keywords
call HighlightFor("TSTag",                            s:blackest,        s:vibrant_teal,   "undercurl")     " Tree-sitter tags (e.g., HTML tags)


" Snacks
call HighlightFor("SnacksIndentScope",      s:vibrant_teal,      "NONE",    "NONE")
call HighlightFor("SnacksIndent",      s:lighter_gray,      "NONE",    "NONE")

" Neotree
call HighlightFor("NeoTreeFileIcon",      s:vibrant_teal,      "NONE",    "NONE")
call HighlightFor("NeoTreeExpander",      s:vibrant_teal,      "NONE",    "NONE")


" Telescope neon_lavender
call HighlightFor("TelescopeSelection",      s:blackest,      s:vibrant_teal,    "bold,italic")
call HighlightFor("TelescopeBorder",      s:vibrant_teal,      s:blackest,    "italic")
call HighlightFor("TelescopeNormal",      s:white,      s:dark_gray,    "italic")
call HighlightFor("TelescopePrompt",      s:whitest,      s:dark_gray,    "italic")
call HighlightFor("TelescopeMatching",      s:whitest,      s:neon_magenta,    "bold,italic")
call HighlightFor("TelescopeTitle",      s:blackest,      s:vibrant_teal,    "bold")

" Vim-gutter (git)
call HighlightFor("GitGutterAdd",      s:vibrant_teal,      s:blackest,    "NONE")
call HighlightFor("GitGutterChange",      "#FFA500",      s:blackest,    "NONE")
call HighlightFor("GitGutterDelete",      s:neon_magenta,      s:blackest,    "NONE")
" call HighlightFor("GitGutterChangeDeleteLine ", "#FFA500", s:blackest,    "NONE")
"call HighlightFor("GitGutterChangeLineNr  ", "#FFA500", s:blackest,    "NONE")


" Coc
call HighlightFor("CocErrorHighlight",      s:neon_magenta,      s:blackest,    "NONE")
call HighlightFor("CocWarningHighlight",      s:vibrant_teal,      s:blackest,    "NONE")
call HighlightFor("CocInfoHighlight",      s:dark_teal,      s:blackest,    "NONE")
call HighlightFor("CocHintHighlight",      s:neon_magenta,      s:blackest,    "NONE")
call HighlightFor("CocErrorVirtualText",      s:neon_magenta,      s:blackest,    "NONE")
call HighlightFor("CocWarningVirtualText",      s:vibrant_teal,      s:blackest,    "NONE")
call HighlightFor("CocInfoVirtualText",      s:neon_magenta,      s:blackest,    "NONE")





call HighlightFor("IlluminatedWordText",      s:black,      s:vibrant_teal,    "italic,bold")
call HighlightFor("IlluminatedWordRead",      s:black,      s:vibrant_teal,    "italic,bold")
call HighlightFor("IlluminatedWordWrite",      s:black,      s:vibrant_teal,    "italic,bold")
