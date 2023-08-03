" Name: flowershopli.vim
" Author: mako (irhl)
" Version: 0.0
" Repository: https://github.com/irhl/flowershop.vim

hi clear
syntax reset

set t_Co=256
set background=light
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let g:colors_name = "flowershopli"

  " check if user is using tty or gui
    if $TERM == 'linux'
        set notermguicolors
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
          elseif (&ft=='text')
              au bufenter * hi x        ctermfg=2
              au bufenter * hi x        guifg=#638e6b
              au bufenter * match x     /*\|uwu/
          endif

    if expand('%') =~ "flowershopli.vim"
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

    hi Normal        ctermfg=7       guifg=#897658    guibg=#F2e2c9
    hi String        ctermfg=8       guifg=#B29C79    guibg=NONE
    hi Comment       ctermfg=7       guifg=#ccb99b    guibg=NONE

    hi Statement     ctermfg=6       guifg=#B28A67
    hi Function      ctermfg=1       guifg=#BF9E78
    hi PreProc       ctermfg=9       guifg=#ccb192
    hi Type          ctermfg=9       guifg=#d6bd9e
    hi Identifier    ctermfg=2       guifg=#638e6b
    hi Special       ctermfg=10      guifg=#83af83
    hi SpecialKey    ctermfg=10      guifg=#83af83
    hi Repeat        ctermfg=4       guifg=#b3c6b3
    hi Operator      ctermfg=3       guifg=#d37575
    hi Number        ctermfg=11      guifg=#efafa7
    hi Constant      ctermfg=5       guifg=#dbabc3

    hi LineNR        ctermfg=15      guifg=#e0d4be    guibg=#f2e2c9
    hi Visual        ctermbg=13      guibg=#e8d4b2
    hi MatchParen    ctermbg=13      guibg=#efd09b

    hi Error         ctermbg=12      guifg=#c6d1b5    guibg=NONE
    hi ErrorMsg      ctermfg=0       guifg=#b3c698    guibg=NONE
    hi WarningMsg                    guifg=#b3c698    guibg=NONE
    hi MoreMsg                       guifg=#b3c698    guibg=NONE
    hi Question                      guifg=#b3c698    guibg=NONE

    hi Title         ctermfg=8       guifg=#B28A67    guibg=NONE
    hi NonText       ctermfg=8       guifg=#B28A67    guibg=NONE
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

    hi SignColumn    ctermfg=1       guifg=#847252
    hi SignColumn    ctermbg=NONE    guibg=NONE

    hi StatusLine    ctermfg=0       guifg=#f2e2c9
    hi StatusLine    ctermfg=0       guibg=#847252

    hi minimapRange     ctermfg=78      ctermbg=NONE  guifg=#e56e95
    hi minimapCursor    ctermfg=78      ctermbg=1     guibg=#e8d4b2
    hi! link            VertSplit       Nornal

    let g:minimap_cursor_color = 'MinimapCurrentLine'
    hi MinimapCurrentLine ctermfg=Green ctermbg=NONE
