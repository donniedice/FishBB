#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here





#include <MsgBoxConstants.au3>
;==========
local $A = 0
local $b=200
;==========

Main()

;==========
Func Main()
Do
   WinActivate ( "World of Warcraft" )
Opt("PixelCoordMode", 1)
	  Sleep	( 2000 )
	  Send	("{HOME}")
	  Sleep ( 2000 )

   cast()

   Until $A = $b
EndFunc


Func cast()
   sleep(8000)
   Send("1")
   $A=$A+1
   Scan()
EndFunc

func catch()
   Sleep(3500)
$pos=PixelSearch(1894, 476, 2689, 488, 0xFF3E10, 2000)
   switch $pos
   Case @error
	  Scan()
   Case True
	  MouseClick("right", , ,1,10)
	  cast()
   EndSwitch
   EndFunc


Func Scan()
Do
   catch()
Until $A=$b
EndFunc


