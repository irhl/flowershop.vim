hi clear
syntax reset

set t_Co=256
set background=dark
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let g:colors_name = "flowershop"

  " check if user is using tty or gui
    if $TERM == 'linux'
        set notermguicolors
            else
                set termguicolors
          endif

    filetype detect
    set nocursorcolumn
    set nocursorline

  "   NOTE: Flowershop is a 256-bit 24 colour palette and
  "   it is not based on any colorscheme, its objective
  "   is to follow the pigment of coffee and the growth
"
"          +-----------------+    +---------------------+
"          |       ,-_,.     |    |nnnnnnnnnnnnnnnnnnnnn|
"          |     ,( _  ))    |    |nnnnnnnnnnnnnnnnnnnnn|
"          |     7 (_) 77    |    |nn                 nn|
"          |     ((   :))    |    |nn                 nn|
"          |      ~__>~'     |    |nn                 nn|
"          |       cY?'      |    |nn   FLOWERSHOP    nn|
"          |       `l,__     |    |nn   24 - color    nn|
"          |        l7-'     |    |nn                 nn|
"          |       ;l        |    |nn                 nn|
"          |       _i_,      |    |nn                 nn|
"          |      l___l      |    |nnnnnnnnnnnnnnnnnnnnn|
"          |      \___/      |    |nnnnnnnnnnnnnnnnnnnnn|
"          |-----------------|    |---------------------|
"          +-----------------+    +---------------------+

"                        FLOWERSHOP 花屋
"                     garage pop colorscheme


    if (&ft=='rust')
        au bufenter * hi! link          Function        Identifier
        au bufenter * hi! link          Type            Special
          elseif (&ft=='lua')
              au bufenter * hi! link    Type            Identifier
              au bufenter * hi! link    String          Special
              au bufenter * hi! link    Repeat          Function
         elseif (&ft=='yaml')
              au bufenter * hi! link    Identifier      Function
              au bufenter * hi! link    Number          Constant
         elseif (&ft=='swayconfig')
              au bufenter * hi! link    Identifier      Function
              au bufenter * hi! link    Error           Function
         elseif (&ft=='markdown')
              au bufenter * hi! link    Type            PreProc
              au bufenter * hi! link    Float           Operator
              au bufenter * hi! link    Underlined      Number
              au bufenter * hi! link    Special         Function
              au bufenter * hi! link    Identifier      Function
          elseif (&ft=='toml')
              au bufenter * hi! link    Identifier      PreProc
              au bufenter * hi! link    tomlTableArray  Normal
              au bufenter * hi! link    tomlTable       Normal
          elseif (&ft=='text')
              au bufenter * hi x        ctermfg=2
              au bufenter * hi x        guifg=#638e6b
              au bufenter * match x     /*\|uwu/
          endif

    if expand('%') =~ "flowershop.vim"
              au bufenter * hi! link    vimComment      Normal
              au bufenter * hi! link    vim9Comment     Normal
              au bufenter * hi x        ctermfg=15
              au bufenter * hi x        guifg=#e0d4be
              au bufenter * hi 2x       ctermfg=11
              au bufenter * hi 2x       guifg=#e5bab3
              au bufenter * match x     /"/
              au bufenter * match 2x    /*\|❀/
            else
                :
          endif

    hi x             ctermbg=NONE
    hi x             guibg=NONE
    hi 2x            ctermfg=11
    match x          /\s\|+$/
    match 2x         /\~\|??\|$@/


    hi Normal        ctermfg=0       guifg=#dbc1a2
    hi Type          ctermfg=1       guifg=#dbc1a2
    hi String        ctermfg=1       guifg=#c6986f
    hi Statement     ctermfg=6       guifg=#cca380


    hi PreProc       ctermfg=1       guifg=#efcca0
    hi Function      ctermfg=8       guifg=#c4a683
    hi Identifier    ctermfg=10      guifg=#8daf85
    hi Special       ctermfg=2       guifg=#b6c698
    hi SpecialKey    ctermfg=2       guifg=#92b792
    hi Operator      ctermfg=3       guifg=#f4c1ba
    hi Number        ctermfg=11      guifg=#efa99e
    hi Repeat        ctermfg=4       guifg=#dbabc3
    hi Constant      ctermfg=4       guifg=#dbabc3

    hi Comment       ctermfg=7       guifg=#7c6757
    hi LineNR        ctermfg=7       guifg=#705a4b
    hi Visual        ctermbg=15      guibg=#e8d4b2
    hi MatchParen    ctermbg=13      guibg=#efd09b

    hi Error         ctermbg=NONE    guifg=#c6d1b5    guibg=NONE
    hi ErrorMsg      ctermfg=0       guifg=#b3c698    guibg=NONE
    hi WarningMsg                    guifg=#b3c698    guibg=NONE
    hi MoreMsg                       guifg=#b3c698    guibg=NONE
    hi Question                      guifg=#b3c698    guibg=NONE

    hi Title         ctermfg=7       guifg=#B28A67    guibg=NONE
    hi NonText       ctermfg=7       guifg=#B28A67    guibg=NONE
    hi Underlined    ctermfg=1       guifg=#c4a683    guibg=NONE
    hi DiffChange    ctermbg=1       guibg=#c4a683    guifg=NONE
    hi DiffDelete    ctermbg=3       guibg=#d89393    guifg=NONE
    hi DiffText      ctermbg=11      guibg=#e5bab3    guifg=NONE
    hi ALEError                      guifg=#bf6578    guibg=NONE
    hi ALEWarning                    guibg=#c99d95    guibg=NONE

    hi! link         TODO            NonText
    hi! link         Search          DiffDelete
    hi! link         IncSearch       Visual
    hi! link         CurSearch       Visual
    hi! link         CursorLine      Visual
    hi! link         CursorLineNr    Visual
    hi! link         Directory       Operator
    hi! link         modemsg         function

    hi minimapRange     ctermfg=78      ctermbg=NONE  guifg=#c3fbb6
    hi minimapCursor    ctermfg=78      ctermbg=1     guibg=#c3fbb6
    hi! link            VertSplit       Nornal

    let g:minimap_cursor_color = 'MinimapCurrentLine'
    hi MinimapCurrentLine ctermfg=Green ctermbg=NONE

    hi Pmenu                         guifg=#847252
    hi Pmenu         ctermbg=15      guibg=#c9b593
    hi Pmenu         cterm=NONE

    hi PmenuSel      ctermfg=8       guifg=#847252
    hi PmenuSel      ctermbg=13      guibg=#e2ceaa
    hi PMenuSel      cterm=NONE

    hi PmenuSbar     ctermfg=NONE    guifg=NONE
    hi PmenuSbar     ctermbg=15      guibg=#c9b593
    hi PmenuSbar     cterm=NONE

    hi PmenuThumb    ctermfg=NONE    guifg=NONE
    hi PmenuThumb    ctermbg=15      guibg=#c9b593
    hi PmenuThumb    cterm=NONE

    hi SignColumn    ctermfg=1       guifg=#47392F
    hi SignColumn    ctermbg=NONE    guibg=NONE

    hi StatusLine    ctermfg=1       guifg=#47392F
    hi StatusLine    ctermbg=NONE    guibg=#e2ceaa
