" Name: flowershop.vim
" Author: mako (irhl)
" Version: 0.1
" Repository: https://github.com/irhl/flowershop.vim

hi clear
syntax reset

set t_Co=256
set background=dark
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let g:colors_name = "flowershop"

  " check if user is using tty or gui
    if $TERM == 'linux'
        colorscheme none
            else
                set termguicolors
          endif

    filetype detect
    set nocursorcolumn
    set nocursorline
"
"
"          +------------------+    +---------------------+
"          |       ,-_,.      |    |nnnnnnnnnnnnnnnnnnnnn|
"          |     ,( _  ))     |    |nnnnnnnnnnnnnnnnnnnnn|
"          |     7 (_) 77     |    |nn                 nn|
"          |     ((   :))     |    |nn                 nn|
"          |      ~__>~'      |    |nn                 nn|
"          |       cY?'       |    |nn   FLOWERSHOP    nn|
"          |       `l,__      |    |nn   24 - color    nn|
"          |        l7-'      |    |nn                 nn|
"          |       ;l         |    |nn                 nn|
"          |       _i_,       |    |nn                 nn|
"          |      l___l       |    |nnnnnnnnnnnnnnnnnnnnn|
"          |      \___/ ~mako |    |nnnnnnnnnnnnnnnnnnnnn|
"          |------------------|    |---------------------|
"          +------------------+    +---------------------+

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
          elseif (&ft=='vim')
              au bufenter * hi! link    Type            Normal
          endif

    if expand('%') =~ "flowershop.vim"
              au bufenter * hi! link    vimComment      Normal
              au bufenter * hi! link    vim9Comment     Normal
              au bufenter * hi x        guifg=#e0d4be
              au bufenter * hi 2x       guifg=#e5bab3
              au bufenter * match x     /"/
              au bufenter * match 2x    /*\|❀/
            else
                :
          endif

    hi x             guibg=#e29e9e
    match x          /\~\|??\|$@/

    hi Normal        guifg=#dbc1a2    guibg=#514036
    hi Type          guifg=#e5b58b
    hi String        guifg=#c6986f
    hi Statement     guifg=#cca380
    hi PreProc       guifg=#efcca0
    hi Function      guifg=#c4a683
    hi Identifier    guifg=#8daf85
    hi Special       guifg=#b6c698
    hi SpecialKey    guifg=#92b792
    hi Operator      guifg=#f4c1ba
    hi Number        guifg=#e29e9e
    hi Repeat        guifg=#ea8ca4
    hi Constant      guifg=#ea8ca4

    hi Comment       guifg=#7c6858
    hi LineNR        guifg=#705a4b    guibg=#514036
    hi Visual        guibg=#efcca0    guifg=#514036
    hi MatchParen    guibg=#efd09b

    hi Error         guifg=#c6d1b5    guibg=NONE
    hi ErrorMsg      guifg=#b3c698    guibg=NONE
    hi WarningMsg    guifg=#b3c698    guibg=NONE
    hi MoreMsg       guifg=#b3c698    guibg=NONE
    hi Question      guifg=#b3c698    guibg=NONE

    hi Title         guifg=#B28A67    guibg=NONE
    hi NonText       guifg=#B28A67    guibg=NONE
    hi Underlined    guifg=#c4a683    guibg=NONE
    hi DiffChange    guifg=NONE       guibg=#c4a683
    hi DiffDelete    guifg=NONE       guibg=#d89393
    hi DiffText      guifg=NONE       guibg=#e5bab3
    hi ALEError      guifg=#bf6578    guibg=NONE
    hi ALEWarning    guifg=#c99d95    guibg=NONE

    hi! link         TODO            NonText
    hi! link         Search          DiffDelete
    hi! link         IncSearch       Visual
    hi! link         CurSearch       Visual
    hi! link         CursorLine      Visual
    hi! link         CursorLineNr    Visual
    hi! link         Directory       Operator
    hi! link         modemsg         function

    hi Pmenu         guifg=#847252
    hi Pmenu         guibg=#c9b593

    hi PmenuSel      guifg=#847252
    hi PmenuSel      guibg=#e2ceaa

    hi PmenuSbar     guifg=NONE
    hi PmenuSbar     guibg=#c9b593

    hi PmenuThumb    guifg=NONE
    hi PmenuThumb    guibg=#c9b593

    hi SignColumn    guifg=#47392F
    hi SignColumn    guibg=#514036

    hi StatusLine    guifg=#47392f
    hi StatusLine    guibg=#e2ceaa

    hi minimapRange     guifg=#c3fbb6
    hi minimapCursor    guibg=#c3fbb6
    hi! link            VertSplit       Nornal

    let g:minimap_cursor_color = 'MinimapCurrentLine'
    hi MinimapCurrentLine guifg=#b3c698 guibg=NONE
