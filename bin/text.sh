#!/bin/bash
# 
# Dzen2 App Launcher script box version by Rasmus Edgar.
# -tw = Width of titlebar, -w = Width of slavewindow,
# -l = length of slavewindow. Remember to adjust -l accordingly when adding 
# apps. ^pa(*) is for text/decoration alignment.
# 
#
#
# Menu script starts below.   
#
# Needed Applications:

AP1=firefox3
AP2=gimp
AP3=consonance
AP4=leafpad
AP5=pcmanfm
SM1=submenu

# Get cursor position:

XP=200
YP=50

# Decorations for the menu:

DC1=1x17
DC2=3x2
DC3=4x2
DC4=3x1
DC5=123x10
DC6=125x17

# Font:

FONT="-*-dina-medium-r-*-*-15-*-*-*-*-*-iso8859-1"

# Menu Title

TI="Dzen Menu"

# Colors:

FG1=#9ab8c2
FG2=#f57900
FG3=#D9A509
BG1=#43464f

# Icons:

IC1=~/dzen_bitmaps/xbm8x8/fox.xbm
IC2=~/dzen_bitmaps/xbm8x8/gimp.xbm
IC3=~/dzen_bitmaps/xbm8x8/note.xbm
IC4=~/dzen_bitmaps/xbm8x8/leaf.xbm
IC5=~/dzen_bitmaps/xbm8x8/pcman.xbm
SMI=~/dzen_bitmaps/xbm8x8/arrow.xbm

# Text piped to Dzen2

(echo "^ro(${DC6})^ib(1)^pa(30)$TI" ;echo -e "^fg(${FG1})\
\n^r(${DC1})^r(${DC2})^r(${DC3}) ^fg(${FG3})^i(${IC1})^fg(${FG1}) ${AP1} ^pa(117)^r(${DC3})^r(${DC2})^r(${DC1})\
\n^r(${DC1})^r(${DC2})^r(${DC3}) ^fg(${FG3})^i(${IC2})^fg(${FG1}) ${AP2} ^pa(117)^r(${DC3})^r(${DC2})^r(${DC1})\
\n^r(${DC1})^r(${DC2})^r(${DC3}) ^fg(${FG3})^i(${IC3})^fg(${FG1}) ${AP3} ^pa(117)^r(${DC3})^r(${DC2})^r(${DC1})\
\n^r(${DC1})^r(${DC2})^r(${DC3}) ^fg(${FG3})^i(${IC4})^fg(${FG1}) ${AP4} ^pa(117)^r(${DC3})^r(${DC2})^r(${DC1})\
\n^r(${DC1})^r(${DC2})^r(${DC3}) ^fg(${FG3})^i(${IC5})^fg(${FG1}) ${AP5} ^pa(117)^r(${DC3})^r(${DC2})^r(${DC1})\
\n^r(${DC1})^r(${DC2})^r(${DC3}) ^fg(${FG3})^i(${SMI})^fg(${FG1}) ${SM1} ^pa(117)^r(${DC3})^r(${DC2})^r(${DC1})\
\n^ro(${DC6})^ib(1)^pa(2)ver. 0.1")\
| (dzen2 -y "$YP" -x "$XP" -fn "$FONT" -bg "$BG1" -fg "$FG1" -l 7 -tw 125 -ta l -w 125 -m -p -e 'onstart=uncollapse;button1=menuexec;leaveslave=exit;button3=exit')
