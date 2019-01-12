#include <Misc.au3>
Global $dll = DllOpen("user32.dll")
Global $SettingsFile = @SCRIPTDIR & '\Settings.ini'

    MsgBox("Settings","Settings", "A kattintási helyek beállítása")
    Sleep(100)
    Call("Xpos")
    Sleep(100)
    Call("Xpos2")
    Sleep(100)
    Call("Ypos")
    Sleep(100)
    Call("Ypos2")
    Sleep(100)
    Exit

Func Xpos()
    SplashTextOn("xpos", "Kattints a legszélső pontra bal oldalt", -1, 100, -1, -1, 0, "verdana", 18, 450)
    While _IsPressed("02", $dll) =0 ;Will continue to loop if button isn't pressed
        sleep(50)
    WEnd
        While _IsPressed("02", $dll) ;Will continue to loop when button is pressed.
        sleep(50)
    WEnd
    $pos = MouseGetPos()  ;Gets mouse position once button is released
    splashOff()
    iniWrite ( $SettingsFile, 'Poss', 'xpos1', $pos[0] )
EndFunc

Func Ypos()
    SplashTextOn("ypos", "Kattints a legszélső pontra jobb oldalt", -1, 100, -1, -1, 0, "verdana", 18, 450)
    While _IsPressed("01", $dll) =0
        sleep(50)
    WEnd
        While _IsPressed("01", $dll)
        sleep(50)
    WEnd
        $pos = MouseGetPos()
        SplashOff()

    iniWrite ( $SettingsFile, 'Poss', 'ypos1', $pos[1] )
EndFunc

Func Xpos2()
    SplashTextOn("xpos2", "Kattints a legszélső pontra felül", -1, 100, -1, -1, 0, "verdana", 18, 450)
        While _IsPressed("01", $dll) =0
        sleep(50)
    WEnd
        While _IsPressed("01", $dll)
        sleep(50)
    WEnd
        $pos = MouseGetPos()
        SplashOff()
     iniWrite ( $SettingsFile, 'Poss', 'xpos2', $pos[0] )
EndFunc

Func Ypos2()
    SplashTextOn("ypos2", "Kattints a legszélső pontra alul", -1, 100, -1, -1, 0, "verdana", 18, 450)
            While _IsPressed("01", $dll) =0
        sleep(50)
    WEnd
        While _IsPressed("01", $dll)
        sleep(50)
    WEnd
        $pos = MouseGetPos()
        SplashOff()

    iniWrite ( $SettingsFile, 'Poss', 'ypos2', $pos[1] )
EndFunc