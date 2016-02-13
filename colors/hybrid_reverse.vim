" File:       hybrid_reverse.vim
" Maintainer: Kristijan Husak (kristijanhusak)
" URL:        https://github.com/w0ng/vim-hybrid-material
" BASED ON:   https://github.com/w0ng/vim-hybrid
" Modified:   24 June 2015 by Kristijan Husak (kristijanhusak) <husakkristijan@gmail.com>
" License:    MIT

" Description:"{{{
" ----------------------------------------------------------------------------
" The RGB colour palette is taken from Tomorrow-Night.vim:
" https://github.com/chriskempson/vim-tomorrow-theme
"
" The syntax highlighting scheme is taken from jellybeans.vim:
" https://github.com/nanotech/jellybeans.vim
"
" The code taken from solarized.vim
" https://github.com/altercation/vim-colors-solarized

"}}}
" Requirements And Recommendations:"{{{
" ----------------------------------------------------------------------------
" This colourscheme is intended for use on:
"   - gVim 7.3 for Linux, Mac and Windows.
"   - Vim 7.3 for Linux, using a 256 colour enabled terminal.
"
" By default, Vim will use the closest matching cterm equivalent of the RGB
" colours.
"
" However, Due to the limited 256 palette, colours in Vim and gVim will still
" be noticeably different. In order to get a uniform appearance and the way
" that this colourscheme was intended, it is HIGHLY recommended that you:
"
" 1.  Add these colours to ~/.Xresources:
"
"       https://gist.github.com/3278077
"
" 2.  Use Xresources colours by setting in ~/.vimrc:
"
"       let g:hybrid_use_Xresources = 1
"       colorscheme hybrid
"
" For iTerm2 users:
" 1.  Install this color preset on your iTerm2:
"
"       https://gist.github.com/luan/6362811
"
" 2. Use iTerm colours by setting in ~/.vimrc:
"
"       let g:hybrid_use_iTerm_colors = 1
"       colorscheme hybrid
"

"}}}


" xter 256 colorname list

"  | 016 | Grey0 | ctermfg=16 | guifg=#000000 "rgb=0,0,0 |
"  | 017 | NavyBlue | ctermfg=17 | guifg=#00005f | "rgb=0,0,95 |
"  | 018 | DarkBlue | ctermfg=18 | guifg=#000087 | "rgb=0,0,135 |
"  | 019 | Blue3 | ctermfg=19 | guifg=#0000af | "rgb=0,0,175 |
"  | 020 | Blue3 | ctermfg=20 | guifg=#0000d7 | "rgb=0,0,215 |
"  | 021 | Blue1 | ctermfg=21 | guifg=#0000ff | "rgb=0,0,255 |
"  | 022 | DarkGreen | ctermfg=22 | guifg=#005f00 | "rgb=0,95,0 |
"  | 023 | DeepSkyBlue4 | ctermfg=23 | guifg=#005f5f | "rgb=0,95,95 |
"  | 024 | DeepSkyBlue4 | ctermfg=24 | guifg=#005f87 | "rgb=0,95,135 |
"  | 025 | DeepSkyBlue4 | ctermfg=25 | guifg=#005faf | "rgb=0,95,175 |
"  | 026 | DodgerBlue3 | ctermfg=26 | guifg=#005fd7 | "rgb=0,95,215 |
"  | 027 | DodgerBlue2 | ctermfg=27 | guifg=#005fff | "rgb=0,95,255 |
"  | 028 | Green4 | ctermfg=28 | guifg=#008700 | "rgb=0,135,0 |
"  | 029 | SpringGreen4 | ctermfg=29 | guifg=#00875f | "rgb=0,135,95 |
"  | 030 | Turquoise4 | ctermfg=30 | guifg=#008787 | "rgb=0,135,135 |
"  | 031 | DeepSkyBlue3 | ctermfg=31 | guifg=#0087af | "rgb=0,135,175 |
"  | 032 | DeepSkyBlue3 | ctermfg=32 | guifg=#0087d7 | "rgb=0,135,215 |
"  | 033 | DodgerBlue1 | ctermfg=33 | guifg=#0087ff | "rgb=0,135,255 |
"  | 034 | Green3 | ctermfg=34 | guifg=#00af00 | "rgb=0,175,0 |
"  | 035 | SpringGreen3 | ctermfg=35 | guifg=#00af5f | "rgb=0,175,95 |
"  | 036 | DarkCyan | ctermfg=36 | guifg=#00af87 | "rgb=0,175,135 |
"  | 037 | LightSeaGreen | ctermfg=37 | guifg=#00afaf | "rgb=0,175,175 |
"  | 038 | DeepSkyBlue2 | ctermfg=38 | guifg=#00afd7 | "rgb=0,175,215 |
"  | 039 | DeepSkyBlue1 | ctermfg=39 | guifg=#00afff | "rgb=0,175,255 |
"  | 040 | Green3 | ctermfg=40 | guifg=#00d700 | "rgb=0,215,0 |
"  | 041 | SpringGreen3 | ctermfg=41 | guifg=#00d75f | "rgb=0,215,95 |
"  | 042 | SpringGreen2 | ctermfg=42 | guifg=#00d787 | "rgb=0,215,135 |
"  | 043 | Cyan3 | ctermfg=43 | guifg=#00d7af | "rgb=0,215,175 |
"  | 044 | DarkTurquoise | ctermfg=44 | guifg=#00d7d7 | "rgb=0,215,215 |
"  | 045 | Turquoise2 | ctermfg=45 | guifg=#00d7ff | "rgb=0,215,255 |
"  | 046 | Green1 | ctermfg=46 | guifg=#00ff00 | "rgb=0,255,0 |
"  | 047 | SpringGreen2 | ctermfg=47 | guifg=#00ff5f | "rgb=0,255,95 |
"  | 048 | SpringGreen1 | ctermfg=48 | guifg=#00ff87 | "rgb=0,255,135 |
"  | 049 | MediumSpringGreen | ctermfg=49 | guifg=#00ffaf | "rgb=0,255,175 |
"  | 050 | Cyan2 | ctermfg=50 | guifg=#00ffd7 | "rgb=0,255,215 |
"  | 051 | Cyan1 | ctermfg=51 | guifg=#00ffff | "rgb=0,255,255 |
"  | 052 | DarkRed | ctermfg=52 | guifg=#5f0000 | "rgb=95,0,0 |
"  | 053 | DeepPink4 | ctermfg=53 | guifg=#5f005f | "rgb=95,0,95 |
"  | 054 | Purple4 | ctermfg=54 | guifg=#5f0087 | "rgb=95,0,135 |
"  | 055 | Purple4 | ctermfg=55 | guifg=#5f00af | "rgb=95,0,175 |
"  | 056 | Purple3 | ctermfg=56 | guifg=#5f00d7 | "rgb=95,0,215 |
"  | 057 | BlueViolet | ctermfg=57 | guifg=#5f00ff | "rgb=95,0,255 |
"  | 058 | Orange4 | ctermfg=58 | guifg=#5f5f00 | "rgb=95,95,0 |
"  | 059 | Grey37 | ctermfg=59 | guifg=#5f5f5f | "rgb=95,95,95 |
"  | 060 | MediumPurple4 | ctermfg=60 | guifg=#5f5f87 | "rgb=95,95,135 |
"  | 061 | SlateBlue3 | ctermfg=61 | guifg=#5f5faf | "rgb=95,95,175 |
"  | 062 | SlateBlue3 | ctermfg=62 | guifg=#5f5fd7 | "rgb=95,95,215 |
"  | 063 | RoyalBlue1 | ctermfg=63 | guifg=#5f5fff | "rgb=95,95,255 |
"  | 064 | Chartreuse4 | ctermfg=64 | guifg=#5f8700 | "rgb=95,135,0 |
"  | 065 | DarkSeaGreen4 | ctermfg=65 | guifg=#5f875f | "rgb=95,135,95 |
"  | 066 | PaleTurquoise4 | ctermfg=66 | guifg=#5f8787 | "rgb=95,135,135 |
"  | 067 | SteelBlue | ctermfg=67 | guifg=#5f87af | "rgb=95,135,175 |
"  | 068 | SteelBlue3 | ctermfg=68 | guifg=#5f87d7 | "rgb=95,135,215 |
"  | 069 | CornflowerBlue | ctermfg=69 | guifg=#5f87ff | "rgb=95,135,255 |
"  | 070 | Chartreuse3 | ctermfg=70 | guifg=#5faf00 | "rgb=95,175,0 |
"  | 071 | DarkSeaGreen4 | ctermfg=71 | guifg=#5faf5f | "rgb=95,175,95 |
"  | 072 | CadetBlue | ctermfg=72 | guifg=#5faf87 | "rgb=95,175,135 |
"  | 073 | CadetBlue | ctermfg=73 | guifg=#5fafaf | "rgb=95,175,175 |
"  | 074 | SkyBlue3 | ctermfg=74 | guifg=#5fafd7 | "rgb=95,175,215 |
"  | 075 | SteelBlue1 | ctermfg=75 | guifg=#5fafff | "rgb=95,175,255 |
"  | 076 | Chartreuse3 | ctermfg=76 | guifg=#5fd700 | "rgb=95,215,0 |
"  | 077 | PaleGreen3 | ctermfg=77 | guifg=#5fd75f | "rgb=95,215,95 |
"  | 078 | SeaGreen3 | ctermfg=78 | guifg=#5fd787 | "rgb=95,215,135 |
"  | 079 | Aquamarine3 | ctermfg=79 | guifg=#5fd7af | "rgb=95,215,175 |
"  | 080 | MediumTurquoise | ctermfg=80 | guifg=#5fd7d7 | "rgb=95,215,215 |
"  | 081 | SteelBlue1 | ctermfg=81 | guifg=#5fd7ff | "rgb=95,215,255 |
"  | 082 | Chartreuse2 | ctermfg=82 | guifg=#5fff00 | "rgb=95,255,0 |
"  | 083 | SeaGreen2 | ctermfg=83 | guifg=#5fff5f | "rgb=95,255,95 |
"  | 084 | SeaGreen1 | ctermfg=84 | guifg=#5fff87 | "rgb=95,255,135 |
"  | 085 | SeaGreen1 | ctermfg=85 | guifg=#5fffaf | "rgb=95,255,175 |
"  | 086 | Aquamarine1 | ctermfg=86 | guifg=#5fffd7 | "rgb=95,255,215 |
"  | 087 | DarkSlateGray2 | ctermfg=87 | guifg=#5fffff | "rgb=95,255,255 |
"  | 088 | DarkRed | ctermfg=88 | guifg=#870000 | "rgb=135,0,0 |
"  | 089 | DeepPink4 | ctermfg=89 | guifg=#87005f | "rgb=135,0,95 |
"  | 090 | DarkMagenta | ctermfg=90 | guifg=#870087 | "rgb=135,0,135 |
"  | 091 | DarkMagenta | ctermfg=91 | guifg=#8700af | "rgb=135,0,175 |
"  | 092 | DarkViolet | ctermfg=92 | guifg=#8700d7 | "rgb=135,0,215 |
"  | 093 | Purple | ctermfg=93 | guifg=#8700ff | "rgb=135,0,255 |
"  | 094 | Orange4 | ctermfg=94 | guifg=#875f00 | "rgb=135,95,0 |
"  | 095 | LightPink4 | ctermfg=95 | guifg=#875f5f | "rgb=135,95,95 |
"  | 096 | Plum4 | ctermfg=96 | guifg=#875f87 | "rgb=135,95,135 |
"  | 097 | MediumPurple3 | ctermfg=97 | guifg=#875faf | "rgb=135,95,175 |
"  | 098 | MediumPurple3 | ctermfg=98 | guifg=#875fd7 | "rgb=135,95,215 |
"  | 099 | SlateBlue1 | ctermfg=99 | guifg=#875fff | "rgb=135,95,255 |
"  | 100 | Yellow4 | ctermfg=100 | guifg=#878700 | "rgb=135,135,0 |
"  | 101 | Wheat4 | ctermfg=101 | guifg=#87875f | "rgb=135,135,95 |
"  | 102 | Grey53 | ctermfg=102 | guifg=#878787 | "rgb=135,135,135 |
"  | 103 | LightSlateGrey | ctermfg=103 | guifg=#8787af | "rgb=135,135,175 |
"  | 104 | MediumPurple | ctermfg=104 | guifg=#8787d7 | "rgb=135,135,215 |
"  | 105 | LightSlateBlue | ctermfg=105 | guifg=#8787ff | "rgb=135,135,255 |
"  | 106 | Yellow4 | ctermfg=106 | guifg=#87af00 | "rgb=135,175,0 |
"  | 107 | DarkOliveGreen3 | ctermfg=107 | guifg=#87af5f | "rgb=135,175,95 |
"  | 108 | DarkSeaGreen | ctermfg=108 | guifg=#87af87 | "rgb=135,175,135 |
"  | 109 | LightSkyBlue3 | ctermfg=109 | guifg=#87afaf | "rgb=135,175,175 |
"  | 110 | LightSkyBlue3 | ctermfg=110 | guifg=#87afd7 | "rgb=135,175,215 |
"  | 111 | SkyBlue2 | ctermfg=111 | guifg=#87afff | "rgb=135,175,255 |
"  | 112 | Chartreuse2 | ctermfg=112 | guifg=#87d700 | "rgb=135,215,0 |
"  | 113 | DarkOliveGreen3 | ctermfg=113 | guifg=#87d75f | "rgb=135,215,95 |
"  | 114 | PaleGreen3 | ctermfg=114 | guifg=#87d787 | "rgb=135,215,135 |
"  | 115 | DarkSeaGreen3 | ctermfg=115 | guifg=#87d7af | "rgb=135,215,175 |
"  | 116 | DarkSlateGray3 | ctermfg=116 | guifg=#87d7d7 | "rgb=135,215,215 |
"  | 117 | SkyBlue1 | ctermfg=117 | guifg=#87d7ff | "rgb=135,215,255 |
"  | 118 | Chartreuse1 | ctermfg=118 | guifg=#87ff00 | "rgb=135,255,0 |
"  | 119 | LightGreen | ctermfg=119 | guifg=#87ff5f | "rgb=135,255,95 |
"  | 120 | LightGreen | ctermfg=120 | guifg=#87ff87 | "rgb=135,255,135 |
"  | 121 | PaleGreen1 | ctermfg=121 | guifg=#87ffaf | "rgb=135,255,175 |
"  | 122 | Aquamarine1 | ctermfg=122 | guifg=#87ffd7 | "rgb=135,255,215 |
"  | 123 | DarkSlateGray1 | ctermfg=123 | guifg=#87ffff | "rgb=135,255,255 |
"  | 124 | Red3 | ctermfg=124 | guifg=#af0000 | "rgb=175,0,0 |
"  | 125 | DeepPink4 | ctermfg=125 | guifg=#af005f | "rgb=175,0,95 |
"  | 126 | MediumVioletRed | ctermfg=126 | guifg=#af0087 | "rgb=175,0,135 |
"  | 127 | Magenta3 | ctermfg=127 | guifg=#af00af | "rgb=175,0,175 |
"  | 128 | DarkViolet | ctermfg=128 | guifg=#af00d7 | "rgb=175,0,215 |
"  | 129 | Purple | ctermfg=129 | guifg=#af00ff | "rgb=175,0,255 |
"  | 130 | DarkOrange3 | ctermfg=130 | guifg=#af5f00 | "rgb=175,95,0 |
"  | 131 | IndianRed | ctermfg=131 | guifg=#af5f5f | "rgb=175,95,95 |
"  | 132 | HotPink3 | ctermfg=132 | guifg=#af5f87 | "rgb=175,95,135 |
"  | 133 | MediumOrchid3 | ctermfg=133 | guifg=#af5faf | "rgb=175,95,175 |
"  | 134 | MediumOrchid | ctermfg=134 | guifg=#af5fd7 | "rgb=175,95,215 |
"  | 135 | MediumPurple2 | ctermfg=135 | guifg=#af5fff | "rgb=175,95,255 |
"  | 136 | DarkGoldenrod | ctermfg=136 | guifg=#af8700 | "rgb=175,135,0 |
"  | 137 | LightSalmon3 | ctermfg=137 | guifg=#af875f | "rgb=175,135,95 |
"  | 138 | RosyBrown | ctermfg=138 | guifg=#af8787 | "rgb=175,135,135 |
"  | 139 | Grey63 | ctermfg=139 | guifg=#af87af | "rgb=175,135,175 |
"  | 140 | MediumPurple2 | ctermfg=140 | guifg=#af87d7 | "rgb=175,135,215 |
"  | 141 | MediumPurple1 | ctermfg=141 | guifg=#af87ff | "rgb=175,135,255 |
"  | 142 | Gold3 | ctermfg=142 | guifg=#afaf00 | "rgb=175,175,0 |
"  | 143 | DarkKhaki | ctermfg=143 | guifg=#afaf5f | "rgb=175,175,95 |
"  | 144 | NavajoWhite3 | ctermfg=144 | guifg=#afaf87 | "rgb=175,175,135 |
"  | 145 | Grey69 | ctermfg=145 | guifg=#afafaf | "rgb=175,175,175 |
"  | 146 | LightSteelBlue3 | ctermfg=146 | guifg=#afafd7 | "rgb=175,175,215 |
"  | 147 | LightSteelBlue | ctermfg=147 | guifg=#afafff | "rgb=175,175,255 |
"  | 148 | Yellow3 | ctermfg=148 | guifg=#afd700 | "rgb=175,215,0 |
"  | 149 | DarkOliveGreen3 | ctermfg=149 | guifg=#afd75f | "rgb=175,215,95 |
"  | 150 | DarkSeaGreen3 | ctermfg=150 | guifg=#afd787 | "rgb=175,215,135 |
"  | 151 | DarkSeaGreen2 | ctermfg=151 | guifg=#afd7af | "rgb=175,215,175 |
"  | 152 | LightCyan3 | ctermfg=152 | guifg=#afd7d7 | "rgb=175,215,215 |
"  | 153 | LightSkyBlue1 | ctermfg=153 | guifg=#afd7ff | "rgb=175,215,255 |
"  | 154 | GreenYellow | ctermfg=154 | guifg=#afff00 | "rgb=175,255,0 |
"  | 155 | DarkOliveGreen2 | ctermfg=155 | guifg=#afff5f | "rgb=175,255,95 |
"  | 156 | PaleGreen1 | ctermfg=156 | guifg=#afff87 | "rgb=175,255,135 |
"  | 157 | DarkSeaGreen2 | ctermfg=157 | guifg=#afffaf | "rgb=175,255,175 |
"  | 158 | DarkSeaGreen1 | ctermfg=158 | guifg=#afffd7 | "rgb=175,255,215 |
"  | 159 | PaleTurquoise1 | ctermfg=159 | guifg=#afffff | "rgb=175,255,255 |
"  | 160 | Red3 | ctermfg=160 | guifg=#d70000 | "rgb=215,0,0 |
"  | 161 | DeepPink3 | ctermfg=161 | guifg=#d7005f | "rgb=215,0,95 |
"  | 162 | DeepPink3 | ctermfg=162 | guifg=#d70087 | "rgb=215,0,135 |
"  | 163 | Magenta3 | ctermfg=163 | guifg=#d700af | "rgb=215,0,175 |
"  | 164 | Magenta3 | ctermfg=164 | guifg=#d700d7 | "rgb=215,0,215 |
"  | 165 | Magenta2 | ctermfg=165 | guifg=#d700ff | "rgb=215,0,255 |
"  | 166 | DarkOrange3 | ctermfg=166 | guifg=#d75f00 | "rgb=215,95,0 |
"  | 167 | IndianRed | ctermfg=167 | guifg=#d75f5f | "rgb=215,95,95 |
"  | 168 | HotPink3 | ctermfg=168 | guifg=#d75f87 | "rgb=215,95,135 |
"  | 169 | HotPink2 | ctermfg=169 | guifg=#d75faf | "rgb=215,95,175 |
"  | 170 | Orchid | ctermfg=170 | guifg=#d75fd7 | "rgb=215,95,215 |
"  | 171 | MediumOrchid1 | ctermfg=171 | guifg=#d75fff | "rgb=215,95,255 |
"  | 172 | Orange3 | ctermfg=172 | guifg=#d78700 | "rgb=215,135,0 |
"  | 173 | LightSalmon3 | ctermfg=173 | guifg=#d7875f | "rgb=215,135,95 |
"  | 174 | LightPink3 | ctermfg=174 | guifg=#d78787 | "rgb=215,135,135 |
"  | 175 | Pink3 | ctermfg=175 | guifg=#d787af | "rgb=215,135,175 |
"  | 176 | Plum3 | ctermfg=176 | guifg=#d787d7 | "rgb=215,135,215 |
"  | 177 | Violet | ctermfg=177 | guifg=#d787ff | "rgb=215,135,255 |
"  | 178 | Gold3 | ctermfg=178 | guifg=#d7af00 | "rgb=215,175,0 |
"  | 179 | LightGoldenrod3 | ctermfg=179 | guifg=#d7af5f | "rgb=215,175,95 |
"  | 180 | Tan | ctermfg=180 | guifg=#d7af87 | "rgb=215,175,135 |
"  | 181 | MistyRose3 | ctermfg=181 | guifg=#d7afaf | "rgb=215,175,175 |
"  | 182 | Thistle3 | ctermfg=182 | guifg=#d7afd7 | "rgb=215,175,215 |
"  | 183 | Plum2 | ctermfg=183 | guifg=#d7afff | "rgb=215,175,255 |
"  | 184 | Yellow3 | ctermfg=184 | guifg=#d7d700 | "rgb=215,215,0 |
"  | 185 | Khaki3 | ctermfg=185 | guifg=#d7d75f | "rgb=215,215,95 |
"  | 186 | LightGoldenrod2 | ctermfg=186 | guifg=#d7d787 | "rgb=215,215,135 |
"  | 187 | LightYellow3 | ctermfg=187 | guifg=#d7d7af | "rgb=215,215,175 |
"  | 188 | Grey84 | ctermfg=188 | guifg=#d7d7d7 | "rgb=215,215,215 |
"  | 189 | LightSteelBlue1 | ctermfg=189 | guifg=#d7d7ff | "rgb=215,215,255 |
"  | 190 | Yellow2 | ctermfg=190 | guifg=#d7ff00 | "rgb=215,255,0 |
"  | 191 | DarkOliveGreen1 | ctermfg=191 | guifg=#d7ff5f | "rgb=215,255,95 |
"  | 192 | DarkOliveGreen1 | ctermfg=192 | guifg=#d7ff87 | "rgb=215,255,135 |
"  | 193 | DarkSeaGreen1 | ctermfg=193 | guifg=#d7ffaf | "rgb=215,255,175 |
"  | 194 | Honeydew2 | ctermfg=194 | guifg=#d7ffd7 | "rgb=215,255,215 |
"  | 195 | LightCyan1 | ctermfg=195 | guifg=#d7ffff | "rgb=215,255,255 |
"  | 196 | Red1 | ctermfg=196 | guifg=#ff0000 | "rgb=255,0,0 |
"  | 197 | DeepPink2 | ctermfg=197 | guifg=#ff005f | "rgb=255,0,95 |
"  | 198 | DeepPink1 | ctermfg=198 | guifg=#ff0087 | "rgb=255,0,135 |
"  | 199 | DeepPink1 | ctermfg=199 | guifg=#ff00af | "rgb=255,0,175 |
"  | 200 | Magenta2 | ctermfg=200 | guifg=#ff00d7 | "rgb=255,0,215 |
"  | 201 | Magenta1 | ctermfg=201 | guifg=#ff00ff | "rgb=255,0,255 |
"  | 202 | OrangeRed1 | ctermfg=202 | guifg=#ff5f00 | "rgb=255,95,0 |
"  | 203 | IndianRed1 | ctermfg=203 | guifg=#ff5f5f | "rgb=255,95,95 |
"  | 204 | IndianRed1 | ctermfg=204 | guifg=#ff5f87 | "rgb=255,95,135 |
"  | 205 | HotPink | ctermfg=205 | guifg=#ff5faf | "rgb=255,95,175 |
"  | 206 | HotPink | ctermfg=206 | guifg=#ff5fd7 | "rgb=255,95,215 |
"  | 207 | MediumOrchid1 | ctermfg=207 | guifg=#ff5fff | "rgb=255,95,255 |
"  | 208 | DarkOrange | ctermfg=208 | guifg=#ff8700 | "rgb=255,135,0 |
"  | 209 | Salmon1 | ctermfg=209 | guifg=#ff875f | "rgb=255,135,95 |
"  | 210 | LightCoral | ctermfg=210 | guifg=#ff8787 | "rgb=255,135,135 |
"  | 211 | PaleVioletRed1 | ctermfg=211 | guifg=#ff87af | "rgb=255,135,175 |
"  | 212 | Orchid2 | ctermfg=212 | guifg=#ff87d7 | "rgb=255,135,215 |
"  | 213 | Orchid1 | ctermfg=213 | guifg=#ff87ff | "rgb=255,135,255 |
"  | 214 | Orange1 | ctermfg=214 | guifg=#ffaf00 | "rgb=255,175,0 |
"  | 215 | SandyBrown | ctermfg=215 | guifg=#ffaf5f | "rgb=255,175,95 |
"  | 216 | LightSalmon1 | ctermfg=216 | guifg=#ffaf87 | "rgb=255,175,135 |
"  | 217 | LightPink1 | ctermfg=217 | guifg=#ffafaf | "rgb=255,175,175 |
"  | 218 | Pink1 | ctermfg=218 | guifg=#ffafd7 | "rgb=255,175,215 |
"  | 219 | Plum1 | ctermfg=219 | guifg=#ffafff | "rgb=255,175,255 |
"  | 220 | Gold1 | ctermfg=220 | guifg=#ffd700 | "rgb=255,215,0 |
"  | 221 | LightGoldenrod2 | ctermfg=221 | guifg=#ffd75f | "rgb=255,215,95 |
"  | 222 | LightGoldenrod2 | ctermfg=222 | guifg=#ffd787 | "rgb=255,215,135 |
"  | 223 | NavajoWhite1 | ctermfg=223 | guifg=#ffd7af | "rgb=255,215,175 |
"  | 224 | MistyRose1 | ctermfg=224 | guifg=#ffd7d7 | "rgb=255,215,215 |
"  | 225 | Thistle1 | ctermfg=225 | guifg=#ffd7ff | "rgb=255,215,255 |
"  | 226 | Yellow1 | ctermfg=226 | guifg=#ffff00 | "rgb=255,255,0 |
"  | 227 | LightGoldenrod1 | ctermfg=227 | guifg=#ffff5f | "rgb=255,255,95 |
"  | 228 | Khaki1 | ctermfg=228 | guifg=#ffff87 | "rgb=255,255,135 |
"  | 229 | Wheat1 | ctermfg=229 | guifg=#ffffaf | "rgb=255,255,175 |
"  | 230 | Cornsilk1 | ctermfg=230 | guifg=#ffffd7 | "rgb=255,255,215 |
"  | 231 | Grey100 | ctermfg=231 | guifg=#ffffff | "rgb=255,255,255 |
"  | 232 | Grey3 | ctermfg=232 | guifg=#080808 | "rgb=8,8,8 |
"  | 233 | Grey7 | ctermfg=233 | guifg=#121212 | "rgb=18,18,18 |
"  | 234 | Grey11 | ctermfg=234 | guifg=#1c1c1c | "rgb=28,28,28 |
"  | 235 | Grey15 | ctermfg=235 | guifg=#262626 | "rgb=38,38,38 |
"  | 236 | Grey19 | ctermfg=236 | guifg=#303030 | "rgb=48,48,48 |
"  | 237 | Grey23 | ctermfg=237 | guifg=#3a3a3a | "rgb=58,58,58 |
"  | 238 | Grey27 | ctermfg=238 | guifg=#444444 | "rgb=68,68,68 |
"  | 239 | Grey30 | ctermfg=239 | guifg=#4e4e4e | "rgb=78,78,78 |
"  | 240 | Grey35 | ctermfg=240 | guifg=#585858 | "rgb=88,88,88 |
"  | 241 | Grey39 | ctermfg=241 | guifg=#626262 | "rgb=98,98,98 |
"  | 242 | Grey42 | ctermfg=242 | guifg=#6c6c6c | "rgb=108,108,108 |
"  | 243 | Grey46 | ctermfg=243 | guifg=#767676 | "rgb=118,118,118 |
"  | 244 | Grey50 | ctermfg=244 | guifg=#808080 | "rgb=128,128,128 |
"  | 245 | Grey54 | ctermfg=245 | guifg=#8a8a8a | "rgb=138,138,138 |
"  | 246 | Grey58 | ctermfg=246 | guifg=#949494 | "rgb=148,148,148 |
"  | 247 | Grey62 | ctermfg=247 | guifg=#9e9e9e | "rgb=158,158,158 |
"  | 248 | Grey66 | ctermfg=248 | guifg=#a8a8a8 | "rgb=168,168,168 |
"  | 249 | Grey70 | ctermfg=249 | guifg=#b2b2b2 | "rgb=178,178,178 |
"  | 250 | Grey74 | ctermfg=250 | guifg=#bcbcbc | "rgb=188,188,188 |
"  | 251 | Grey78 | ctermfg=251 | guifg=#c6c6c6 | "rgb=198,198,198 |
"  | 252 | Grey82 | ctermfg=252 | guifg=#d0d0d0 | "rgb=208,208,208 |
"  | 253 | Grey85 | ctermfg=253 | guifg=#dadada | "rgb=218,218,218 |
"  | 254 | Grey89 | ctermfg=254 | guifg=#e4e4e4 | "rgb=228,228,228 |
"  | 255 | Grey93 | ctermfg=255 | guifg=#eeeeee | "rgb=238,238,238 |


" Initialisation:"{{{
" ----------------------------------------------------------------------------
" if !has("gui_running") && &t_Co < 256
if !has("gui_running") && &t_Co < 256
  finish
endif

if !exists("g:hybrid_use_Xresources")
  let g:hybrid_use_Xresources = 0
endif

if !exists("g:hybrid_use_iTerm_colors")
  let g:hybrid_use_iTerm_colors = 0
endif

if !exists("g:enable_bold_font")
    let g:enable_bold_font = 0
endif

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "hybrid_reverse"
execute "colorscheme " . colors_name

"}}}
" GUI And Cterm Palettes:"{{{
" ----------------------------------------------------------------------------
" if has("gui_running") || ($NVIM_TUI_ENABLE_TRUE_COLOR && has("nvim"))
  let s:vmode      = "gui"
  let s:background = "#101010"
  let s:foreground = "#c5c8c6"
  " let s:foreground = "#b3b5b4"
  let s:selection  = "#343941"
  let s:line       = "#282a2e"
  let s:comment    = "#707880"
  let s:red        = "#cc6666"
  let s:orange     = "#de935f"
  let s:yellow     = "#f0c674"
  let s:green      = "#a0a85c"
  let s:aqua       = "#8abeb7"
  let s:blue       = "#81a2be"
  let s:purple     = "#b294bb"
  let s:window     = "#303030"
  let s:darkcolumn = "#1c1c1c"
  let s:addbg      = "#5F875F"
  let s:addfg      = "#d7ffaf"
  let s:changebg   = "#5F5F87"
  let s:changefg   = "#d7d7ff"
  let s:darkblue   = "#00005f"
  let s:darkcyan   = "#005f5f"
  let s:darkred    = "#5f0000"
  let s:darkpurple = "#5f005f"
  let s:gray       = "#585858"
  " let s:cyan       = "#81a2be"
  let s:cyan       = "#92a7b9"

" else
"   let s:vmode      = "cterm"
"   let s:background = "234"
"   let s:window     = "236"
"   let s:darkcolumn = "234"
"   let s:addbg      = "65"
"   let s:addfg      = "193"
"   let s:changebg   = "60"
"   let s:changefg   = "189"
"   let s:darkblue   = "17"
"   let s:darkcyan   = "24"
"   let s:darkred    = "52"
"   let s:darkpurple = "53"
"   if g:hybrid_use_Xresources == 1
"     let s:foreground = "15"   " White
"     let s:selection  = "8"    " DarkGrey
"     let s:line       = "0"    " Black
"     let s:comment    = "7"    " LightGrey
"     let s:red        = "9"    " LightRed
"     let s:orange     = "3"    " DarkYellow
"     let s:yellow     = "11"   " LightYellow
"     let s:green      = "10"   " LightGreen
"     let s:aqua       = "14"   " LightCyan
"     let s:blue       = "12"   " LightBlue
"     let s:purple     = "13"   " LightMagenta
"   elseif g:hybrid_use_iTerm_colors == 1
"     let s:background = "8"
"     let s:foreground = "15"
"     let s:selection  = "13"
"     let s:line       = "0"
"     let s:comment    = "7"
"     let s:red        = "1"
"     let s:orange     = "9"
"     let s:yellow     = "3"
"     let s:green      = "2"
"     let s:aqua       = "6"
"     let s:blue       = "4"
"     let s:purple     = "5"
"     let s:darkcolumn = "11"
"     let s:addbg      = "10"
"     let s:changebg   = "12"
"   else
"     let s:foreground = "250"
"     let s:selection  = "237"
"     let s:line       = "235"
"     let s:comment    = "243"
"     let s:red        = "167"
"     let s:orange     = "173"
"     let s:yellow     = "221"
"     let s:green      = "143"
"     let s:aqua       = "109"
"     let s:blue       = "110"
"     let s:purple     = "139"
"   endif
" endif

"}}}
" Formatting Options:"{{{
" ----------------------------------------------------------------------------
let s:none   = "NONE"
let s:t_none = "NONE"
let s:n      = "NONE"
let s:c      = ",undercurl"
let s:r      = ",reverse"
let s:s      = ",standout"
let s:b      = ",bold"
let s:u      = ",underline"
let s:i      = ",italic"

"}}}
" Highlighting Primitives:"{{{
" ----------------------------------------------------------------------------
exe "let s:bg_none       = ' ".s:vmode."bg=".s:none      ."'"
exe "let s:bg_foreground = ' ".s:vmode."bg=".s:foreground."'"
exe "let s:bg_background = ' ".s:vmode."bg=".s:background."'"
exe "let s:bg_selection  = ' ".s:vmode."bg=".s:selection ."'"
exe "let s:bg_line       = ' ".s:vmode."bg=".s:line      ."'"
exe "let s:bg_comment    = ' ".s:vmode."bg=".s:comment   ."'"
exe "let s:bg_red        = ' ".s:vmode."bg=".s:red       ."'"
exe "let s:bg_orange     = ' ".s:vmode."bg=".s:orange    ."'"
exe "let s:bg_yellow     = ' ".s:vmode."bg=".s:yellow    ."'"
exe "let s:bg_green      = ' ".s:vmode."bg=".s:green     ."'"
exe "let s:bg_aqua       = ' ".s:vmode."bg=".s:aqua      ."'"
exe "let s:bg_blue       = ' ".s:vmode."bg=".s:blue      ."'"
exe "let s:bg_purple     = ' ".s:vmode."bg=".s:purple    ."'"
exe "let s:bg_window     = ' ".s:vmode."bg=".s:window    ."'"
exe "let s:bg_darkcolumn = ' ".s:vmode."bg=".s:darkcolumn."'"
exe "let s:bg_addbg      = ' ".s:vmode."bg=".s:addbg     ."'"
exe "let s:bg_addfg      = ' ".s:vmode."bg=".s:addfg     ."'"
exe "let s:bg_changebg   = ' ".s:vmode."bg=".s:changebg  ."'"
exe "let s:bg_changefg   = ' ".s:vmode."bg=".s:changefg  ."'"
exe "let s:bg_darkblue   = ' ".s:vmode."bg=".s:darkblue  ."'"
exe "let s:bg_darkcyan   = ' ".s:vmode."bg=".s:darkcyan  ."'"
exe "let s:bg_darkred    = ' ".s:vmode."bg=".s:darkred   ."'"
exe "let s:bg_darkpurple = ' ".s:vmode."bg=".s:darkpurple."'"
exe "let s:bg_gray       = ' ".s:vmode."bg=".s:gray      ."'"
exe "let s:bg_cyan       = ' ".s:vmode."bg=".s:cyan      ."'"

exe "let s:fg_none       = ' ".s:vmode."fg=".s:none      ."'"
exe "let s:fg_foreground = ' ".s:vmode."fg=".s:foreground."'"
exe "let s:fg_background = ' ".s:vmode."fg=".s:background."'"
exe "let s:fg_selection  = ' ".s:vmode."fg=".s:selection ."'"
exe "let s:fg_line       = ' ".s:vmode."fg=".s:line      ."'"
exe "let s:fg_comment    = ' ".s:vmode."fg=".s:comment   ."'"
exe "let s:fg_red        = ' ".s:vmode."fg=".s:red       ."'"
exe "let s:fg_orange     = ' ".s:vmode."fg=".s:orange    ."'"
exe "let s:fg_yellow     = ' ".s:vmode."fg=".s:yellow    ."'"
exe "let s:fg_green      = ' ".s:vmode."fg=".s:green     ."'"
exe "let s:fg_aqua       = ' ".s:vmode."fg=".s:aqua      ."'"
exe "let s:fg_blue       = ' ".s:vmode."fg=".s:blue      ."'"
exe "let s:fg_purple     = ' ".s:vmode."fg=".s:purple    ."'"
exe "let s:fg_window     = ' ".s:vmode."fg=".s:window    ."'"
exe "let s:fg_darkcolumn = ' ".s:vmode."fg=".s:darkcolumn."'"
exe "let s:fg_addbg      = ' ".s:vmode."fg=".s:addbg     ."'"
exe "let s:fg_addfg      = ' ".s:vmode."fg=".s:addfg     ."'"
exe "let s:fg_changebg   = ' ".s:vmode."fg=".s:changebg  ."'"
exe "let s:fg_changefg   = ' ".s:vmode."fg=".s:changefg  ."'"
exe "let s:fg_darkblue   = ' ".s:vmode."fg=".s:darkblue  ."'"
exe "let s:fg_darkcyan   = ' ".s:vmode."fg=".s:darkcyan  ."'"
exe "let s:fg_darkred    = ' ".s:vmode."fg=".s:darkred   ."'"
exe "let s:fg_darkpurple = ' ".s:vmode."fg=".s:darkpurple."'"
exe "let s:fg_gray       = ' ".s:vmode."fg=".s:gray      ."'"
exe "let s:fg_cyan       = ' ".s:vmode."fg=".s:cyan      ."'"

exe "let s:fmt_none      = ' ".s:vmode."=NONE".          " term=NONE"        ."'"
exe "let s:fmt_bold      = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_bldi      = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_undr      = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_undb      = ' ".s:vmode."=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
exe "let s:fmt_undi      = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_curl      = ' ".s:vmode."=NONE".s:c.      " term=NONE".s:c    ."'"
exe "let s:fmt_ital      = ' ".s:vmode."=NONE".s:i.      " term=NONE".s:i    ."'"
exe "let s:fmt_stnd      = ' ".s:vmode."=NONE".s:s.      " term=NONE".s:s    ."'"
exe "let s:fmt_revr      = ' ".s:vmode."=NONE".s:r.      " term=NONE".s:r    ."'"
exe "let s:fmt_revb      = ' ".s:vmode."=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"

if has("gui_running")
  exe "let s:sp_none       = ' guisp=".s:none      ."'"
  exe "let s:sp_foreground = ' guisp=".s:foreground."'"
  exe "let s:sp_background = ' guisp=".s:background."'"
  exe "let s:sp_selection  = ' guisp=".s:selection ."'"
  exe "let s:sp_line       = ' guisp=".s:line      ."'"
  exe "let s:sp_comment    = ' guisp=".s:comment   ."'"
  exe "let s:sp_red        = ' guisp=".s:red       ."'"
  exe "let s:sp_orange     = ' guisp=".s:orange    ."'"
  exe "let s:sp_yellow     = ' guisp=".s:yellow    ."'"
  exe "let s:sp_green      = ' guisp=".s:green     ."'"
  exe "let s:sp_aqua       = ' guisp=".s:aqua      ."'"
  exe "let s:sp_blue       = ' guisp=".s:blue      ."'"
  exe "let s:sp_purple     = ' guisp=".s:purple    ."'"
  exe "let s:sp_window     = ' guisp=".s:window    ."'"
  exe "let s:sp_addbg      = ' guisp=".s:addbg     ."'"
  exe "let s:sp_addfg      = ' guisp=".s:addfg     ."'"
  exe "let s:sp_changebg   = ' guisp=".s:changebg  ."'"
  exe "let s:sp_changefg   = ' guisp=".s:changefg  ."'"
  exe "let s:sp_darkblue   = ' guisp=".s:darkblue  ."'"
  exe "let s:sp_darkcyan   = ' guisp=".s:darkcyan  ."'"
  exe "let s:sp_darkred    = ' guisp=".s:darkred   ."'"
  exe "let s:sp_darkpurple = ' guisp=".s:darkpurple."'"
else
  let s:sp_none       = ""
  let s:sp_foreground = ""
  let s:sp_background = ""
  let s:sp_selection  = ""
  let s:sp_line       = ""
  let s:sp_comment    = ""
  let s:sp_red        = ""
  let s:sp_orange     = ""
  let s:sp_yellow     = ""
  let s:sp_green      = ""
  let s:sp_aqua       = ""
  let s:sp_blue       = ""
  let s:sp_purple     = ""
  let s:sp_window     = ""
  let s:sp_addbg      = ""
  let s:sp_addfg      = ""
  let s:sp_changebg   = ""
  let s:sp_changefg   = ""
  let s:sp_darkblue   = ""
  let s:sp_darkcyan   = ""
  let s:sp_darkred    = ""
  let s:sp_darkpurple = ""
endif

" Set bold font depending on options
if g:enable_bold_font == 1
    let s:fg_bold = s:fmt_bold
else
    let s:fg_bold = s:fmt_none
endif

"}}}

" Vim Highlighting: (see :help highlight-groups)"{{{
" ColorColumn
" Conceal
" Cursor
" CursorIM
" CursorColumn
" CursorLine
" Directory
" DiffAdd
" DiffChange
" DiffDelete
" DiffText
" EndOfBuffer
" TermCursor
" TermCursorNC
" ErrorMsg
" VertSplit
" Folded
" FoldColumn
" SignColumn
" IncSearch
" LineNr
" CursorLineNr
" MatchParen
" ModeMsg
" MoreMsg
" NonText
" Normal
" Pmenu
" PmenuSel
" PmenuSbar
" PmenuThumb
" Question
" Search
" SpecialKey
" SpellBad
" SpellCap
" SpellLocal
" SpellRare
" StatusLine
" StatusLineNC
" TabLine
" TabLineFill
" TabLineSel
" Title
" Visual
" VisualNOS
" WarningMsg
" WildMenu

" GUI only
" Menu
" Scrollbar
" Tooltip
" ----------------------------------------------------------------------------
exe "hi! ColorColumn"   .s:fg_none        .s:bg_line        .s:fmt_none
" exe "hi! Conceal"       .s:fg_none        .s:bg_line        .s:fmt_none
" exe "hi! Cursor"        .s:fg_none        .s:bg_red        .s:fmt_none
" exe "hi! lCursor"        .s:fg_none        .s:bg_red        .s:fmt_none
" exe "hi! CursorIM"      .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! CursorColumn"  .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! CursorLine"    .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! Directory"     .s:fg_blue        .s:bg_none        .s:fmt_none
exe "hi! DiffAdd"       .s:fg_addfg       .s:bg_addbg       .s:fmt_none
exe "hi! DiffChange"    .s:fg_changefg    .s:bg_changebg    .s:fmt_none
exe "hi! DiffDelete"    .s:fg_background  .s:bg_red         .s:fmt_none
exe "hi! DiffText"      .s:fg_background  .s:bg_blue        .s:fmt_none
" exe "hi! EndOfBuffer"   .s:fg_background  .s:bg_blue        .s:fmt_none
" exe "hi! TermCursor"    .s:fg_background  .s:bg_blue        .s:fmt_none
" exe "hi! TermCursorNC"  .s:fg_background  .s:bg_blue        .s:fmt_none
exe "hi! ErrorMsg"      .s:fg_background  .s:bg_red         .s:fmt_stnd
exe "hi! VertSplit"     .s:fg_window      .s:bg_none        .s:fmt_none
exe "hi! Folded"        .s:fg_comment     .s:bg_darkcolumn  .s:fmt_none
exe "hi! FoldColumn"    .s:fg_none        .s:bg_darkcolumn  .s:fmt_none
exe "hi! SignColumn"    .s:fg_none        .s:bg_darkcolumn  .s:fmt_none
" exe "hi! Incsearch"     .s:fg_none        .s:bg_darkcolumn  .s:fmt_none
exe "hi! LineNr"        .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! CursorLineNr"  .s:fg_yellow      .s:bg_none        .s:fmt_bold
exe "hi! MatchParen"    .s:fg_background  .s:bg_changebg    .s:fmt_none
exe "hi! ModeMsg"       .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! MoreMsg"       .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! NonText"       .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! Normal"        .s:fg_foreground  .s:bg_none        .s:fmt_none
exe "hi! Pmenu"         .s:fg_foreground  .s:bg_selection   .s:fmt_none
exe "hi! PmenuSel"      .s:fg_foreground  .s:bg_selection   .s:fmt_revr
exe "hi! PmenuSbar"     .s:fg_background  .s:bg_gray        .s:fmt_none
" exe "hi! PmenuThumb"    .s:fg_foreground  .s:bg_selection   .s:fmt_none
exe "hi! Question"      .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! Search"        .s:fg_none        .s:bg_selection   .s:fmt_none
exe "hi! SpecialKey"    .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! SpellBad"      .s:fg_red         .s:bg_darkred     .s:fmt_undr
exe "hi! SpellCap"      .s:fg_blue        .s:bg_darkblue    .s:fmt_undr
exe "hi! SpellLocal"    .s:fg_aqua        .s:bg_darkcyan    .s:fmt_undr
exe "hi! SpellRare"     .s:fg_purple      .s:bg_darkpurple  .s:fmt_undr
exe "hi! StatusLine"    .s:fg_comment     .s:bg_background  .s:fmt_revr
exe "hi! StatusLineNC"  .s:fg_window      .s:bg_comment     .s:fmt_revr
exe "hi! TabLine"       .s:fg_foreground  .s:bg_line        .s:fmt_none
exe "hi! TabLineFill"   .s:fg_line        .s:bg_window      .s:fmt_none
exe "hi! TabLineSel"    .s:fg_foreground  .s:bg_gray        .s:fmt_none
exe "hi! Title"         .s:fg_yellow      .s:bg_none        .s:fmt_none
exe "hi! Visual"        .s:fg_none        .s:bg_selection   .s:fmt_none
exe "hi! VisualNos"     .s:fg_none        .s:bg_selection   .s:fmt_none
exe "hi! WarningMsg"    .s:fg_red         .s:bg_none        .s:fmt_none
exe "hi! WildMenu"      .s:fg_red         .s:bg_none        .s:fmt_none

"}}}
" Generic Syntax Highlighting: (see :help group-name)"{{{
" ----------------------------------------------------------------------------
exe "hi! Comment"         .s:fg_comment     .s:bg_none        .s:fmt_none

exe "hi! Constant"        .s:fg_purple      .s:bg_none        .s:fmt_none
exe "hi! String"          .s:fg_green       .s:bg_none        .s:fmt_none
"		Character"
"		Number"
"		Boolean"
"		Float"

exe "hi! Identifier"      .s:fg_red         .s:bg_none        .s:fmt_none
exe "hi! Function"        .s:fg_yellow      .s:bg_none        .s:fg_bold

exe "hi! Statement"       .s:fg_blue        .s:bg_none        .s:fg_bold
"		Conditional"
"		Repeat"
"		Label"
exe "hi! Operator"        .s:fg_aqua        .s:bg_none        .s:fmt_none
"		Keyword"
"		Exception"

exe "hi! PreProc"         .s:fg_aqua        .s:bg_none        .s:fg_bold
"		Include"
"		Define"
"		Macro"
"		PreCondit"

exe "hi! Type"            .s:fg_orange      .s:bg_none        .s:fg_bold
"		StorageClass"
exe "hi! Structure"       .s:fg_aqua        .s:bg_none        .s:fmt_none
"		Typedef"

exe "hi! Special"         .s:fg_green       .s:bg_none        .s:fmt_none
"		SpecialChar"
"		Tag"
"		Delimiter"
"		SpecialComment"
"		Debug"
"
exe "hi! Underlined"      .s:fg_blue        .s:bg_none        .s:fmt_none

exe "hi! Ignore"          .s:fg_none        .s:bg_none        .s:fmt_none

exe "hi! Error"           .s:fg_purple      .s:bg_darkred     .s:fmt_undr

exe "hi! Todo"            .s:fg_addfg       .s:bg_none        .s:fg_bold

" Quickfix window highlighting
exe "hi! qfLineNr"        .s:fg_yellow      .s:bg_none        .s:fmt_none
"   qfFileName"
"   qfLineNr"
"   qfError"

"}}}
" Diff Syntax Highlighting:"{{{
" ----------------------------------------------------------------------------
" Diff
"		diffOldFile
"		diffNewFile
"		diffFile
"		diffOnly
"		diffIdentical
"		diffDiffer
"		diffBDiffer
"		diffIsA
"		diffNoEOL
"		diffCommon
hi! link diffRemoved Constant
"		diffChanged
hi! link diffAdded Special
"		diffLine
"		diffSubname
"		diffComment

"}}}
" Legal:"{{{
" ----------------------------------------------------------------------------
" Copyright (c) 2011 Ethan Schoonover
" Copyright (c) 2009-2012 NanoTech
" Copyright (c) 2012 w0ng
"
" Permission is hereby granted, free of charge, to any per‐
" son obtaining a copy of this software and associated doc‐
" umentation files (the “Software”), to deal in the Soft‐
" ware without restriction, including without limitation
" the rights to use, copy, modify, merge, publish, distrib‐
" ute, sublicense, and/or sell copies of the Software, and
" to permit persons to whom the Software is furnished to do
" so, subject to the following conditions:
"
" The above copyright notice and this permission notice
" shall be included in all copies or substantial portions
" of the Software.
"
" THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY
" KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
" THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICU‐
" LAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
" DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CON‐
" TRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CON‐
" NECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

" }}}
