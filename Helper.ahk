#SingleInstance, Force
#NoTrayIcon
#NoEnv
SetWorkingDir %A_ScriptDir%
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0

SplashTextoff
ListLines Off
Process, Priority, , A
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
reloadStatus = 0
DayANS = 0
WeekANS = 0
FormatTime, CurrentDate,, ddMM
IniRead, Week, Settings.ini, ANS, Week
IniRead, CurrentDateT, Settings.ini, ANS, CurrentDateT
if CurrentDateT=%CurrentDate%
{
IniRead, CurrentDateT, Settings.ini, ANS, CurrentDateT
IniRead, DayANS, Settings.ini, ANS, DayANS
}
else
{
    IniWrite, %CurrentDate%, Settings.ini, ANS, CurrentDateT
    IniWrite, %DayANS%, Settings.ini, ANS, DayANS
    IniRead, DayANS, Settings.ini, ANS, DayANS
    IniRead, CurrentDateT, Settings.ini, ANS, CurrentDateT
}
if Week=%A_YWeek%
{
IniRead, Week, Settings.ini, ANS, Week
IniRead, WeekANS, Settings.ini, ANS, WeekANS
}
else
{
    IniWrite, %A_YWeek%, Settings.ini, ANS, Week
    IniWrite, %WeekANS%, Settings.ini, ANS, WeekANS
    IniRead, WeekANS, Settings.ini, ANS, WeekANS
    IniRead, Week, Settings.ini, ANS, Week
}
IniRead, Radio1, Settings.ini, Settings, 1920x1080
IniRead, Radio2, Settings.ini, Settings, 2554x1411
IniRead, Radio3, Settings.ini, Settings, Male
IniRead, Radio4, Settings.ini, Settings, Female
IniRead, Radio7, Settings.ini, Settings, 1600x900
IniRead, Radio5, Settings.ini, Settings, 1440x900
IniRead, Radio6, Settings.ini, Settings, 1680x1050
IniRead, Radio13, Settings.ini, Settings, 1366x768
IniRead, Radio22, Settings.ini, Settings, 1366x7682
IniRead, Radio14, Settings.ini, Settings, 1280x960
;IniRead, Radio15, Settings.ini, Settings, 2560х1440
IniRead, Radio16, Settings.ini, Settings, 2560х1440
IniRead, Radio19, Settings.ini, Settings, 1920x10802
IniRead, Radio20, Settings.ini, Settings, 1280х1024
IniRead, Radio8, Settings.ini, Settings, /togglesnow 0
IniRead, Radio9, Settings.ini, Settings, /clear
IniRead, Radio10, Settings.ini, Settings, /dl
IniRead, Radio11, Settings.ini, Settings, /esp
IniRead, Radio12, Settings.ini, Settings, /templeader
IniRead, Radio18, Settings.ini, Settings, /chide
IniRead, Radio21, Settings.ini, Settings, /zzdebug
IniRead, key1, Settings.ini, KeySetup, KEY1
IniRead, key2, Settings.ini, KeySetup, KEY2
IniRead, key3, Settings.ini, KeySetup, KEY3
IniRead, key4, Settings.ini, KeySetup, KEY4
IniRead, key5, Settings.ini, KeySetup, KEY5
IniRead, key6, Settings.ini, KeySetup, KEY6
IniRead, key7, Settings.ini, KeySetup, KEY7
IniRead, key8, Settings.ini, KeySetup, KEY8
IniRead, key9, Settings.ini, KeySetup, KEY9
IniRead, key10, Settings.ini, KeySetup, KEY10
IniRead, key11, Settings.ini, KeySetup, KEY11
IniRead, key12, Settings.ini, KeySetup, KEY12
IniRead, key13, Settings.ini, KeySetup, KEY13
IniRead, key14, Settings.ini, KeySetup, KEY14
IniRead, key15, Settings.ini, KeySetup, KEY15
IniRead, key16, Settings.ini, KeySetup, KEY16
IniRead, key17, Settings.ini, KeySetup, KEY17
IniRead, key18, Settings.ini, KeySetup, KEY18
IniRead, key19, Settings.ini, KeySetup, KEY19
IniRead, key20, Settings.ini, KeySetup, KEY20
IniRead, qdis, Settings.ini, Discord, qdis
IniRead, qtag, Settings.ini, Discord, qtag
IniRead, gadis, Settings.ini, Discord, gadis
IniRead, gatag, Settings.ini, Discord, gatag
IniRead, zgadis, Settings.ini, Discord, zgadis
IniRead, zgatag, Settings.ini, Discord, zgatag
if qdis=ERROR
{
IniWrite, FILANT, Settings.ini, Discord, qdis
IniWrite, 0900, Settings.ini, Discord, qtag
IniWrite, yerka, Settings.ini, Discord, gadis
IniWrite, 6666, Settings.ini, Discord, gatag
IniWrite, StickyEwoks, Settings.ini, Discord, zgadis
IniWrite, 1337, Settings.ini, Discord, zgatag
reload
}
IniRead, qX, Settings.ini, Coords, qX
IniRead, qY, Settings.ini, Coords, qY
if qX=ERROR
{
IniWrite, 0, Settings.ini, Coords, qX
IniWrite, 0, Settings.ini, Coords, qY
reload
}
Hotkey, %KEY1%, Off, UseErrorLevel
Hotkey, %KEY1%, Reports, On, UseErrorLevel
Hotkey, %KEY2%, Off, UseErrorLevel
Hotkey, %KEY2%, delv, On, UseErrorLevel
Hotkey, %KEY3%, Off, UseErrorLevel
Hotkey, %KEY3%, gm, On, UseErrorLevel
Hotkey, %KEY4%, Off, UseErrorLevel
Hotkey, %KEY4%, tp, On, UseErrorLevel
Hotkey, %KEY5%, Off, UseErrorLevel
Hotkey, %KEY5%, fastrep, On, UseErrorLevel
Hotkey, %KEY6%, Off, UseErrorLevel
Hotkey, %KEY6%, fastans, On, UseErrorLevel
Hotkey, %KEY7%, Off, UseErrorLevel
Hotkey, %KEY7%, dl, On, UseErrorLevel
Hotkey, %KEY8%, Off, UseErrorLevel
Hotkey, %KEY8%, mtp, On, UseErrorLevel
Hotkey, %KEY9%, Off, UseErrorLevel
Hotkey, %KEY9%, gcar, On, UseErrorLevel
Hotkey, %KEY10%, Off, UseErrorLevel
Hotkey, %KEY10%, rep, On, UseErrorLevel
Hotkey, %KEY11%, vhod, On, UseErrorLevel
Hotkey, %KEY12%, resc, On, UseErrorLevel
Hotkey, %KEY13%, PunishmentHandler, On, UseErrorLevel
Hotkey, %KEY14%, memo, On, UseErrorLevel
Hotkey, %KEY15%, gh, On, UseErrorLevel
Hotkey, %KEY16%, chide, On, UseErrorLevel
Hotkey, %KEY17%, zzdebug, On, UseErrorLevel
Hotkey, %KEY18%, esp, On, UseErrorLevel
Hotkey, %KEY19%, killplayer, On, UseErrorLevel
Hotkey, %KEY20%, vetir, On, UseErrorLevel

;Общая инфа, версия, картинки, цвета окна
Gui, 2: -MaximizeBox
Gui, 2: Show, w900 h620, Majestic RP Helper
Gui, 2: Color, 0x36393F  ; Discord dark theme background
Gui, 2: Font, s10 c0xFFFFFF, Segoe UI  ; Discord-like font and color

; Left sidebar background
Gui, 2: Add, Progress, x0 y0 w130 h620 Background0x2F3136,  ; Discord sidebar color

; Main content area background
Gui, 2: Add, Progress, x130 y0 w770 h620 Background0x36393F,  ; Discord main area color

; Left sidebar buttons with Discord style
Gui, 2: Add, Button, x10 y10 w110 h36 gПомощь Background0x2F3136 c0xFFFFFF, Помощь
Gui, 2: Add, Button, x10 y50 w110 h36 gТелепорты Background0x2F3136 c0xFFFFFF, Телепорты
Gui, 2: Add, Button, x10 y90 w110 h36 gКоманды Background0x2F3136 c0xFFFFFF, Команды
Gui, 2: Add, Button, x10 y130 w110 h36 gСкилы Background0x2F3136 c0xFFFFFF, Скилы
Gui, 2: Add, Button, x10 y170 w110 h36 gИнфо Background0x2F3136 c0xFFFFFF, Инфо
Gui, 2: Add, Button, x10 y520 w110 h36 gSaveData Background0x2F3136 c0xFFFFFF, Сохранить
Gui, 2: Add, Button, x10 y560 w110 h50 gcoord Background0x2F3136 c0xFFFFFF, Изменить расположение счетчика

; Right block buttons with Discord style
Gui, 2: Add, Button, x600 y50 w285 h37 gdiscord Background0x5865F2 c0xFFFFFF, Ваш дискорд
Gui, 2: Add, Button, x600 y95 w285 h37 gdiscordga Background0x5865F2 c0xFFFFFF, Дискорд ГА
Gui, 2: Add, Button, x600 y140 w285 h37 gdiscordzga Background0x5865F2 c0xFFFFFF, Дискорд зГА

; Hotkeys section with Discord style
Gui, 2: Add, Text, x184 y14 w120 h23 +0x200 +Border +0x1 c0xFFFFFF, Горячие клавиши

; Hotkey inputs with Discord style
Gui, 2: Add, Hotkey, x156 y50 w48 h21 vHot1 Background0x40444B c0xFFFFFF, %KEY1%
Gui, 2: Add, Hotkey, x156 y80 w48 h21 vHot2 Background0x40444B c0xFFFFFF, %KEY2%
Gui, 2: Add, Hotkey, x156 y110 w48 h21 vHot3 Background0x40444B c0xFFFFFF, %KEY3%
Gui, 2: Add, Hotkey, x156 y140 w48 h21 vHot4 Background0x40444B c0xFFFFFF, %KEY4%
Gui, 2: Add, Hotkey, x156 y170 w48 h21 vHot5 Background0x40444B c0xFFFFFF, %KEY5%
Gui, 2: Add, Hotkey, x156 y200 w48 h21 vHot6 Background0x40444B c0xFFFFFF, %KEY6%
Gui, 2: Add, Hotkey, x156 y230 w48 h21 vHot7 Background0x40444B c0xFFFFFF, %KEY7%
Gui, 2: Add, Hotkey, x156 y260 w48 h21 vHot8 Background0x40444B c0xFFFFFF, %KEY8%
Gui, 2: Add, Hotkey, x156 y290 w48 h21 vHot9 Background0x40444B c0xFFFFFF, %KEY9%
Gui, 2: Add, Hotkey, x156 y320 w48 h21 vHot10 Background0x40444B c0xFFFFFF, %KEY10%
Gui, 2: Add, Hotkey, x530 y324 w48 h21 vHot11 Background0x40444B c0xFFFFFF, %KEY11%
Gui, 2: Add, Hotkey, x156 y380 w48 h21 vHot12 Background0x40444B c0xFFFFFF, %KEY12%
Gui, 2: Add, Hotkey, x156 y440 w48 h21 vHot14 Background0x40444B c0xFFFFFF, %KEY14%
Gui, 2: Add, Hotkey, x156 y410 w48 h21 vHot15 Background0x40444B c0xFFFFFF, %KEY15%
Gui, 2: Add, Hotkey, x156 y500 w48 h21 vHot16 Background0x40444B c0xFFFFFF, %KEY16%
Gui, 2: Add, Hotkey, x156 y470 w48 h21 vHot13 Background0x40444B c0xFFFFFF, %KEY13%
Gui, 2: Add, Hotkey, x156 y530 w48 h21 vHot17 Background0x40444B c0xFFFFFF, %KEY17%
Gui, 2: Add, Hotkey, x156 y560 w48 h21 vHot18 Background0x40444B c0xFFFFFF, %KEY18%
Gui, 2: Add, Hotkey, x156 y350 w48 h21 vHot19 Background0x40444B c0xFFFFFF, %KEY19%
Gui, 2: Add, Hotkey, x156 y590 w48 h21 vHot20 Background0x40444B c0xFFFFFF, %KEY20%

; Labels with Discord style
Gui, 2: Add, Text, x213 y53 w120 h14 +0x200 c0xB9BBBE, Открыть репорты
Gui, 2: Add, Text, x213 y83 w120 h14 +0x200 c0xB9BBBE, Удалить транспорт
Gui, 2: Add, Text, x213 y113 w120 h14 +0x200 c0xB9BBBE, GM
Gui, 2: Add, Text, x213 y143 w120 h14 +0x200 c0xB9BBBE, ТП к игроку
Gui, 2: Add, Text, x213 y173 w120 h14 +0x200 c0xB9BBBE, Быстрый репорт
Gui, 2: Add, Text, x213 y203 w120 h14 +0x200 c0xB9BBBE, Быстрый ответ
Gui, 2: Add, Text, x213 y233 w120 h14 +0x200 c0xB9BBBE, Вкл/Выкл /dl
Gui, 2: Add, Text, x213 y263 w120 h14 +0x200 c0xB9BBBE, ТП на метку
Gui, 2: Add, Text, x213 y293 w120 h14 +0x200 c0xB9BBBE, ТП авто к себе
Gui, 2: Add, Text, x213 y323 w120 h14 +0x200 c0xB9BBBE, Добавить +1 репорт
Gui, 2: Add, Text, x213 y353 w120 h14 +0x200 c0xB9BBBE, Убить игрока
Gui, 2: Add, Text, x213 y383 w120 h14 +0x200 c0xB9BBBE, Воскресить игрока
Gui, 2: Add, Text, x213 y443 w120 h14 +0x200 c0xB9BBBE, Памятка
Gui, 2: Add, Text, x213 y413 w120 h14 +0x200 c0xB9BBBE, Телепорт игрока к себе
Gui, 2: Add, Text, x213 y473 w120 h14 +0x200 c0xB9BBBE, Выдача наказаний
Gui, 2: Add, Text, x213 y503 w120 h14 +0x200 c0xB9BBBE, Вкл/Выкл /chide
Gui, 2: Add, Text, x213 y533 w120 h14 +0x200 c0xB9BBBE, Вкл/Выкл /zzdebug
Gui, 2: Add, Text, x213 y563 w220 h14 +0x200 c0xB9BBBE, Вкл/Выкл ESP
Gui, 2: Add, Text, x213 y593 w220 h14 +0x200 c0xB9BBBE, /veh vetir
Gui, 2: Add, Text, x400 y14 w120 h23 +0x200 +Border +0x1 c0xFFFFFF, Настройки
Gui, 2: Add, Text, x400 y52 w120 h23 +0x200 +Border +0x1 c0xFFFFFF, Разрешение экрана
Gui, 2: Add, Radio, x360 y82 w120 h23 Group vRadio1 Checked%Radio1%, 1920x1080
Gui, 2: Add, Radio, x360 y112 w100 h23 vRadio7 Checked%Radio7%, 1600x900
Gui, 2: Add, Radio, x360 y142 w100 h23 vRadio2 Checked%Radio2%, 2554x1411
Gui, 2: Add, Radio, x360 y172 w100 h23 vRadio5 Checked%Radio5%, 1440x900
Gui, 2: Add, Radio, x490 y82 w100 h23 vRadio6 Checked%Radio6%, 1680x1050
Gui, 2: Add, Radio, x490 y112 w100 h23 vRadio13 Checked%Radio13%, 1366x768
Gui, 2: Add, Radio, x360 y232 w100 h23 vRadio22 Checked%Radio22%, 1366x768 | 5:3
Gui, 2: Add, Radio, x490 y142 w100 h23 vRadio14 Checked%Radio14%, 1280x960
;Gui, 2: Add, Radio, x490 y172 w100 h23 vRadio15 Checked%Radio15%, 2560х1440
Gui, 2: Add, Radio, x490 y172 w100 h23 vRadio16 Checked%Radio16%, 2560х1440
Gui, 2: Add, Radio, x490 y202 w100 h23 vRadio20 Checked%Radio20%, 1280x1024
Gui, 2: Add, Radio, x360 y202 w120 h23 vRadio19 Checked%Radio19%, 1920x1080 | 5:4
Gui, 2: Add, Text, x600 y14 w285 h23 +0x200 +Border +0x1 c0xFFFFFF, Персонализация
Gui, 2: Add, Text, x400 y262 w120 h23 +0x200 +Border +0x1 c0xFFFFFF, Ваш пол
Gui, 2: Add, Radio, x360 y292 w100 h23 Group vRadio3 Checked%Radio3%, Мужской пол
Gui, 2: Add, Radio, x490 y292 w100 h23 vRadio4 Checked%Radio4%, Женский пол
Gui, 2: Add, Text, x400 y322 w120 h23 +0x200 +Border +0x1 c0xFFFFFF, Команды при входе
Gui, 2: Add, CheckBox, x401 y350 w120 h23 vRadio8 Checked%Radio8%, /togglesnow 0
Gui, 2: Add, CheckBox, x401 y375 w120 h23 vRadio9 Checked%Radio9%, /clear
Gui, 2: Add, CheckBox, x401 y400 w120 h23 vRadio10 Checked%Radio10%, /dl
Gui, 2: Add, CheckBox, x401 y425 w120 h23 vRadio11 Checked%Radio11%, /esp
Gui, 2: Add, CheckBox, x401 y450 w180 h23 vRadio12 Checked%Radio12%, /templeader 4 (9k PayDay)
Gui, 2: Add, CheckBox, x401 y475 w120 h23 vRadio18 Checked%Radio18%, /chide
Gui, 2: Add, CheckBox, x401 y500 w120 h23 vRadio21 Checked%Radio21%, /zzdebug

WinSet_Click_Through(I, T="254") {
IfWinExist, % "ahk_id " I
{
If (T == "Off")
{
WinSet, AlwaysOnTop, Off, % "ahk_id " I
WinSet, Transparent, Off, % "ahk_id " I
WinSet, ExStyle, -0x20, % "ahk_id " I
}
Else
{
WinSet, AlwaysOnTop, On, % "ahk_id " I
If(T < 0 || T > 254 || T == "On")
T := 254
WinSet, Transparent, % T, % "ahk_id " I
WinSet, ExStyle, +0x20, % "ahk_id " I
}
}
Else
Return 0
}
Gui, +LastFound +ToolWindow
ID := WinExist()
Gui, Show, NoActivate, Hide x0 y0 w0 h0, Overlay
WinSet_Click_Through(ID, "On")
GuiControl,, Un-Clickable
CustomColor := "#00FF00"
Gui, +LastFound +AlwaysOnTop -Caption +ToolWindow
Gui, Color, cRed
Gui, Font,, Intro
Gui, Font, s10
Gui, Font, q1
Gui, Font, w400
Gui, Add, Text, vMyText cWhite, XXX, YYYY
Gui, Add, Text, vMyTotalR cWhite, XXXXXX, YYYYYY
Gui, Color, 1c2126
WinSet, TransColor, AAAAAA 155
GoSub, UpdateCounter1
Gui, Show, x%qX% y%qY% w100 h63, Overlay

; Файлы:
IfExist, %A_ScriptDir%\Updater.exe
{
Filedelete, %A_ScriptDir%\Updater.exe
}
IfNotExist, %A_ScriptDir%\Punishment.txt 
{
URLDownloadToFile, https://filant.ru/binder/bindedownloadr.php,%A_ScriptDir%\Punishment.txt
}
IfnotExist, %A_ScriptDir%\img
{
FileCreateDir, %A_ScriptDir%\img
}
; Filedelete, %A_ScriptDir%\img\logo1.png
; URLDownloadToFile, https://filant.ru/binder/logo1.png,%A_ScriptDir%\img\logo1.png
Filedelete, %A_ScriptDir%\img\logo2.png
URLDownloadToFile, https://filant.ru/binder/logo2.png,%A_ScriptDir%\img\logo2.png
FileDelete, %A_ScriptDir%\img\gen4ik2.jpg
URLDownloadToFile, https://i.ibb.co/CtVqK0J/gen4ik2.jpg,%A_ScriptDir%\img\gen4ik.jpg
Filedelete, %A_ScriptDir%\img\yerka2.png
URLDownloadToFile, https://filant.ru/binder/yerka2.png,%A_ScriptDir%\img\yerka2.png
Filedelete, %A_ScriptDir%\img\lenoxy.png
URLDownloadToFile, https://filant.ru/binder/lenoxy.png,%A_ScriptDir%\img\lenoxy.png
return
update:
MsgBox Обновление биндера.
Filedelete, %A_ScriptDir%\Helper.ahk
IfnotExist, %A_ScriptDir%\Helper.ahk
{
URLDownloadToFile, https://filant.ru/binder/binderloader.php,%A_ScriptDir%\Helper.ahk
Run,%A_ScriptDir%\Helper.ahk
return
}
return
update1:
return
SaveData:
Gui, Submit, NoHide
IniWrite, %Radio1%, Settings.ini, Settings, 1920x1080
IniWrite, %Radio7%, Settings.ini, Settings, 1600x900
IniWrite, %Radio5%, Settings.ini, Settings, 1440x900
IniWrite, %Radio6%, Settings.ini, Settings, 1680x1050
IniWrite, %Radio2%, Settings.ini, Settings, 2554x1411
IniWrite, %Radio13%, Settings.ini, Settings, 1366x768
IniWrite, %Radio22%, Settings.ini, Settings, 1366x7682
IniWrite, %Radio14%, Settings.ini, Settings, 1280x960
;IniWrite, %Radio15%, Settings.ini, Settings, 2560x1440
IniWrite, %Radio16%, Settings.ini, Settings, 2560х1440
IniWrite, %Radio19%, Settings.ini, Settings, 1920x10802
IniWrite, %Radio20%, Settings.ini, Settings, 1280х1024
IniWrite, %Radio3%, Settings.ini, Settings, Male
IniWrite, %Radio4%, Settings.ini, Settings, Female
IniWrite, %Radio8%, Settings.ini, Settings, /togglesnow 0
IniWrite, %Radio9%, Settings.ini, Settings, /clear
IniWrite, %Radio10%, Settings.ini, Settings, /dl
IniWrite, %Radio11%, Settings.ini, Settings, /esp
IniWrite, %Radio12%, Settings.ini, Settings, /templeader
IniWrite, %Radio18%, Settings.ini, Settings, /chide
IniWrite, %Radio21%, Settings.ini, Settings, /zzdebug
IniWrite, %Hot1%, Settings.ini, KeySetup, KEY1
IniWrite, %Hot2%, Settings.ini, KeySetup, KEY2
IniWrite, %Hot3%, Settings.ini, KeySetup, KEY3
IniWrite, %Hot4%, Settings.ini, KeySetup, KEY4
IniWrite, %Hot5%, Settings.ini, KeySetup, KEY5
IniWrite, %Hot6%, Settings.ini, KeySetup, KEY6
IniWrite, %Hot7%, Settings.ini, KeySetup, KEY7
IniWrite, %Hot8%, Settings.ini, KeySetup, KEY8
IniWrite, %Hot9%, Settings.ini, KeySetup, KEY9
IniWrite, %Hot10%, Settings.ini, KeySetup, KEY10
IniWrite, %Hot11%, Settings.ini, KeySetup, KEY11
IniWrite, %Hot12%, Settings.ini, KeySetup, KEY12
IniWrite, %Hot13%, Settings.ini, KeySetup, KEY13
IniWrite, %Hot14%, Settings.ini, KeySetup, KEY14
IniWrite, %Hot15%, Settings.ini, KeySetup, KEY15
IniWrite, %Hot16%, Settings.ini, KeySetup, KEY16
IniWrite, %Hot17%, Settings.ini, KeySetup, KEY17
IniWrite, %Hot18%, Settings.ini, KeySetup, KEY18
IniWrite, %Hot19%, Settings.ini, KeySetup, KEY19
IniWrite, %Hot20%, Settings.ini, KeySetup, KEY20
IniWrite, %qX%, Settings.ini, Coords, qX
IniWrite, %qY%, Settings.ini, Coords, qY
Reload
return
SaveData1:
Gui, 3: Submit, NoHide
IniWrite, %qX%, Settings.ini, Coords, qX
IniWrite, %qY%, Settings.ini, Coords, qY
Reload
return
SaveData2:
Gui, 4: Submit, NoHide
IniWrite, %qdis%, Settings.ini, Discord, qdis
IniWrite, %qtag%, Settings.ini, Discord, qtag
Reload
return
SaveData3:
Gui, 5: Submit, NoHide
IniWrite, %gadis%, Settings.ini, Discord, gadis
IniWrite, %gatag%, Settings.ini, Discord, gatag
Reload
return
SaveData4:
Gui, 6: Submit, NoHide
IniWrite, %zgadis%, Settings.ini, Discord, zgadis
IniWrite, %zgatag%, Settings.ini, Discord, zgatag
Reload
return

UpdateCounter1:
IniWrite, %DayANS%, Settings.ini, ANS, DayANS
IniRead, DayANS, Settings.ini, ANS, DayANS
IniWrite, %WeekANS%, Settings.ini, ANS, WeekANS
IniRead, WeekANS, Settings.ini, ANS, WeekANS
GuiControl,, MyText, День: %DayANS%
GuiControl,, MyTotalR, Неделя: %WeekANS%
return
UpdateCounter:
DayANS+=1
WeekANS+=1
IniWrite, %DayANS%, Settings.ini, ANS, DayANS
IniRead, DayANS, Settings.ini, ANS, DayANS
IniWrite, %WeekANS%, Settings.ini, ANS, WeekANS
IniRead, WeekANS, Settings.ini, ANS, WeekANS
GuiControl,, MyText, День: %DayANS%
GuiControl,, MyTotalR, Неделя: %WeekANS%
return
Reports:
SendInput, {F8}
return

;; Памятка
memo:
State2:=!State2
If state2
{
CustomColor2 = 	EEAA99
Gui 3: +LastFound +AlwaysOnTop -Caption +ToolWindow
Gui 3: Color, black
Gui 3: Font, s8
Gui 3: Font, w3000
Gui 3: Font, cFFFFFF
Gui 3: Add, Text,, =================================================================================================================================================================================================================================================================================================================================================================================
GUI 3: ADD, TEXT, cGreen,!                    ЧАСТЫЕ НАРУШЕНИЯ													ОТЫГРОВКИ / АДМ / ЧАТЫ		                                                                                                          		КРИМИНАЛЬНЫЕ НАРУШЕНИЯ
Gui 3: Add, Text, cYellow, DM					Gunban 5 ч. / Demorgan 120 м./ WARN / Ban 3 - 30 д.			Некорректные отыгровки (оск и т.д.)		Demorgan 10 - 35 м.						2.4.1 ПОиП - Остановка ТС меньше 4 чел. и 2 ТС.		Demorgan 15 - 35 м.
Gui 3: Add, Text,, DB	                                    	Demorgan 30 - 90 м. / WARN / Ban 3 - 30 д.				Обман в /do					Demorgan 35 м. / WARN					2.3 ПОиП - Меньше 2-х грабителей				Demorgan 15 - 35 м.
Gui 3: Add, Text, cYellow, NRP поведение                                	Demorgan 15-90 м. / WARN / Ban / HardBan 3-30 д.			Отыгровки в свою пользу			Demorgan 15-35 м.						3.1 ПОиП - Меньше 4-х похитителей				WARN
Gui 3: Add, Text,, PG	                                       	Demorgan 35-90 м. / WARN / Ban 2-7 д.					Помеха администрации				Kick / Mute/demorgan 10 - 60 м. / WARN / Ban 3 - 30 д.		1.12.1 ПОиП - Унижение жертвы				WARN / Ban 2 - 5 д.
Gui 3: Add, Text, cYellow, SK	                                            	GunBan 8 ч. / Ban 2 - 5 д. / Hardban 2 - 7 д.				Обман администрации				Ban-Hardban 10 - 30 д. / PermBan.				1.12.2 ПОиП - Бритье без причины				Demorgan 60-100 м. / WARN / Ban 2-5 д.
Gui 3: Add, Text,, NRD					Demorgan 15 - 90 м. / Ban 3-7 д.						Оск, неуваж и т.д. администрации		Ban 5-30 д. / HardBan 10-30 д.					2.1 ПОиП - Ограб не через функц (повтор и т.д.)		Demorgan 10 - 60 м.
Gui 3: Add, Text, cYellow, Уход от RP	                                    WARN / Ban 4-8 д.							Трап / нрп ник					Demorgan 720 м. (до смены)					1.1 ПКО - Одежда не цвет фракции/фамы			Demorgan 35 м.
Gui 3: Add, Text,, Громкие звуки				Mute 10 - 120 м.                                 					Спам/флуд в чат				Mute 10 - 60 м.							1.2 ПОиП - машины не в цвет					Demorgan 35 м.
Gui 3: Add, Text, cYellow, Музыка в ЗЗ	                                   	Mute 30 - 60 м.								CAPS LOCK в чат				Mute 30 - 60 м.							2.5 ПКО - Уход в респу/особу					Demorgan 100 м.
Gui 3: Add, Text,, Софт для изменения голоса 		Mute 10-60 м.								OOC in IC					Mute 90 м. / Demorgan 15 м.			
Gui 3: Add, Text, cYellow, 6.12 опп - по соц и гендер и т.д.	Demorgan 90 минут / Ban 3 - 15 дней / HardBan 3 - 15 дней.		Реклама промо, соц сетей и т.д.		Ban 5 - 30 д.		
Gui 3: Add, Text,, 6.13 опп - Заувал оск по признаку	Ban 15 - 30 д. / Hardban 15 - 30 д. / Permban.				Оск. проекта					HardBan 30 д. / PermBan 
Gui 3: Add, Text, cYellow, 6.14 опп - Оск по признаку		HardBan 30 - 60 д. / PermBan.									----------  ТУЛЕВО ----------												---------- ГОСУДАРСТВЕННЫЕ НАРУШЕНИЯ ----------
Gui 3: Add, Text,, 4.2 опп - Заувал оск родни		Ban 5 - 30 д. / Hardban 15 д.						Хилл/броня в бою				Demorgan 35 - 90 м.						1.19 ПГО - Дресс-код фраки					Demorgan 35 м.
Gui 3: Add, Text, cYellow, 4.3 опп - Прямой оск родни		HardBan 30 - 60 д.							Хил/броня за рулем				Demorgan 15 - 35 м.						1.6 ДПГС - Дресс-код не из гардероба и разреш		Demorgan 35 м.
Gui 3: Add, Text,, ООС оскобления             		Demorgan 15 - 90 м.							Стельба по пешим				GunBan 6 ч. / Ban 3-5 д. / HardBan 7 д.				Патруль на личке						Demorgan 35 м.
Gui 3: Add, Text, cYellow, Свап оружия                	     		Demorgan 100 м. / Ban 2 дня.				 	 	Лут в бою					Demorgan 35 м. / WARN					Патруль гетто в соло без кодов.				Demorgan 35 м.
Gui 3: Add, Text,, Наруш. для сохранения/получения	Hardban 10 - 20 д. + изъятие						Стрельба в зз					GunBan 1-5 ч. / Dmg 35-120 м. / WARN / H ban/ban 3-30 д.	Связь с краймом (дается NRP)					Как в NRP от WARN
Gui 3: Add, Text, cYellow, Крайм без маски          		Demorgan 15 м.																						1.11 ПГО - Оск первым и т.д.					Demorgan 50 - 100 м. / WARN.
Gui 3: Add, Text,, Запрещенные слова                              Mute 60-120 м. / Ban 3-10 д. / HardBan 15-30 д. / Permban		Читы						HadBan 9999 д.							5.6 ПГО - Заход на крайм респу/особу без рейда		Demorgan 90 м. / WARN.
Gui 3: Add, Text, cYellow, Багоюз	                                                WARN / Ban 3 - 30 д. / Hardban 3 - 30 д. / Permban.			Файлы для преимущества			Hardban 30 д. / PermBan.						
Gui 3: Add, Text, cYellow, 	
Gui 3: Add, Text,, Фракции	                                    1 - LSPD   2 - EMS   3 - SD   4 - SANG   5 - GOV   6 - WN   7 - FIB   8 - Ballas   9 - Vagos   10 - Fam   11 - Bloods   12 - Mara 			
Gui 3: Add, Text,,                =================================================================================================================================================================================================================================================================================================================================================================================

WinSet, TransColor, %CustomColor2% 200
Gui 3: Show, x0 y200 NoActivate, window.
}
Else
Gui 3: Destroy
Return
vetir:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 150
SendInput, /veh vetir 999 999{Enter}
Return
dl:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 150
SendInput, /dl{Enter}
return
tp:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 150
SendInput, /tp{space}
return
inv:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 150
SendInput, /inv{Enter}
return
coord:
Gui, 3: -MaximizeBox
Gui, 3: Show, w300 h75, Перемещение счетчика репортов
Gui, 3: Color, 838d96
Gui, 3: Font, c0x000000
Gui, 3: Add, Edit, x10 y10 w48 h21 vqX, %qX%
Gui, 3: Add, Edit, x10 y40 w48 h21 vqY, %qY%
Gui, 3: Add, Text, x40 y10 w120 h23 +0x200 +0x1, Координата X
Gui, 3: Add, Text, x40 y40 w120 h23 +0x200 +0x1, Координата Y
Gui, 3: Add, Button, x170 y20 w113 h33 gSaveData1, Применить
return
discord:
Gui, 4: -MaximizeBox
Gui, 4: Show, w285 h70, Ваш дискорд
Gui, 4: Color, 838d96
Gui, 4: Font, c0x000000
Gui, 4: Add, Edit, x10 y10 w110 h21 vqdis, %qdis%
Gui, 4: Add, Edit, x10 y40 w45 h21 vqtag, %qtag%
Gui, 4: Add, Text, x105 y10 w115 h23 +0x200 +0x1, Ваш дискорд
Gui, 4: Add, Text, x32 y40 w100 h23 +0x200 +0x1, Ваш тег
Gui, 4: Add, Button, x230 y14 w40 h40 gSaveData2, ✓
return
discordga:
Gui, 5: -MaximizeBox
Gui, 5: Show, w285 h70, Дискорд ГА
Gui, 5: Color, 838d96
Gui, 5: Font, c0x000000
Gui, 5: Add, Edit, x10 y10 w110 h21 vgadis, %gadis%
Gui, 5: Add, Edit, x10 y40 w45 h21 vgatag, %gatag%
Gui, 5: Add, Text, x105 y10 w115 h23 +0x200 +0x1, Дискорд ГА
Gui, 5: Add, Text, x32 y40 w100 h23 +0x200 +0x1, Тег ГА
Gui, 5: Add, Button, x230 y14 w40 h40 gSaveData3, ✓
return
discordzga:
Gui, 6: -MaximizeBox
Gui, 6: Show, w285 h70, Дискорд зГА
Gui, 6: Color, 838d96
Gui, 6: Font, c0x000000
Gui, 6: Add, Edit, x10 y10 w110 h21 vzgadis, %zgadis%
Gui, 6: Add, Edit, x10 y40 w45 h21 vzgatag, %zgatag%
Gui, 6: Add, Text, x105 y10 w115 h23 +0x200 +0x1, Дискорд зГА
Gui, 6: Add, Text, x32 y40 w100 h23 +0x200 +0x1, Тег зГА
Gui, 6: Add, Button, x230 y14 w40 h40 gSaveData4, ✓
return
esp:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 150
SendInput, /esp3{Enter}
return
; !1:: ; 4 katana
; BlockInput, SendAndMouse
; SendInput, {sc14}
; Sleep 150
; SendInput, /esp3{Enter}
; return
delv:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 150
SendInput, /delveh{Enter}
return
killplayer:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 150
SendInput, /hp  0{left 2}
return
PunishmentHandler:
Process, Exist, PlayGTAV.exe
if(Errorlevel)
{
WinActivate ahk_exe PlayGTAV.exe
Loop, read, %A_WorkingDir%\Punishment.txt
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
ru := DllCall("LoadKeyboardLayout", "Str", "00000419", "Int", 1)
en := DllCall("LoadKeyboardLayout", "Str", "00000409", "Int", 1)
w := DllCall("GetForegroundWindow")
pid := DllCall("GetWindowThreadProcessId", "UInt", w, "Ptr", 0)
l := DllCall("GetKeyboardLayout", "UInt", pid)
if (l != ru)
{
PostMessage 0x50, 0, %ru%,, A
}
Sleep, 850
Send, {T}
Send, %A_LoopField%
Send, {Enter}
}
}
MsgBox, 64, Выдача наказаний, Наказания выданы.
}
else
{
MsgBox, 16, Выдача наказаний, Запустите игру!
}
return
gcar:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 150
SendInput, /getcar{Space}
return
gm:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 150
SendInput, /gm{Enter}
return
resc:
SendInput, {sc14}
Sleep 150
SendInput, /rescue{Space}
return
gh:
SendInput, {sc14}
Sleep 150
SendInput, /gh{Space}
return
chide:
SendInput, {sc14}
Sleep 150
SendInput, /chide{Enter}
return
zzdebug:
SendInput, {sc14}
Sleep 150
SendInput, /zzdebug{Enter}
return
gtar:
Process, Exist, GTA5.exe
return
dorab:
MsgBox, 64, Ошибка,Функция на доработке.
return
mtp:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 150
SendInput, /mtp{Enter}
return
vhod:
SendMessage, 0x50,, 0x4090409
SendInput, {T}
Sleep 300
SendInput, /gm{Enter}
Sleep 300
if (Radio11==1)
{
SendInput, {T}
Sleep 300
SendInput, /esp3{Enter}
Sleep 300
}
if (Radio18==1)
{
SendInput, {T}
Sleep 300
SendInput, /chide{Enter}
Sleep 300
}
if (Radio9==1)
{
SendInput, {T}
Sleep 300
SendInput, /setweatherlocal clear{Enter}
Sleep 300
}
if (Radio8==1)
{
SendInput, {T}
Sleep 300
SendInput, /togglesnow 0{Enter}
Sleep 300
}
if (Radio10==1)
{
SendInput, {T}
Sleep 300
SendInput, /dl{Enter}
Sleep 300
}
if (Radio21==1)
{
SendInput, {T}
Sleep 300
SendInput, /zzdebug{Enter}
Sleep 300
}
if (Radio12==1)
{
SendInput, {T}
Sleep 300
SendInput, /templeader 4{Enter}
}
return
rep:
counter++
GoSub, UpdateCounter
Clipboard :=
return




; ТЕЛЕПОРТЫ
:?:.пд::/ctp 429 -980 30.50
:?:.бол::/ctp 287.70 -578.35 50
:?:.шд::/ctp -434.87 6024.54 31.50
:?:.фз::/ctp -2336 3257 32.50
:?:.гов::/ctp -534.70 -222.07 37.60
:?:.вн::/ctp -593 -929 24
:?:.фиб::/ctp 2527 -377 93

:?:.ключп::/ctp -196.836 6218.708 31.491 
:?:.ключс::/ctp 1728.313 3717.568 34.109
:?:.ключм::/ctp -361.424 -129.636 38.696
:?:.ключпд::/ctp -40.529 -1077.648 26.653 

:?:.бал::/ctp -70.06 -1824.64 26.94
:?:.ваг::/ctp 967 -1817 31
:?:.фэм::/ctp -204.29 -1513.69 31.60
:?:.бладс::/ctp 496 -1330 29.40
:?:.мара::/ctp 1437.61 -1509.64 62.40

:?:.лкн::/ctp 1385 1154 114.40
:?:.рм::/ctp -1526 858 181
:?:.як::/ctp -1556.36 113.07 57
:?:.мекс::/ctp 381.03 23.12 91.40
:?:.ам::/ctp -1895.23 2027.19 141
:?:.ириш::/ctp -3022 105 11.30

:?:.лост::/ctp 969.84 -128.40 74.40
:?:.аод::/ctp 1995.99 3062.44 47.06

:?:.бар::/ctp 1588.65 6445.38 25

:?:.хум::/ctp 3569.54 3789.48 30
:?:.мейз::/ctp -75 -818 326
:?:.каз::/ctp 918.45 49.19 80.41
:?:.гг::/ctp -257 -2023 30
:?:.кайо::/ctp 4488.58 -4493.52 4
:?:.авиа::/ctp 3035.21 -4688.55 15
:?:.мол::/ctp 61.67 -1751.80 47
:?:.трас::/ctp 7400 3946 1124
:?:.аук::/ctp -833 -699.50 27
:?:.бк::/ctp 500.44 109.79 96.49
:?:.ванила::/ctp 131.33 -1302.93 29.23
:?:.починка::/ctp -1430.45 -450.5 35.91
:?:.лск4::/ctp 1175.47 2671.33 37.85
:?:.порт::/ctp 417 -2501 13.46
:?:.лес::/ctp -321 6093 31.14
:?:.аэр::/ctp -1035.61 -2732.53 13.15
:?:.рын::/ctp -1227.11 -1459.28 53.90

:?:.инт1::/ctp -146.93 -595.68 166.43
:?:.инт2::/ctp 264.47 -1353.44 23.67
:?:.инт3::/ctp 2573.90 -260 -145.5
:?:.инт4::/ctp 2521 -234 -71
:?:.инт5::/ctp 2540 -269 -59
:?:.инт6::/ctp 303 -995 -94
:?:.инт7::/ctp 227 -986 -99
:?:.инт8::/ctp -3000 70 12
:?:.инт9::/ctp 2532.13 -277.68 -65.33
:?:.инт10::/ctp 2479.61 -272.62 -58.64
:?:.инт11::/ctp 2521.91 -269.01 -39.73
:?:.инт12::/ctp 2491.74 -246.01 -55.73
:?:.инт13::/ctp 2154.34 2916.8 -84.9
:?:.инт14::/ctp -1506.631 -2995.622 -82.207
:?:.инт15::/ctp -1120.813 4736.408 236.747
:?:.небо::/ctp 1000 4000 6000
:?:.хата::/ctp -1910 1388 219

; ВРЕМЯ
:?:.время10::/settimelocal 10 00 00
:?:.время15::/settimelocal 15 00 00
:?:.время20::/settimelocal 20 00 00
:?:.время0::/settimelocal 0 00 00
:?:.время::/settimelocal 23 59 59

; ЛИДЕРКИ
:?:/t1::/templeader 1
:?:/t2::/templeader 2
:?:/t3::/templeader 3
:?:/t4::/templeader 4
:?:/t5::/templeader 5
:?:/t6::/templeader 6
:?:/t7::/templeader 7
:?:/t8::/templeader 8
:?:/t9::/templeader 9
:?:/t10::/templeader 10
:?:/t11::/templeader 11
:?:/t12::/templeader 12

; ПЕРЕВОДЫ

:?:/tf::/tempfamily
:?:.еа::/tempfamily
;:?:.в::/gw 538 weapon_firework
:?:/sm::/setmaterials
:?:.ыь::/setmaterials
:?:/tn::/tempname
:?:.ет::/tempname
:?:.еуьзтфьу::.еуьзтфьу
:?:.яяв::/zzdebug
:?:/zzd::/zzdebug
:?:/amph::/addamphitheater
:?:.фьзр::/addamphitheater
:?:/ramph::/removeamphitheater
:?:.кфьзр::/removeamphitheater
:?:/gzone::/togglegreenzone
:?:.пящту::/togglegreenzone
:?:/mch::/mutecheck
:?:.ьср::/mutecheck
:?:.ьгеусрусл::/mutecheck
:?:/ach::/ajailcheck
:?:.фср::/ajailcheck
:?:.аоаилсрусл::/ajailcheck
:?:/wch::/warncheck
:?:.цср::/warncheck
:?:.цфктсрусл::/warncheck
:?:/bch::/bancheck
:?:.цср::/bancheck
:?:.ифтсрусл::/bancheck
:?:.гтофшд::/unjail
:?:.цфкт::/warn
:?:/ld::/lastdriver
:?:.дв::/lastdriver
:?:/af::/ainfect
:?:.фа::/ainfect
:?:/ai::/auninvite
:?:.фш::/auninvite
:?:.аи::/fb
:?:.гтьгеу::/unmute
:?:.пуезшт::/getpin
:?:.пшв::/gid
:?:.фвьшты::/admins
:?:.фштаусе::/ainfect
:?:.умутещт::/eventon
:?:.умутещаа::/eventoff
:?:.пц::/gw
:?:.мур::/veh
:?:.ашчсфк::/fixcar
:?:.уьздуфвук::/templeader
:?:/tl::/templeader
:?:.ед::/templeader
:?:.ылшсл::/skick
:?:.кузфшк::/repair
:?:.фгтшмшеу::/auninvite
:?:.учсфк::/excar
:?:.агуд::/fuel
:?:.згддекгтл::/pulltunk
:?:.акууя::/freez
:?:.езсфк::/tpcar
:?:.дфыевкшмук::/lastdriver
:?:.вудшеуь::/delitem
:?:.здфнукы::/players
:?:.рес::/rescue
:?:.ез::/tp
:?:.ызус::/spec
:?:.ызусщаа::/specoff {Enter} {F5}
:?:.фыьы::/asms
:?:.ку::Приветствую.
:?:.удв::Удачного вам вечера.
:?:.удд::Удачного вам дня.
:?:.удн::Удачной вам ночи.
:?:.ф::/a
:?:/so::/specoff {Enter} {F5}
:?:.ыщ::/specoff {Enter} {F5}
:?:.штсфк::/incar
:?:.пр::/gh
:?:.пиздец::<@&530697917699325952> и <@&588784568300077073> Уважаемая администрация, просим зайти вас на сервер, в данный момент нам очень нужна ваша помощь.
:?:.штм::/inv
:?:.шв::/id
:?:.рз::/hp
:?:.фофшд::/ajail
:?:.лшсл::/kick
:?:.ылшсл::/skick
:?:.кузфшк::/repair
:?:.вд::/dl
:?:.уыз::/esp
:?:.уыз3::/esp3
:?:.пуесфк::/getcar
:?:.ифт::/ban
:?:.вудмур::/delveh
:?:.ьез::/mtp
:?:.мур::/veh
:?:.фмур::/aveh
:?:.рфквифт::/hardban
:?:.ьгеу::/mute
:?:.пшв::/gid
:?:.ср::/chide
:?:/ch::/chide
:?:.куысгу::/rescue
:?:.ыуевшь::/setdim
:?:/sd::/setdim
:?:.ыв::/setdim
:?:/sd0::/setdim 0{left 2}
:?:.ыв0::/setdim 0{left 2}
:?:/sd1::/setdim 1{left 2}
:?:.ыв1::/setdim 1{left 2}
:?:/sd55::/setdim 55{left 3}
:?:.ыв5::/setdim 55{left 3}
:?:.сршву::/chide
:?:.афк::/a afk мин{left 4}
:?:.фгтсгаа::/auncuff
:?:.фсгаа::/acuff
:?:.акууяф::/freeza
:?:.scd::/setcardim
:?:.фь::/ajailcheck
:?:.фьь::/unjail Амнистия{left 9}
:?:.фььь::/ajail Амнистия{left 9}
:?:.ыуесфквшь::/setcardim
:?:.ысв::/setcardim
:?:.rst::/resettempname
:?:.кет::/resettempname
:?:.куыуееуьзтфьу::/resettempname
:?:.ызфцтсфк::/spawncar
:?:/sc::/spawncar
:?:.ыс::/spawncar

:?:.дс::
SendMessage, 0x50,, 0x4090409
SendInput, Напишите мне в личные сообщения дискорда: %qdis%.
Return
:?:.га::
SendMessage, 0x50,, 0x4090409
SendInput, Обратитесь в личные сообщения дискорда к главному администратору: %gadis%.
Return
:?:.зга::
SendMessage, 0x50,, 0x4090409
SendInput, Обратитесь в личные сообщения дискорда к заместителю главного администратора: %zgadis%.
Return
:?:.читдай::
SendMessage, 0x50,, 0x4090409
SendInput, Если у вас есть доказательства подозрительного поведения игрока нужно отправить их в виде ссылки на видео сюда или в личные сообщения Discord — %qdis%.
Return

; ОТВЕТЫ

; Механики занятия
:?:.металоискатель::Для поиска кладов нужно иметь металлоискатель и лопату. Их можно купить на рынке. Металлоискатель становится активным как только Вы берете его в руки. Когда он найдет сокровища, то будут происходить визуальные и звуковые оповещения. От зеленого цвета, до красного. Места расположения сокровищ вы можете узнать на интерактивной карте - https://wiki.majestic-rp.ru/map/treasure.
:?:.мусорки::Функциональные мусорки расположены по всему штату. Когда подходите к ней появляется подсказка о том, что с ней можно взаимодействовать нажатием E. Места расположения мусорок вы можете узнать на интерактивной карте - https://wiki.majestic-rp.ru/map/rubbish.
:?:.лесоруб::Первый уровень лесоруба находится около Палето-Бей. Для начала работы Вам понадобиться "Топор", купить его можно у NPC на рынке или на месте рубки. Принцип работы схожий с Грибниками, точки для сруба деревьев разбросаны по всей карте, каждый уровень привязан к свой точке сбора. Древесину можно продать на рынке.
:?:.рыбалка::Для того чтобы рыбачить вам нужна наживка, удочка и дополнительные приспособления для нее. Всё это можно купить в рыболовном магазине. Он находится на левой трассе ближе к Палето-Бэй. Подходите к зоне рыбалки своего уровня и нажимаете клавишу Е. Ждёте клёва, как появится рыба, она будет вилять в стороны влево-вправо. Вам нужно зажимать клавиши A/D противоположной стороны рыбы. После того как рыба утомилась, Вы её подсекаете левой кнопкой мыши. Приятной игры на Majestic RP.
:?:.рыба::Рыбу можно продать на рынке, либо людям напрямую или через маркетплейс.
:?:.руда::Руду можно продать только игрокам напрямую или через маркетплейс.
:?:.ферм::На ферме есть следующие культуры: 1 уровень - апельсины - ферма 1 и 2. 2 уровень - Пшеница - ферма 3. 3 уровень - Картофель - ферма 4. 4 уровень - капуста - ферма 5. 5 уровень - кукуруза - ферма 6. 6 уровень - тыква - ферма 7. 7 уровень - бананы - ферма 8.
:?:.грибы::Чтобы собирать грибы вам надо приехать на точку "Грибы" 1/6 и взять в руки нож. Далее через нажатие "Е" вы можете их собрать. Грибы продаются торговцу на рынке.
:?:.рын::Рынок находится в Лос-Сантосе на пляже и отмечен значком торговой палатки. Также есть рынки недалеко от фермы и в Палето-Бей.
:?:.совместраб::Чтобы совместно работать вам нужно создать группу через телефон, после чего пригласить в нее всех участников через значок "+". После этого лидер группы начинате работу и у всех она начинается автоматически.
:?:.дилер::Мероприятие «Вербовка дилера» происходит два раза в день в 10:45 и 18:45. В районе гетто появляется 16 дилеров, которых нужно завербовать направив на них оружие. Победителями является команда захватившая больше всех дилеров. Если у двух команд количество одинаковое побеждает та, которая захватила первого дилера раньше. Минимальное количество участников - 1.
:?:.цех::Мероприятие «Захват цехов» происходит два раза в день в 14:45 и 22:45. В районе гетто появляется 5 владельцев цеха, которых нужно захватить направив на них оружие. После захвата открывается доступ к перегрузке ресурсов в матовозку. Чем больше участников, тем быстрее загрузка. После загрузки вам нужно отвести ресурсы на свой склад. Участники также получают полезные эффекты в зависимости от количества захваченых цехов. Минимальное количество участников - 4. 
:?:.крючок::Сейчас места для ловли открываются вместе с получением соответствующего уровня рыбалки. Найти актуальный для себя можете нажав ESC - открыв карту и нажав несколько раз стрелку вниз пока не дойдете до «Зона рыбалки - "ваш уровень ловли"». Мы не можем сообщать местоположение определенных крючков игрокам.
:?:.крючок2::Если вы только получили новый уровень рыбалки, то вам нужно перезайти в игру.
:?:.стрип::Стриптиз можно заказать в "Стрип клубе" в гетто. Для этого вам нужно найти комнату с 4 угловыми диванами и нажать Е около одного из них.

:?:.кости::Чтобы играть в кости вам нужно купить их в любом 24/7. После того как вы купили кости, вы можете подойти к игроку и предложить сыграть с вами G - 
:?:.пенни::В день вы можете прокрутить «Колесо Удачи» 5 раз, именно оставшиеся «прокруты» показывает иконка около мини-карты. На каждый раз тратится счастливый пенни из вашего инвентаря. Его можно получить подходя раз в сутки к колесу удачи, выиграть в камень-ножницы-бумага или купить у игроков.

:?:.дрифт::Дрифт счётчик можно включить через F2 > Настройки > Дополнительно. На карте вы можете увидеть зоны, где можно дрифтить, они отмечены горящим колесом. Для выполнения задания нужно за раз набирать более 2500 очков без столкновений.


:?:.бизограб::Чтобы ограбить бизнес, вам нужно: одеть маску, приобрести оружие и, придя в магазин в составе от 2 человек, навестись на NPC (продавца) огнестрелом (только один человек должен грабить). По окончанию ограбление NPC сбросит пачку денег, которую можно обменять у NPC на титуле вашей фракции, либо в семейном доме/офисе.
:?:.банкограб::Приветствую. Чтобы начать ограбление банка, вам нужно позвонить по номеру: 28121903. Для этого надо быть в крайм организации, и находится рядом с банком (как минимум вас должно быть 4 около банка, иначе не сможете). Для начала ограбления требуется "План ограблений", который выбирается в AirDrops или при ограблении бизнесов.Можно грабить 1 раз в день каждой огранизации.После того, как ограбление началось и банк получил красную иконку, надо прицелиться в бота и заполнить прогресс бар.Дальше будет большая дверь, что бы ее разблокировать, нужно пройти мини-игру со взломом. Для этого используем «Программатор ЭБУ» + «Кабель электронных дверей». Он продается у торговца на рынке. После взлома перед вами будет стоять стойка с деньгами. Далее идет 2-я дверь. Для ее взлома нам необходима «Ключ карта Fleeca» либо «Термитная установка».«Ключ карта Fleeca» выпадает с ботов при ограблении бизнесов, или на аир дропах.«Термитная установка» продается у пиротехника. С ее помощью дверь открывается за 2 минуты. 
:?:.банкограб2::Для этого надо взять в руки один из предметов, чтобы открыть дверь. Но в хранилище есть ячейки, для взлома ячеек необходима «Дрель 1500w». Дрель крафтится у криминальных организаций и выпадает при смерти. После успешного прохождения мини-игры по взлому ячейки на пол падает награда.
:?:.камеры::Члены крайм организации должны в 2ем приехать к камере. Далее с помощью кусачек и отвертке запускается миниигра. Нужно нажимать на кнопки соответствующие тому цвету, что горит на светофоре (для этого и нужен 2 игрок). После удачной мини-игры сбейте камеру оружием и соберите её.
:?:.вербовка::Мероприятие «Вербовка дилера» происходит два раза в день в 10:45 и 18:45. В районе гетто появляется 16 дилеров, которых нужно завербовать направив на него оружие. Победителями является команда захватившая больше всех дилеров. Если у двух команд количество одинаковое побеждает та, которая захватила первого дилера раньше. Минимальное количество участников - 1.
:?:.цех::Мероприятие «Захват цехов» происходит два раза в день в 14:45 и 22:45. В районе гетто появляется 5 владельцев цеха, которых нужно захватить направив на него оружие. После захвата открывается доступ к перегрузке ресурсов в матовозку. Чем больше участников, тем быстрее загрузка. После загрузки вам нужно отвести ресурсы на свой склад. Участники также получают полезные эффекты в зависимости от количества захваченых цехов. Минимальное количество участников - 4.
:?:.гриль::Чтобы приготовить мясо/рыбу вам нужно купить Гриль в одном из 24/7, далее поставить её на какое-либо место и через G взаимодействие пожарить мясо/рыбу. При этом расходуется один кусок мяса или определенное количество рыбы. Количество рыбы различается от её вида.
:?:.камера::Камеры могут быть уничтожены игроками, состоящими в бандах с 14:00 до 01:00. Требуются кусачки и отвертка, далее вам необходимо взаимодействовать со столбом, где находится камера, будет мини-игра. Для успешного прохождения нужен напарник, который сообщит об изменении сигналов светофора. Как только резервное питание будет отключено, нужно выстрелить в камеру после уведомления. При попадании на землю упадёт предмет "Повреждённая камера". Если не выстрелить вовремя, питание восстановится и камера перейдет в статус настройки.
:?:.броньрез::Для того, чтобы срезать бронежилет вы должны быть в банде или семье с купленным улучшением на ограбление игроков. Делается это через G - Незаконное - срезать бронежилет. Для этого вам нужен нож в инвентаре. Игров в этот момент должен быть в стяжках или поднять руки. Обратите внимание, что с точки зрения правил это считается ограблением.


; Механики разные
:?:.клетка::В Деморгане клетки закрываются в 20 и 55 минут каждого часа, а открываются через 5 минут после этого.
:?:.рация::Приобрести рацию можно в любом магазине 24/7, в разделе "Электроника". 
:?:.рациябп::Приобрести рацию можно в любом магазине 24/7, в разделе "Электроника". Для выполнения квеста вам нужно поставить частоту меньше 100000 или больше 900000.
:?:.пут::Всю информацию (команды/о фракциях, работах и так далее) можно узнать на форуме majestic-rp.ru - раздел WIKI по игре.
:?:.майки::Для того, чтобы купить майку под верхнюю одежду, вам нужно сначала купить элемент верхней одежды (например, пиджак). После этого вам буду доступны все майки, которые подходят под нее в разделе "Майки". К сожалению сейчас покупка маек временно недоступна из-за бага. Разработчики уже знают о нем и работают над решением.
:?:.безраб::Чтобы начислялся PayDay Вам нужно иметь свою банковскую карту и быть уволеным со всех работ. Оформить её можно в любом банке.
:?:.канистра::Чтобы использовать канистру, возьмите её в руки, нажмите G на авто и заправить.
:?:.аренда::Подойти к автомобили G - Отменить аренду, либо телефон - АвтоПлюс - нужный автомобиль - отменить аренду.
:?:.бинокль::Использовать бинокль можно переместив его в активный слот оружия и нажав ПКМ. Иногда он багается и нужно его убрать из активного слота, взять обратно и быстро нажать ПКМ.
:?:.дмгтайм::При попадании в деморган за нарушение правил сервера время в нем идет 1к10. Если вы хотите ускорить время - выполняйте задания от NPC на первом этаже.
:?:.склад::F3 - Важное - Маркетплейс. Когда вы приблизитесь к этому зданию рядом появится новая метка. Вам нужно подойти к ней и нажать Е. После этого вы сможете взаимодействовать со скадом маркетплейса.
:?:.флешка::Для того, чтобы использовать флешку с компроматом нужно придти на проходную деморгана (где оказываются те, у кого кончился срок) и передать её NPC указав его статик. Так можно выпустить только игрока посаженного гос сотрудниками.
:?:.чатфам::/c - IC чат, /cb - OOC чат.
:?:.чатфрак::/f - IC чат, /fb - OOC чат.


; Механики дом/машина/имущка
:?:.сейф::В сейф можно класть до 5 миллионов. Деньги идут из налички. Нельзя продать дома в гос, продать игроку, предложить обмен, выставить на аукцион, если в сейфе есть деньги. Сначала требуется их забрать. Если дом слетает по налогам - деньги из сейфа игрок получает в наличку. Приятной игры на Majestic RP.
:?:.клад::Чтобы сделать дубликат от кладовки, необходимо купить заготовку в магазине 24/7, затем через G передать дубликат нужному человеку. Вы оба должны стоять около дома.
:?:.подсел::Чтобы подселить игрока к себе в дом или же квартиру, стоя около дома, наведитесь на игрока и нажмите G, далее нажмите Подселить. Этот игрок получит 1 гаражное место. У вас оно не отнимится.
:?:.слетдом::Зеленые дома на карте - это дома на аукционе. На сервере не бывает домов, которые можно придти и купить. Все дома ставшие нечейными из-за неоплаты налогов попадают на аукцион.
:?:.госдом::Чтобы продать дом в гос. стоимость, нужно подойти к двери и нажать Е. Вы получите 75% от его гос. цены. Если Вы невовремя оплатите налоги или забудете это сделать, дом слетит автоматически.
:?:.байдом::Личный дом отображается на карте иконкой дома голубого цвета. Если вы только купили дом, то вам нужно перезайти в игру, чтобы он начал отображаться на карте.

:?:.ремонт::Чтобы починить внешние части машины (корпус, колеса) используйте ремонтный комплект покупаемый на любой АЗС. Для ремонта внутренних частей (двигатель, тормозная система и т.д.) воспользуйтесь СТО (иконка гаечного ключа с отверткой на карте). 
:?:.рем::Чтобы починить своё авто купите рем.комплект на любой АЗС. Через меню G почините ваш автомобиль.
:?:.сто::Степень износа определенных деталей автомобиля можно узнать на автомастерской (иконка гаечного ключа с отверткой на карте). Там же вы можете починить детали.
:?:.гос::Вы можете сдать авто на свалку. После сдачи вы получите 75% от гос. стоимости авто. Свалка отмечена на карте как перечеркнутый, красный круг.
:?:.кавто::Чтобы сделать дубликат ключей от авто необходимо купить заготовку в магазине 24/7, затем нажать G на авто и сделать дубликат. Далее вы можете передать дубликат через торговлю или просто сбросив его на пол.
:?:.замок::Вам необходимо купить "Дверной замок" в 24/7 и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G > Починить замок.
:?:.замок2::Вам необходимо купить "Дверной замок" в 24/7 и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G > Заменить замок. Возможно чтобы этот пункт найти нужно нажать "Ещё".
:?:.акум::Вам необходимо купить "Аккумулятор" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G > Заменить аккумулятор.
:?:.масло::Вам необходимо купить "Моторное масло" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G > Заменить масло.
:?:.арынок::Для того, чтобы выставить свое авто на продажу, Вам необходимо приехать на территорию авторынка, выбрать место и нажать на клавишу "G" - Авторынок - Выставить на продажу.
:?:.толкать::Транспорт можно толкать, нажав G-толкать. Если такой функции нет, при наведении на авто, то этот транспорт толкать нельзя.
:?:.парк::Чтобы припарковать ТС, за рулем нажмите G - Припарковать.

:?:.дрон::Дрон могут скрафтить гос сотрудники, также он является наградой Battle Pass. Чтобы подняться-пробел, чтобы опуститься-shift. На E-тепловизор включить/выключить (только у полицейского дрона). Чтобы выйти из управления дроном нажмите F.

:?:.аукц::На маркетплейс вы можете выставить авто/бизнес/дом/квартиру. Во время того, как вы выставляете лот, вы можете лишь ездить на авто. При продаже на акционе дома/квартиры-кладовка передаётся покупателю полностью.


; Механики персонаж
:?:.ехп::Каждый час (у каждого игрока своё время) Вам дается EХP. Чтобы узнать, сколько Вам осталось до следующего PayDay, нажмите клавишу F2 - Статистика - время до зарплаты.
:?:.чат::Чат можно настроить в F2 - Настройки - Чат.
:?:.слух::Функция "Я не слышу" предназначена для людей с плохим слухом или его отсутствием. Злоупотребление этой функцией карается баном Вашего персонажа.
:?:.звук::Функция "Я без звука" предназначена для людей без возможности слышать игроков по техническим причинам. Злоупотребление этой функцией карается баном Вашего персонажа. 
:?:.маджилвл::При достижении 5-го уровня: 500 MC При достижении 10-го уровня: 1000 MC При достижении 15-го уровня: 2000 MC При достижении 20-го уровня: 3000 MC При достижении 25-го уровня: 4000 MC При достижении 30-го уровня: 5000 MC. Каждый следующий уровень после 30-го Вы будете получать 1500 MC. Приятной игры на Majestic RP.
:?:.ник::Сменить ник вы можете нажав - F2 > Магазин > Персонаж > Сменить имя.
:?:.модел::Пункт "Прогрузка моделей" отвечает за быстроту прогрузки текстур при приближении к ним.
:?:.рыблиц::Приветствую, получить лицензию на рыбалку вы можете в Мэрии.
:?:.ганлиц::Получить лицензию на оружие можно в LSPD или LSCSD.
:?:.аут::Для подключения Google authenticator вам нужно в меню выбора персонажа открыть раздел настроек.
:?:.гмбай::Изначально у вас всего одно гаражное место. Новые гаражные места можно получить следующим образом: Купить за MC в F2 - Магазин - Персонаж, подселиться к кому-либо в дом/квартиру (вы получите одно гаражное место, владелец дома не потеряет его), купить свой дом/квартиру.
:?:.донинвент::Донат инвентарь можно найти в F2 - Магазин - Предметы.


; Места
:?:.регтс::F3 - Важное - Оплата штрафов. Вход в здание находится со стороны каналов Веспуччи.
:?:.квест::Ознакомиться с мировыми квестами можно на рынке (На карте обозначен как "Красный вопрос"). Ваш личный прогресс отображается в левой колонке. После окончания личного квеста вы сразу получаете бонус в виде MC и становитесь участником общего квеста. Только лучшие игроки смогут попасть в топ 3 общего квеста и получить дополнительные бонусы.
:?:.новость::Вам нужно лично придти в Weazel News и пообщаться с кем-то из игроков этой фракции. Они помечены на карте как глобус.
:?:.спавн::Спавн новичков находится в Палето-Бей, Чумашах, Аэропорту и на Автовокзале.
:?:.новичок::Путеводитель находится на спавнах новичков. Они обозначены на карте значком машущего человечка.

; НАВЫКИ
:?:.вынос::Выносливость - навык выносливости повышается от подвижного образа жизни. Чем больше бегаете, тем быстрее повышается навык. При низком навыке, персонаж не может прыгнуть 2 раза и падает. Соответственно повышение навыка влияет на длительность беспрерывного бега и количество прыжков, максимум на последнем уровне - 2.
:?:.сила::Сила - навык силы повышается от физических нагрузок. Чем больше вы занимаетесь в качалке (иконка бегущего человека на карте), тем быстрее повышается навык. От прокачки увеличивается высота с которой персонаж может спрыгнуть не упав.
:?:.дых::Дыхание - навык дыхания повышается от длительного нахождения под водой. Чем больше вы плаваете, тем быстрее повышается навык. Соответственно повышение навыка влияет на длительность беспрерывного плавания под водой.
:?:.вожден::Вождение - навык вождения повышается от времени, проведенного за рулем автомобиля. Чем больше вы водите транспорт, тем быстрее повышается навык. От прокачки увеличивается управляемость транспортным средоством.
:?:.полет::Полет - навык пилотирования повышается от времени, проведенного за воздушным транспортом. Чем больше вы летаете на самолете или вертолете, тем быстрее повышается навык. Также навык можно повысив пройдя курсы в летной школе. Пройти их можно 1 раз в 24 часа, увелчение навыка от 1 занятия - 10, стоимость одного занятия - 2 000$. От прокачки навыка увеличивается стабильность полета и управляемость воздушным транспортом.
:?:.скрытн::Скрытность - навык скрытности повышается от количества успешных уходов от погони (понижений уровня розыска). Сейчас данный навык не влияет на что-либо. 
:?:.стрельба::Стрельба - навык стрельбы повышается от времени, проведенного в перестрелках, либо тренировках. Чем лучше вы стреляете и попадаете, тем быстрее повышается навык. Рекомендуем тренироваться в специально отведенных для того местах, тире в оружейном магазине. От прокачки навыка увеличивается скорость перезарядки и перекатов, кучность стрельбы.

:?:.нг::Администрация Majestic RP поздравляет вас с новым 2025 годом. Желаем вам успехов во всех ваших начинаниях как в реальной жизни так и в игре.
:?:.нг2::Спасибо, ваши теплые слова очень важны для нас. От лица администрации Majestic RP поздравляю вас с новым 2025 годом. Желаю вам успехов во всех ваших начинаниях как в реальной жизни, так и в игре. 

; ОБЩЕНИЕ С ИГРОКАМИ

; Отказы баги и т.д.
:?:.войс::Чтобы перезагрузить войс перезайдите в игру.
:?:.багвойс::Если у вас баг войса (вы не слышите и вас не слышат), то перезайдите в игру. Если это не помогает, то скорее всего вам придется подождать рестарта сервера в 6:00 утра.
:?:.тайм::К сожалению иногда для получения MC за 5 часов онлайна нужно быть онлайн минут на 5-10 подольше. Это связано особенностями с работой сервера.
:?:.рел::Попробуйте перезайти через F1 > выбор сервера Las Vegas.
:?:.баг::О данной проблеме известно и она передана разработчикам.
:?:.инв::Это баг инвентаря, вам нужно открыть любое другое окно инвентаря, например, багажник, кладовка, склад фракции. Если ничего из перечисленного нет по близости, то перезайдите на сервер F1 - Direct connect. Приносим свои извинения за предоставленные неудобства.
:?:.азсскам::К сожалению можем заправить только если вы предоставите док-ва. Пары скриншотов будет достаточно.
:?:.востакк::Для решения подобных проблем нужно заполнить данную форму - https://forms.gle/WVASXnZuAVuXwq2q9.

:?:.функ::Данный функционал временно недоступен, приносим свои извинения.
:?:.фун::Данного функционала не существует у нас на сервере.

:?:.урп::Данную информацию вы можете получить при взаимодействии с другими игроками/самостоятельным поиском непосредственно во время игрового процесса.

:?:.рп::Извините, но это РП процесс, мы не вправе вмешиваться в него.
:?:.увал::К сожалению, ничем не можем помочь. Если во фракции есть лидер, то администрация не может уволить вас. Вам нужно решить это договорившись с лидером/хайрангами. Если вас игнорируют уже длительное время свяжитесь с куратором своей фракции в личные сообщения Discord.
:?:.авто::Администрация не удаляет авто. Только в крайних случаях (утонуло, взорвалось и т.д.).
:?:.емс::К сожалению, администрация не поднимает, не лечит и не вакцинирует игроков, воспользуйтесь услугами ЕМС.
:?:.подним::К сожалению, не видя всей ситуации мы не в праве лечить, поднимать или добивать игроков. Дождитесь сотрудников EMS либо же окончания таймера смерти. Приносим свои извинения за возможные неудобства. 
:?:.жб::Администрация не может выдавать наказания и выносить какие-либо вердикты не видя всей ситуации. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оставьте жалобу на форуме или в репорт-жалобе, спасибо большое за понимание.
:?:.погода::К сожалению, администрация не контролирует данный процесс. Погода меняется автоматически.
:?:.бенз::К сожалению не можем этого сделать. Вы можете воспользоваться канистрой или услугами такси.
:?:.капт::Администрация не телепортирует, не лечит, не поднимает игроков перед каптом и после него, обратитесь к своим кураторам фракции в дискорд.
:?:.нетп::Администрация не телепортирует игроков, Вам нужно добраться до места самостоятельно.
:?:.законка::К сожалению данный вопрос касается RP законов, мы не можем отвечать на них. Получите консультацию у сотрудников государственных структур.
:?:.хз::У игровой администрации нет информации об этом. Следите за новостями/Changelog в официальном Discord Majestic, либо других соц сетях.
:?:.PR::За данным медиа партнером наблюдает PR ассистент, по этой причине я не могу выдавать наказание, т.к. вся ответственность за происходящее на этой ситуации автоматически переносится на PR ассистента.
:?:.неудал::Не можем удалять авто без веской причины (утоплена, взорвана).

:?:.краш::Если у Вас есть доказательства краша - предоставьте их. Я вас выпущу.
:?:.имя::Ваше Имя Фамилия не подходит по правилам нашего сервера. Вам нужно сменить ник и написать в репорт повторно, если Ваш ник будет соблюдать правила сервера, то вас выпустят.

:?:.неп::Опишите, пожалуйста, вашу проблему/вопрос подробнее для максимально точного ответа.
:?:.реп::Пожалуйста, уточните свой вопрос подробнее. Администрация не летает на репорты по типу "админ тп", "админ можно поговорить", "помогите", "админ есть вопрос". Количество символов в данном окне неограничено, вы можете полностью расписать Вашу проблему/вопрос.
:?:.жба::Вы можете написать жалобу на форум, если не согласны с решением администратора.
:?:.нов::У нас нет информации об этом. Следите за новостями сервера в официальном дискорде проекта
:?:.изв::Приносим свои извинения за предоставленные неудобства.

:?:.кредит::Любые финансовые договоры (займы, кредиты и т.д) не относятся к ООС сделкам. Все подобные сделки игроки совершают на свой страх и риск. Администрация не несет ответственности и не является гарантом сделки.
:?:.сделка::Администрация не следит за сделками игроков, запишите видео на случай обмана, чтобы оставить жалобу на игрока на форуме. Но напоминаю, что в таком случае вы, как игрок пошедший на сделку в обход функционала также получите наказание.

:?:.адз::Данный администратор сейчас занят другим делом или отошел от компьютера на короткое время, напишите ему в личные сообщения в дискорде.
:?:.адс::Данный администратор сейчас не на сервере, напишите ему в личные сообщения в дискорде.

:?:.утоп::Ваше авто утонуло. Утопленное авто нельзя починить. Я удалил его, теперь вы можете заспавнить его на автосервисе (иконка гаечного ключа на карте).
:?:.утоп2::Вам нужно заспавнить ваше т/с в автосервисе (иконка гаечного ключа по всей карте).
:?:.утоп3::К сожалению администрация не может найти ваше авто, если оно не рядом с вами. Вам нужно добраться до места, где утонуло ваше авто и написать в обращение. Мы обязательно вам поможем. 

:?:.багреп::/asms Здравствуйте. Ваше обращение забагалось и его невозможно обработать. Закройте его, пожалуйста, в меню F2 - Обращения и откройте заново. {left 137}

; ПРИВЕТЫ/ПОКАТЫ
:?:.долго:: Приветствую. Приносим извинения за столь долгое ожидание. Ваша проблема ещё актуальна?
:?:.лечу::Приветствую. Уже лечу к вам на помощь.
:?:.пом::Здравствуйте. Сейчас я займусь вашим обращением. Ожидайте.
:?:.рад::Был рад вам помочь. Приятной игры на Majestic RP.
:?:.ра::Был рад вам помочь.
:?:.сож::Сожалею, что не успел вам помочь.
:?:.со::Сожалею, что не смог вам помочь.
:?:.нт::Не вижу ответа поэтому закрываю тикет. Если у вас остались вопросы, откройте, пожалуйста, новый.
:?:.ещ::Могу ли я ещё чем-то помочь или могу закрыть данное обращение?
:?:.актуал::Ваш запрос ещё актуален?
:?:.улет::Не вижу каких-либо нарушений. Улетел.
:?:.уле::Не вижу каких-либо нарушений.
:?:.п::Приятной игры на Majestic RP.
:?:.пред::Игрок получил предупреждение. При повторении получит наказание согласно регламенту.
:?:.лсадм::Чтобы написать администратору у вас должен быть хотя бы 1 общий сервер, например сервер "Majestic RP | RU". Если Вы даже после вступления в него не можете написать администратору, попробуйте проверить свои настройки в дискорде. Настройки - Конфиденциальность: Нужно разрешить личные сообщения от участников серверов.

; ПЕРЕСЫЛКА
:?:.тех::Игровая администрация не может помочь вам в этом. Откройте обращение в технический раздел на форуме - https://forum.majestic-rp.ru/forums/obrashcheniya-v-tekhnicheskii-razdel.560/
:?:.техдс::Напишите в техническую поддержку в официальном дискорде Majestic "Помощь по игре" - "тех-поддержка".
:?:.донат::Игровая администрация не может помочь в вопросах связанных с донатом. Обратитесь по почте - help@majestic-rp.ru.

; ЖБШКИ
:?:.жбдолго::Здравствуйте. Сейчас большая нагрузка на обращения. Рассмотрение вашей репорт-жалобы может занять длительное время. Ожидайте.
:?:.жбнет::Здравствуйте. Сейчас большая нагрузка на обращения. Вашу жалобу рассмотреть невозможно. Оставьте её через 10-15 минут, либо на форуме.
:?:.жбкак::Видео в репорт-жалобе должно быть загружено на YouTube, Google Drive, Яндекс Диск, Rutube и называться по форме: Ваш статик, Статик нарушителя, время, дата. Продолжительность видео должна быть не более минуты, а с момента нарушения должно пройти не более часа. 
:?:.выд::Игрок получил наказание. 
:?:.выдрад::Игрок получил наказание. Был рад вам помочь.
:?:.жбкор::Данного видео недостаточно для получения наказания игроком. Вам следует загрузить видео большей продолжительности (Максиум одна минута).
:?:.жбнейм::К сожалению не могу рассмотреть данную репорт-жалобу, нарушена форма подачи. Вам нужно назвать видео следующим образом: Ваш статик, Статик нарушителя, время, дата.
:?:.жбтайм::К сожалению не могу рассмотреть данную репорт-жалобу, нарушена форма подачи. Видео должно быть не более одной минуты. Видео большей продолжительности рассматриваются исключительно на форуме.
:?:.жбютуб::К сожалению не могу рассмотреть данную репорт-жалобу, видео на данной платформе не рассматриваются. Загрузите на YouTube, Google Drive, Яндекс Диск, Rutube.
:?:.жбдавно::К сожалению не могу рассмотреть данную репорт-жалобу,с момента нарушения до момента создания этого репорта прошло более часа. Такие жалобы рассматриваются исключительно на форуме.
:?:.жбрано::По вам начинают стрелять уже через несколько секунд после начала видео. Вам нужно приложить видео большей продолжительности до нарушения, но общей продолжительностью не более минуты.

; ЗАПРОСЫ
:?:.багдай::Создайте обращение в текстовом канале Сообщить-о-баге в официальном дискорд Majestic. Вы поможете в скорейшем решении данного бага.
:?:.жбдай::Вы можете отправить видео в котором видно нарушение игрока в виде жалобы на форум или репорт-тикет.
:?:.нрпдай::Опишите, пожалуйста, в чем проявилось NonRP поведение от игрока, чтобы я точно смог вам помочь.
:?:.ктонак::Уточните, пожалуйста, какой администратор выдал вам наказание?
:?:.сид::Укажите, пожалуйста, static ID игрока.
:?:.ид::Укажите, пожалуйста, ID игрока.

; БПшечка
:?:.бпрыбка::Вам нужно ловить рыбу на зоне, которая соответствует уровню Вашего навыка. Вы можете проверить его в F2 > Персонаж > Навыки. 
:?:.бпгг::Для выполнения данного задания Вам нужно сыграть в указанные в задании мини-игры в "Maze Bank Arena". Она отмечена на карте маркером геймпада. Чтобы начать игру, Вам нужно зайти в здании и нажать клавишу "E", после чего выбрать нужный Вам режим, либо создать собственное лобби.
:?:.арм::Платный армрестлинг находится напротив Шерифского департамента в Палето-Бэй и между СТО и 24/7 в гетто.
:?:.тестдрайв::Вам нужно зайти в здание маркетплейса, пройти в холл с сиденьями и нажать "E", после этого Вам нужно выбрать необходимый транспорт и под фоткой будет кнопка "Тест-драйв".
:?:.автобус::F2 > Настройки > Главное > Тип посадки: приоритет водительское.
:?:.пин::Вам нужно приехать в любое из отделений банка, зайти в интерфейс банка, нажать на кнопку: Сменить PIN-код > Восстановить PIN-код (она будет отображена серым, после нажатия первой кнопки).
:?:.парашют::Для использования парашюта вам нужно переместить его в активный слот оружия. После этого, при нажатии на ЛКМ в воздухе для открытия. После преземления уберите парашют из активного слота и поместите обратно для повторного использования.
:?:.лифт::Нужные вам лифты находятся в зданиях Правительства, Weazel News, новое здание EMS и FIB. Будьте внимательны, в некоторых местах за использования лифтов может последовать ответсвенность по IC законам. 
:?:.квестработа::На многих работах есть диалог "Чем могу помочь?". После его активации справа сверху появится квест связанный с этой работой. Его нужно выполнить.
:?:.автопилот::Автопилот доступен на всех эллектрических автомобилях. Нужно поставить метку на карте, нажать G - Автопилот - Запустить автопилот.

:?:.эвак::К сожалению на этом этапе ивента мы не сможем вам помочь. Если вы застряли, вам придется начать с начала. Для этого нужно выйти из авто.

; Сокращения
:?:.опп::основных правил проекта
:?:.пго::правил государственных организаций
:?:.пко::правил криминальных организаций
:?:.пнфз::правил нападения на Форт-Занкудо
:?:.пнкп::правил нападения на Кайо-Перико
:?:.дпгс::дополнительных правил гос организаций
:?:.поип::правил ограблений и похищений
:?:.ппп::правил перехвата поставок
:?:.пвза::Правил войны за AirDrop
:?:.рж::(репорт-жалоба){left 1}

; Предупреждения
:?:.тих::/asms Не стоит этого делать{left 22}
:?:.лещь::/asms Мы не можем выдать наказание за пощечину, так как не можем быть уверены, что вы на самом деле использовали её функционально. Загрузите этот момент на YouTube и отравьте ссылку в обращение с моим никнеймом. В таком случае игрок получит наказание.{left 246}
:?:.пнрд::/asms Здравствуйте. Вам нужно перестать водить ваше Т/С подобным образом, иначе вы получите наказание согласно правилу nonRP Drive.{left 126}
:?:.пколеса::/asms Здравствуйте. Вам нужно срочно починить ваше авто или вы получите наказание за nonRP Drive.{left 92}
:?:.пооц::/asms Здравствуйте. Вам не стоит использовать OOC термины или темы для разговора не в ООС чат и не находясь в функциональной зеленой зоне с одобрения большинства участников.{left 168}
:?:.пдрака::/asms Вам не стоит драться в зеленой зоне. При продолжении мне придется выдать вам наказание.{left 88}
:?:.псп::/asms Запрещено использовать SoundPad и подобные программы в зеленой зоне. Вам нужно его выключить, иначе мне придется выдать наказание.{left 131}
:?:.пгтайм::/asms Вы дали слишком мало времени для исполнения данного требования. Более требования использования анимаций на которые дается менее 10 секунд не будет наказываться за PG.{left 167}
:?:.пслух::/asms Здравствуйте, функция "Я не слышу" предназначена для людей с плохим слухом или его отсутствием. Злоупотребление этой функцией карается баном Вашего персонажа. Отключить ее можно в меню F2 - Настройки. Спасибо за понимание.{left 223}
:?:.пзвук::/asms Здравствуйте, Функция "Я без звука" предназначена для людей без возможности слышать игроков по техническим причинам. Злоупотребление этой функцией карается баном Вашего персонажа. Отключить ее можно в меню F2 - Настройки.{left 222}
:?:.пузо::/asms Вам нужно использовать анимацию в F2 - Анимации - позы - лечь на живот. Функциональные "ползать" более не считаются за исполнение этого требования.{left 148}
:?:.пузо2::/asms Игрок предупрежден о том, что данное действие более не является исполнением требования. При повторном использовании получит наказание.{left 135}
:?:.пнрп::/asms Здравствуйте. Ваши действия нарушают правило NonRP поведение. Вам стоит прекратить это делать, иначе вы получите наказание согласно регламенту.{left 143}
:?:.пузокак::/asms F2 - Анимации - Позы - Лежать на животе{left 40}

; Погода
:?:.ясно::/setweatherlocal clear
:?:.снег::/togglesnow 0
:?:.снег2::/togglesnow 1

; Оружия и машинки
:?:.рейл::/gw weapon_railgun 999{left 19}
:?:.граник::/gw weapon_grenadelauncher 999{left 27}
:?:.хевик::/gw weapon_heavysniper_mk2 999{left 27}
:?:.миниган::/gw weapon_minigun 999(left 19)
:?:.кулаки::/gw weapon_unarmed 1(left 16)

:?:.кар1::/veh bdivo 21 21 21
:?:.кар2::/veh veneno 21 21 21
:?:.кар3::/veh gtr50 21 21 21
:?:.велик::/veh inductor 21 21 21
:?:.поезд::/veh freightcont1 137 137 137
:?:.матка::/veh guardian 21 21 21
:?:.кардрифт::/veh supragr 21 21 21

:?:.тимя::/tempname Artemiy Testov
:?:.имявсе::/resettempname

; Наказания
:?:.чит7::/hardban 7777 Cheats{left 12}
:?:.чит::/hardban 9999 Cheats{left 12}
:?:.нрд::/ajail 15 nonRP Drive{Left 15}
:?:.нрд2::/ajail 30 nonRP Drive{Left 15}
:?:.нрд3::/ajail 45 nonRP Drive{Left 15}
:?:.нрд4::/ajail 60 nonRP Drive{Left 15}
:?:.нрд5::/ajail 90 nonRP Drive{Left 15}
:?:.нрп::/ajail 15 nonRP Поведение{Left 19}
:?:.нрп2::/ajail 30 nonRP Поведение{Left 19}
:?:.нрп3::/ajail 45 nonRP Поведение{Left 19}
:?:.нрп4::/ajail 60 nonRP Поведение{Left 19}
:?:.нрп5::/ajail 90 nonRP Поведение{Left 19}
:?:.дб::/ajail 30 DB{Left 6}
:?:.дб2::/ajail 60 DB{Left 6}
:?:.дб3::/ajail 90 DB{Left 6}
:?:.дб4::/ban 3 DB{Left 5}
:?:.дм::/gunban 5 DM{Left 5}
:?:.дм2::/ajail 120 DM{Left 7}
:?:.пг::/ajail 35 PG{Left 6}
:?:.пг2::/ajail 60 PG{Left 6}
:?:.пг3::/ajail 75 PG{Left 6}
:?:.пг4::/ajail 90 PG{Left 6}
:?:.спзз::/mute 30 SP in GZ{Left 12}
:?:.спзз2::/mute 60 SP in GZ{Left 12}
:?:.вза::/ajail 30 1.8 правил войны за AirDrop{Left 31}
:?:.кмцл::/kick MCL{Left 4}
:?:.квзм::/kick Помеха ВЗМ{Left 11}
:?:.взм45::/ajail 35 Нарушение правил ВЗМ(Стрельба в/из нейтрала){Left 48}
:?:.взм90::/ajail 90 Нарушение правил ВЗМ{Left 25}
:?:.запретка::/ban 3 Запрещенное слово{left 20}
:?:.маму::/ban 5 4.2 основных правил проекта{left 30}
:?:.маму2::/hardban 30 4.3 основных правил проекта{left 31}
:?:.ооц::/mute 90 OOC in IC{left 13}
:?:.оск::/ajail 20 OOC оскорбление{left 19}
:?:.драка::/ajail 10 Crime in GZ (Драка){left 23}
:?:.уходзз::/ajail 20 Уход в зеленую зону{left 22}
:?:.уход::/warn Уход от RP{left 11}
:?:.уход2::/hardban 4 Уход от RP{left 13}
:?:.нрпник::/ajail 720 До смены имени/фамилии согласно правилам сервера{left 53}
:?:.транс::/ajail 720 До смены пола{left 18}
:?:.багоюз::/warn Использование багов и уязвимостей{left 29}

; АМНИСТИЯ
:?:/am::/ajailcheck
:?:/amm::/unjail Амнистия{left 9}
:?:/ammm::/ajail Амнистия{left 9}
:?:.амвыд::Выдал амнистию. Помните, что при последующих нарушениях в амнистии может быть отказано.

; MCL
:?:.мцлпред::/cb Мы вас более не оповещаем о смене локаций/зон. Вы отсчитываете их самостоятельно, мы лишь говорим в какое время Вы зашли в локацию/зону в случае игнорирования правила про задержку на том или ином месте - Дисквалификация участников/семьи.
:?:.зтайм::/cb Зашли в новую зону в. У вас в ней 5 минут.{left 22}
:?:.лтайм::/cb Локацию заняли в. У вас на ней 2 минуты.{left 24}
:?:.файт::/cb Активный файт. Время на стопе.
:?:.файтвсе::/cb файт окончен. Время на зону и локацию +
:?:.трупы::/cb Контроль трупов. Время на стопе.
:?:.трупывсе::/cb Время на контроль трупов окончено.
:?:.мцлтп::Телепортация на мероприятие происходит исключительно через /cb чат. Ожидайте сообщение от администратора.

; МП
:?:.ошка::/o Уважаемые игроки. Сейчас будет проведено МП "Русская рулетка". Для участия необходимо прописать команду /event. Напоминаю, что Уход от РП в данном случае запрещается. Места не ограничены. Победитель получит - 30.000$
:?:.мпвернуть::/afterevent
:?:.мпвремя::/seteventtime 22 00 00
:?:.мпвремявсе::/reseteventtime
:?:.мпсвет::/eventBlackout
:?:.мппогода::/seteventweather HALLOWEEN
:?:.мппогодавсе::/reseteventweather

; ------------------------------------------------------------------------------------------------------------
;                                                 -----/PLAYERS-----
; ------------------------------------------------------------------------------------------------------------
; f4:: ; По нажатию F4 - открывается меню /players
; SendMessage, 0x50,, 0x4190419,, A
; SendInput, {T}/players{Enter}
; sleep 300
; SendInput, {ё}
; Return
; ------------------------------------------------------------------------------------------------------------
Помощь:
MsgBox, 8192, Помощь, Софт создан для облегчения работы администрации проекта Majestic RP.`n`nО софте:`nСофт автоматически считает кол-во отвеченных репортов в день и в неделю.`n`nДля корректной работы софта необходимо выбрать разрешение экрана, ваш дискорд, сервер и ваш пол в главном меню.`n`nЧтобы настройки вступили в силу, нужно нажать кнопку Сохранить.`n`nСписок клавиш:`nctrl + F9 - Перезапуск программы.`nctrl+ F10 - Закрыть программу. `n`nЕсли что-то сломалось/не работает/есть идеи и т.п. писать - Sec Drokin - StickyEwoks#1337.
return
Телепорты:
MsgBox, 8192, Телепорты.,`n .пд - телепорт на LSPD`n .бол - телепорт на Больницу ЛС`n .шд - телепорт на Шерфи Департамент`n .фз - телепорт на Форрт`n .гов - телепорт на Мерию`n .вн - телепорт на Новости`n .фиб - телепорт на ФИБ`n `n .бал - телепорт на Балласов`n .ваг - телепорт на Вагасов`n .фэм - телепорт на Фэмов`n .бладс - телепорт на Бладсов`n .мара - телепорт на Марабунту`n `n .лкн - телепорт на ЛКН`n .рм - телепорт на РМ`n .як - телепорт на Якудзу`n .мекс - телепорт на Мексиканцев`n .ам - телепорт на Армян`n `n .лост - телепорт на лостов`n .аод - телепорт на АОД`n .ириш - телепорт на Ирландцев`n `n .хум - телепорт на Хуман Лабс`n .мейз - телепорт на Мейз Банк`n .каз - телепорт на Казино`n .гг - телепорт на ГанГейм`n .кайо - телепорт на Остров.`n .авиа - Телепорт на авианосец `n .мол - Телепорт на мол `n .трас - Телепорт на искуственную трассу`n .аук - Телепорт на аукцион`n .бар - Телепорт телепорт в бар с интой`n .бк - Телепорт на букмекерскую контору`n .ванила - Телепорт в стрип клуб Vanila Unicorn`n .починка - Телепорт на СТО Hayes`n .лск4 - Телепорт к 4 лск, .инт1 - .инт14 - изолированные интерьеры
return
Команды:
MsgBox, 8192, Команды,Все команды случайно написанные на транслите будут конверсирвоанные в номальное состояние. Пример: .ез -> /tp.`n `n `n /tn - Поставить временное имя.`n /zzd - Вкл/Выкл показ зеленых зон.`n .sdc - /setcardim `n.rst - /resettempname `n /gzone - выключать/выключать GreenZone. Названия зон в Инфо.`n /mch - Проверить игрока на активный мут.`n /ach - Проверить на активный деморган `n /bch - Проверить на активный бан.`n /af - Заразить игрока болезнью (0 - нет, 1, 3).`n /ai - Уволить игрока из фракции.`n /sk - Тихий кик игрока.`n /k - Обычный кик.`n /gc - Телепортировать авто к себе (/getcar).`n /ch - Включить инвиз для читеров (/chide).`n /sc - Заспавнить автомобиль фракциии (/spawncar)`n /ad - Администраторы в сети (/admins).`n /p - Список всех игроков сервера (/players).`n .рес - Воскресить игрока (/rescue ID).`n .ку - Выводит в чат -  Здравствуйте,.`n /sp - Начать слежку за игроком (/spec ID).`n /so - Отменить режим слежки (/specoff).`n /kill - убить игрока (/hp ID 0).`n .пиздец - Если пизда по репортам, а админы AFK (особенно Мёрфи).`n .афк - Сказать что ты отошёл от ПК.`n .дис - Отправит игроку ваш дискорд.`n .га - Отправит игроку дискорд ГА.`n .зга - отправит игроку дискорд зГА.
return
Ответы:
MsgBox, 8192, Ответы 1, Короткие команды для удобства.`n.пут - Приветствую, всю информацию (команды/о фракциях, работах и так далее) можно узнать на форуме majestic-rp.ru - раздел "Путеводитель для новичков", а также на wiki.majestic-rp.ru. `n.увал - Здравствуйте. К сожалению, ничем не можем помочь. Дождитесь своего лидера/заместителей или свяжитесь с куратором своей фракции в личные сообщения Discord. `n.майки - Здравствуйте. Для того, чтобы купить майку под верхнюю одежду, вам нужно сначала купить элемент верхней одежды (например, пиджак). После этого вам буду доступны все майки, которые подходят под нее в разделе "Майки". `n.слух - Здравствуйте, функция "Я не слышу" предназначена для людей с плохим слухом или его отсутствием. Злоупотребление этой функцией карается баном Вашего персонажа. Отключить ее можно в меню F2 - Настройки. Спасибо за понимание. `n.баг - Знаем о данной проблеме, она уже передана разработчикам.`n.рел - Попробуйте перезайти через F1 > Direct Connect > Connect или полностью в игру (F1 - Quit Game). `n.рп - Извините, но это РП процесс, мы не вправе вмешиваться в него. `n.урп - Приветствую, данную информацию вы можете получить при взаимодействии с другими игроками/самостоятельным поиском непосредственно во время игрового процесса, либо другим доступным IC путем. Приятной игры и самого лучшего настроения на Majestic RP. `n.войс - Чтобы перезагрузить войс, попробуйте нажать F7 или /v_reload в чат. Если ничего не помогает - перезайдите в игру. `n.тех - Здравствуйте, напишите в технический раздел на форуме. `n.техдс - Здравствуйте, напишите в раздел официального дискорд сервера "Помощь по игре" - "чат-поддержки". `n.функ - Данный функционал временно недоступен, приносим свои извинения. `n.фун - Данный функционал не присутсвует у нас на сервере. `n.изв - Приносим свои извинения за предоставленные неудобства. `n.рыба - Здравствуйте, Вам нужно нажать F3 > Разное > Продажа рыбы. `n.ехп - Каждый час (у каждого игрока своё время) Вам дается EХP. Чтобы узнать, сколько Вам осталось до следующего PayDay, нажмите клавишу F2-Статистика. `n.авто - Чтобы эвакуировать Ваше авто воспользуйтесь маркером Сервиса (Гаечный ключ на карте). Приятной игры. `n.зп - Чтобы начислялся PayDay Вам нужно иметь свою банковскую карту и быть уволеным со всех работ. Оформить её можно в любом банке. `n.ганлиц - Получить лицензию на оружие можно в LSPD или LSCSD. Приятной игры. `n.канистра - Чтобы использовать канистру, возьмите её в руки, нажмите G на авто и заправить. Приятной игры. `n.емс - К сожалению, администрация не поднимает и не лечит игроков, воспользуйтесь услугами ЕМС. `n.подним - Приветствую. К сожалению, не видя всей ситуации мы не в праве лечить,поднимать или добивать игроков. Дождитесь сотрудников EMS либо же окончания таймера смерти. Приносим свои извинения за возможные неудобства. `n.жб - Здравствуйте, администрация не может выдавать наказания и выносить какие-либо вердикты не видя всей ситуации. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо большое за понимание. `n.анак - Приветствую. Обратитесь, пожалуйста, в дискорд к администратору, который выдал вам наказание. `n.адс - Данный администратор сейчас отсутствует на сервере, напишите ему в личные сообщения в дискорде.`n.адз - Данный администратор сейчас занят другим делом или отошел от компьютера на короткое время, напишите ему в личные сообщения в дискорде.`n.погода - К сожалению, администрация не контролирует данный процесс. Погода меняется автоматически. `n.неп - Опишите Вашу проблему/вопрос подробнее в f2-обращения для максимально точного ответа, пожалуйста. `n.донат - Обратитесь по почте - help@majestic-rp.ru. `n.аут - Для подключения Google authenticator вам нужно в меню выбора персонажа открыть раздел настроек.`n`n.х2 - Приветствую.Теперь коины выдаются по выходным, по будням прокрутка рулетки за 5 часов игры.`n`n.огр - Приветствую. Чтобы начать ограбление бизнеса, вам нужно позвонить по номеру: 28121903. Для этого надо быть в крайм организации, и находится рядом с банком (как минимум вас должно быть 4 около банка, иначе не сможете). Для начала ограбления требуется "План ограблений", который выбирается в AirDrops или при ограблении бизнесов.Можно грабить 1 раз в день каждой огранизации.После того, как ограбление началось и банк получил красную иконку, надо прицелиться в бота и заполнить прогресс бар.Дальше будет большая дверь, что бы ее разблокировать, нужно пройти мини-игру со взломом. Для этого используем «Программатор ЭБУ» + «Кабель электронных дверей». Он продается у торговца на рынке. После взлома перед вами будет стоять стойка с деньгами. Далее идет 2-я дверь. Для ее взлома нам необходима «Ключ карта Fleeca» либо «Термитная установка».«Ключ карта Fleeca» выпадает с ботов при ограблении бизнесов, или на аир дропах.«Термитная установка» продается у пиротехника. С ее помощью дверь открывается за 2 минуты.`n`n.огр2 - Для этого надо взять в руки один из предметов, чтобы открыть дверь. Но в хранилище есть ячейки, для взлома ячеек необходима «Дрель 1500w». Дрель крафтится у криминальных организаций и выпадает при смерти. После успешного прохождения мини-игры по взлому ячейки на пол падает награда.`n`n.дрон - Дрон крафтится у силовых гос.структур и Weasel News. Пользоваться им могут соответственно эти же гос.структуры. Чтобы подняться-пробел, чтобы опуститься-shift. На E-тепловизор включить/выключить.`n`n.аукц - Приветствую. На аукцион вы можете выставить авто/бизнес/дом/квартиру. Во время того, как вы выставляете лот, вы можете лишь ездить на авто. При продаже на акционе дома/квартиры-кладовка передаётся покупателю полностью.`n`n.дрифт - Дрифт счётчик можно включить через F2 > Настройки. Он появляется во время управляемого заноса и показывает, на сколько хорошо вы прошли поворот.На карте вы можете увидеть зоны, где можно дрифтить и попасть в список топ-дрифтеров. Для этого Вам обязательно дрифтить по отмеченной зоне. В противном случае очки не засчитаются.Покажите, кто здесь настоящий король дрифта!
return
Ответыдва:
MsgBox, 8192, Ответы 2, Короткие команды для удобства.`n.сид - Укажите static ID игрока с которым у Вас происходил РП процесс.`n.бизограб - Здравствуйте, чтобы ограбить бизнес, вам нужно: одеть маску, приобрести оружие и, придя в магазин в составе от 2 до 35 человек, навестись на NPC (продавца) огнестрелом (только один человек должен грабить). Приятной игры на Majestic RP.`n.хп - Перезайдите в игру, либо купите таблетку у сотрудников EMS. `n.ремонт - Приветствую, для начала, Вам нужно купить запчасть для машины на любой АЗС, после чего открыть капот , нажать G > Починить замок/аккумулятор/залить масло. Приятной игры. `n.ферм - Приветствую, на ферме для посадки каждого из растений нужны следующие навыки: Пшеница - 225 опыта. Картофель - 950 опыта. Капуста - 2000 опыта. Кукуруза - 3000 опыта. Тыква - 6200 опыта. Бананы - 10500 опыта. `n.гос - Вы можете сдать авто на свалку. После сдачи вы получите 75 процентов от гос. стоимости авто. Свалка отмечена на карте как перечеркнутый, красный круг. `n.аним - Здравствуйте, остановите анимацию. F2 > Анимации > Остановить анимацию. `n.рыбка - 1ур.(0exp) - зоны: 1, 2, 3, 4, 5 - Форель, 0,26$ за грамм; 2ур.(300exp) - зоны: 6, 7, 8 - Камбала, 0,09$ за грамм; 3ур.(700exp) - зона 9 - Тунец, 0,03$ за грамм; 4ур.(1500exp) - зона 10 - Красный солдат, 0,43$ за грамм; 5ур.(3000exp) - зона 11 - Карась, 0,14$ за грамм.; 6ур.(5200exp) - зона 12 - Оранжевый карп, 0,05$ за грамм; 7ур.(9200exp) - зона 13 - Аквамарин, 0,18$ за грамм; 8ур.(18000exp) - зона 14 - Золотая рыбка, 0,71$ за грамм. Приятной игры на Majestic RP. `n.ид - Здравствуйте, укажите, пожалуйста, ID нарушителя. `n.сто - Степень износа определенных деталей автомобиля можно узнать на автомастерской (иконка гаечного ключа с отверткой на карте). `n.жба - Вы можете написать жалобу на форум, если не согласны с решением администратора. `n.дон - Задонатить можно на нашем официальном сайте - majestic-rp.ru/donate `n.инкас - Чтобы совместно работать Вам необходимо быть устроеным на работу (всем), загрузиться, а затем через G пригласить на работу. `n.грибы - Здравствуйте, чтобы собирать грибы вам надо приехать на точку "Грибы" 1/6 и взять в руки нож. `n.гриб - Продать грибы можно на рынке. `n.рын - Рынок находится в Лос-Сантосе на пляже рядом с качалкой. `n.оружрын - Приветствую. Боту на рынке можно сдать оружие только со 100 процентным износом. `n.новость - Здравствуйте, позвоните или придите лично в Weazel News. Приятной игры. `n.п - Приятной игры на Majestic RP. `n.нов - Следите за новостями сервера в официальном дискорде проекта. Приятной игры. `n.ник - Сменить ник Вы можете нажав - F2 > Донат > Настройки персонажа. `n.банк - Приветствую, у нас на сервере есть 3 вида банковских карт: Standart, Premium, VIP. Standart карта стоит в обслуживании 500$ в месяц, снятия и переводы без комиссии до 500.000$ после превышения месечного лимита комиссия на вывод 5 процентов(Максимум 20.000$), на перевод 4 процента(Максимум 20.000$), кэшбек в магазинах отсутствует. Premium карта стоит в обслуживании 25.000$ в месяц, снятия и переводы без комиссии до 2.500.000$ после превышения месечного лимита комиссия на вывод 4 процента(Максимум 15.000$), на перевод 3 процента(Максимум 15.000$), кэшбек в магазинах 1 процента, лимит кэшбека на одну операцию до 2.500$, месечный лимит кэшбека 50.000$. VIP карта стоит в обслуживании 75.000$ в месяц, снятия и переводы без комиссии до 20.000.000$ после превышения месечного лимита комиссия на вывод 3 процента(Максимум 20.000$), на перевод 2.5 процента(Максимум 20.000$), кэшбек в магазинах 3 процента, лимит кэшбека на одну операцию до 10.000$, месечный лимит кэшбека 150.000$. Деньги за обслуживание и лимиты снимаются каждое 1 число нового месяца. `n.кавто - Чтобы сделать дубликат ключей от авто необходимо купить заготовку в магазине 24/7, затем нажать G на авто и сделать дубликат. `n.клад - Чтобы сделать дубликат от кладовки, необходимо купить заготовку в магазине 24/7, затем через G передать дубликат нужному человеку. `n.тел - Приветствую, попробуйте купить телефон еще раз в магазине 24/7, деньги с вас не спишутся. `n.подсел - Приветствую, чтобы подселить игрока к себе в дом или же квартиру, стоя около дома, наведитесь на игрока и нажмите G, далее нажмите Подселить. `n.краш2 - Здравствуйте. Если у Вас есть доказательства краша - предоставьте его любому администратору в личные сообщения дискорда. Вас выпустят. `n.замок - Вам необходимо купить "Дверной замок" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Капот, после этого G -> Починить дверной замок. `n.акум - Вам необходимо купить "Аккумулятор" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Капот, после этого G -> Заменить аккумулятор.
return
Ответытри:
MsgBox, 8192, Ответы 3, Короткие команды для удобства.`n.масло - Вам необходимо купить "Моторное масло" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Капот, после этого G -> Заменить масло. `n.модел - Пункт "Прогрузка моделей" отвечает за быстроту прогрузки текстур при приближении к ним. `n.капт - Здравствуйте, администрация не телепортирует, не лечит, не поднимает игроков перед каптом и после него, обратитесь к своим кураторам фракции в дискорд.`n.биз - Здравствуйте, администрация не телепортирует, не лечит, не поднимает игроков перед бизваром и после него, обратитесь к своим кураторам фракции в дискорд.`n.взп - Здравствуйте, администрация не телепортирует, не лечит, не поднимает игроков перед ВЗП и после него, обратитесь к своим кураторам фракции в дискорд.`n.нетп - Приветствую, администрация не телепортирует игроков, Вам нужно добраться до места самостоятельно. `n.спавн - Здравствуйте, cпавн новичков находится в Палето-Бей, Чумашах, Аэропорту и на Автовокзале. Приятной игры на Majestic RP. `n.кредит - Любые финансовые договоры (займы, кредиты и т.д) не относятся к ООС сделкам. Все подобные сделки игроки совершают на свой страх и риск. Администрация не несет ответственности и не является гарантом сделки. `n.рем - Приветствую, чтобы починить своё авто купите рем.комплект на любой АЗС. Через меню G почините Ваш автомобиль. `n.сделка - Приветствую, администрация не следит за сделками игроков, запишите видео на случай обмана, чтобы оставить жалобу на игрока на форуме. Приятной игры на MajesticRP. `n.имя - Ваше Имя Фамилия не подходит по правилам нашего сервера. Вам нужно сменить ник и написать в репорт повторно, если Ваш ник будет соблюдать правила сервера, то Вас выпустят. `n.актуал - Приветствую. Приносим извинения за столь долгое ожидание. Пожалуйста, если проблема еще актуальна, продублируйте её в /report. Спасибо за понимание. `n.лечу - Приветствую. Уже лечу к Вам на помощь. `n.пом - Приветствую. Сейчас помогу Вам, ожидайте. `n.багзз - Приветствую. Чтобы восстановить прежнюю скорость, заедьте в зеленую зону и выедьте с нее. `n.слетдом - Приветствую. Свободные дома обозначаются карте зеленым цветом. Они слетают каждый час, начиная с 00:00. Чтобы его купить, Вам потребуется иметь полную гос. стоимость наличными. `n.госдом - Приветствую. Чтобы продать дом в гос. стоимость, нужно подойти к двери и нажать Е. Вы получите 75 процентов от его гос. цены. Если Вы невовремя оплатите налоги или забудете это сделать, дом слетит автоматически. `n.майки - Здравствуйте. Для того, чтобы купить майку под верхнюю одежду, вам нужно сначала купить элемент верхней одежды (например, пиджак). После этого вам буду доступны все майки, которые подходят под нее в разделе "Майки".Приятной игры и самого лучшего настроения на Majestic RP. `n.рыблиц - Приветствую, получить лицензию на рыбалку вы можете в Мэрии. Приятной игры и самого лучшего настроения на Majestic RP. `n.погода - Приветствую, к сожалению администрация не контролирует данный процесс. Погода меняется автоматически. Приятной игры и самого лучшего настроения на Majestic RP. `n.реп - Приветствую. Пожалуйста, уточните свой вопрос подробнее в /report. Администрация не летает на репорты по типу 'админ тп', 'админ можно поговорить', 'помогите', 'админ есть вопрос'. Количество символов в /report неограничено, вы можете полностью расписать Вашу проблему/вопрос. `n.неувид - Приветствую, к сожалению администрация не может увидеть это нарушение. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо большое за понимание. `n.кости - Приветствую, чтобы играть в кости вам нужно купить их в любом 24/7. После того как вы купили кости, вы можете подойти к игроку. `n.парк - Чтобы припарковать ТС, за рулем нажмите G - Припарковать. `n.новичок - Приветствую. Путеводитель находится на спавнах новичков. Они обозначены на карте значком машущего человечка. `n.да - Приветствую. Да. Приятной игры и хорошего настроения. `n.нет - Приветствую. Нет. Приятной игры и хорошего настроения. `n.инв - Приветствую. Это баг инвентаря, вам нужно открыть любое другое окно инвентаря, например, багажник, кладовка, склад фракции. Если ничего из перечисленного нет по близости, то перезайдите на сервер F1 - Direct connect. Приносим свои извинения за предоставленные неудобства.`n .арынок - Для того, чтобы выставить свое авто на продажу, Вам необходимо приехать на территорию авторынка, выбрать место и нажать на клавишу "G" - Авторынок - Выставить на продажу.`n .ставка - Расчёт ставки происходит в течение 6-ти часов. Администрация не управляет рассчетом. Приятной игры и лучшего настроения на Majestic RP.`n .багвойс - Нажмите F2-настройки-блокировка войса - заблокируйте для всех и снова разблокируйте. В случае, если проблема осталась, то перезайдите в игру.
return
Ответыобн:
MsgBox, 8192, Ответы по последнему обновлению, Ответы к двум обновлениям.`n`n .метал - Металлоискатель становится активным как только Вы берете его в руки. Когда он найдет сокровища, то будут происходить визуальные и звуковые оповещения. От зеленого цвета, до красного. Места расположения сокровищ: пляжи и архипелаги. `n`n .клвл - Приветствую. При достижении 5-го уровня: 500 MC При достижении 10-го уровня: 1000 MC При достижении 15-го уровня: 2000 MC При достижении 20-го уровня: 3000 MC При достижении 25-го уровня: 4000 MC При достижении 30-го уровня: 5000 MC. Каждый следующий уровень после 30-го Вы будете получать 1500 MC. Приятной игры на Majestic RP.`n`n .квест - На сервере теперь доступны Мировые и Личные квесты. Ознакомиться с ними можно на рынке (На карте обозначен как "Красный вопрос"). Квесты доступны всем. Личные квесты вы можете проходить неопределенный срок, но, если Вы захотите участвовать в Мировом квесте и получить дополнительные бонусы, то Вам нужно поторопиться выполнить личный квест. Только 5 лучших игроков смогут попасть в топ 3 и залутать дополнительные бонусы. - Каждую неделю доступно по 3 личных и мировых квеста. - Некоторые квесты по типу инкасатора/мусорщика/почтальона можно выполнять в 2-ем и более, засчитывать будем всем.`n`n .фед - На первом этаже стоит NPC у которого можно взять задание. Чтобы отбыть срок в федеральной тюрьме, нужно выполнять задачи. Например помыть туалет - В определенное время тюрьма закрывает клетки на 5 минут, соответственно, в это время отбыть срок нельзя: -- Открываются клетки в 00 минут -- Закрываются клетки в 20 минут на 5 минут -- Открываются клетки в 25 минут -- Закрываются клетки в 55 минут на 5 минут.`n .рыбалка - Приветствую. Для того чтобы рыбачить, Вам  нужна удочка и наживка - покупается в любом магизине 24/7. Подходите к зоне рыбалки своего уровня и нажимаете клавишу Е. Ждёте клёва, как появится рыба, она будет вилять в стороны влево-вправо. Вам нужно зажимать клавиши A/D противоположной стороны рыбы. После того как рыба утомилась, Вы её подсекаете левой кнопкой мыши. Приятной игры на Majestic RP.`n`n`nОтветы по обновлению 09.06.21. `n`n .сейф-  Приветствую, закрывать интерфейс сейфа можно только на ESC. В сейф можно класть до 5 миллионов. Деньги идут из налички. Нельзя продать дома в гос, продать игроку, предложить обмен, выставить на аукцион, если в сейфе есть деньги. Сначала требуется их забрать. Если дом слетает по налогам - деньги из сейфа игрок получает в наличку. Приятной игры на Majestic RP.`n`n .лесоруб - Устраиваться необходимо все у того же NPC около Палето-Бей. Для начала работы Вам понадобиться "Топор", купить его можно у NPC на Рынке. Принцип работы схожий с Грибниками, точки для сруба деревьев разбросаны по всей карте, каждый уровень привязан к свой точке сбора. Древесину можно продать на рынке. Приятной игры на Majestic RP.`n`n .рация - Приобрести рацию можно в любом магазине 24/7, в разделе "Электроника", за всеми фракциями закреплен диапазон частот, который не могут занять. В F2 -> Настройки можно изменить Громкости рации.`n`n .рац - Приветствую, если кнопка войса была не на "N", то поставьте её на N и перезайдите, после чего рация заработает. Кнопку можно вернуть на свою. Для использвания: Возьмите рацию > Введите чистоту >Нажмите Enter > Зажмите "M" и будет слышно.
return
Наказания:
MsgBox, 8192, Наказания, sID - статический ID(#)`nID - динамический ID([ ])`n `n .хард - /hardban sID 7777 Cheats`n.хард9 - /hardban sID 9999 Cheats`n`n`n.дм - /ajail sID 100 DM`n`n.секс - /warn sID Секс. аним. без отыгровок`n`n.муз - /mute sID 30 Music in ZZ`n`n.смник - /ajail sID 720 Смените Имя_Фамилия согласно правилам сервера`n `n.нрд - /ajail sID 15 nonRP Drive`n.нрд25 - /ajail sID 25 nonRP Drive`n.нрд45 - /ajail sID 45 nonRP Drive`n.нрд70 - /ajail sID 70 nonRP Drive`n.нрд90 - /ajail sID 90 nonRP Drive `n`n.нрп - /ajail sID  15 nonRP Поведение`n.нрп25 - /ajail sID 25 nonRP Поведение`n.нрп45 - /ajail sID  45 nonRP Поведение`n.нрп70 - /ajail sID  70 nonRP Поведение`n.нрп90 - /ajail sID  90 nonRP Поведение`n`n.дб - /ajail sID 30 DB`n.дб45 - /ajail sID 45 DB`n.дб60 - /ajail sID 60 DB`n.дб75 - /ajail sID 75 DB`n.дб90 - /ajail sID 90 DB`n`n.пг - /ajail sID 35 PG`n.пг55 - /ajail sID 55 PG`n.пг75 - /ajail sID 75 PG`n.пг90 - /ajail sID 90 PG`n`n `n.ккапт - /kick ID Помеха капту`n.кбиз - /kick ID Помеха бизвару`n.квзп - /kick ID Помеха ВЗП`n.квзм - /kick ID Помеха ВЗМ`n`n.взм45 - /ajail sID 45 Нарушение правил ВЗМ(Стрельба в/из нейтрала)`n.взм90 - /ajail sID 90 Нарушение правил ВЗМ`n`n `n.оса30 - /hardban sID 30 Оскорбление администрации`n.оса15 - /hardban sID 14 Оскорбление администрации`n.оса10 - /hardban sID 10 Оскорбление администрации`n.оса - /hardban sID 7 Оскорбление администраци
return
Скилы:
MsgBox, 8192, Скилы, Навыки:.`n`n.вынос: Выносливость - навык выносливости повышается от подвижного образа жизни. Чем больше ты бегаешь, тем быстрее повышается навык. При низком навыке, персонаж не может прыгнуть 2 раза и падает. Соответственно повышение навыка влияет на длительность беспрерывного бега и количество прыжков, максимум на последнем уровне - 2.`n`n.сила: Сила - навык силы повышается от физических нагрузок. Чем больше ты занимаешься в качалке (иконка бегущего человека на карте), тем быстрее повышается навык. От прокачки увеличивается сопротивление к урону от падения.`n`n.дых: Дыхание - навык дыхания повышается от длительного нахождения под водой. Чем больше ты плаваешь, тем быстрее повышается навык. Соответственно повышение навыка влияет на длительность беспрерывного плавания под водой.`n`n.вожден: Вождение - навык вождения повышается от времени, проведенного за рулем автомобиля. Чем больше ты водишь транспорт, тем быстрее повышается навык. От прокачки увеличивается управляемость транспортным средоством.`n`n.полет: Полет - навык пилотирования повышается от времени, проведенного за воздушным транспортом. Чем больше ты летаешь на самолете или вертолете, тем быстрее повышается навык. Также навык можно повысив пройдя курсы в летной школе. Пройти их можно 1 раз в 24 часа, увелчение навыка от 1 занятия - 10, стоимость одного занятия - 2 000$. От прокачки навыка увеличивается стабильность полета и управляемость воздушным транспортом.`n`n.скрытн: Скрытность - навык скрытности повышается от количества успешных уходов от погони (понижений уровня розыска). Чем чаще ты скрываешься от полиции, тем быстрее повышается навык. От прокачки уменьшается время, которое ты будешь находиться в розыске (быстрее пропадают звезды).`n`n.стрельба: Стрельба - навык стрельбы повышается от времени, проведенного в перестрелках, либо тренировках. Чем лучше ты стреляешь и попадаешь, тем быстрее повышается навык. Рекомендуем тренироваться в специально отведенных для того местах, тире в оружейном магазине. От прокачки навыка увеличивается скорость перезарядки и перекатов, кучность стрельбы.
return
Нов:
MsgBox, 8192, Список нововведений, Разработчиками теперь являются FILANT & Sec Drokin`n `nСписок изменений 08.02.2022`n -Фикс выдачи.`n`nСписок изменений 01.11.2021`n -Быстрая команда /tf - tempfamily.`n -Ответ - .метал.`n`nСписок изменений 13.08.2021`n -Обновил памятку под новые наказания.`n -Обновил "наказания" под новый регламент. [Наказания]`n -Добавил разные вариации наказаний под правила.`n -Фикс разрешения 2560х1440, теперь оно корректно выбирается. `n`nСписок изменений 04.08.2021`n -Добавил возможность отправлять и обновлять дискорд зГА.`n -Добавил хоткей быстрого убийства игрока. [Убить игрока]`n -Переместил некоторые элементы интерфейса. `n -Добавил пару картинок в интерфейс в акутуал 1му серверу. `n`nСписок изменений 25.07.2021`n -Корректировки в ответы.`n -Добавил 2 ответа: .рыбалка, .ставка.`n`nСписок изменений 23.07.2021`n -Вернул возмможность биндить ESP. `n`nСписок изменений 22.07.2021`n -Актуализировал памятку согласно новому регламенту наказаний из-за изменений в системе деморгана.`n -Добавил новые ответы к обновлению: .клвл, .квест, .фед. [Ответы Обновление]`n -Обновил время в командах наказаний. [Наказания]`n`nСписок изменений 18.06.2021`n -Убрал привязку быстрого репорта и ответа от кнопок. `n -Добавил возможность назначить хоткей на "Быстрый репорт" и "Быстрый ответ" `n`nСписок изменений 12.06.2021`n -Добавил быстрый репорт для монитора 1600x900.`n`nСписок изменений 09.06.2021`n -Актуализировал памятку.`n -Добавил новые команды:`n /amph [ID] - Включить элемент экстерьера на Амфитеатре.`n /ramph [ID] - Выключить элемент экстерьера на Амфитеатре. Элементы в Инфо.`n /gzone [NAME] - выключать/выключать GreenZone. Названия зон в Инфо.`n /mcheck [STATIC] - Проверить игрока на активный мут.`n /zzd - Вкл/Выкл показ зеленых зон.`n -Добавил транслит команд новых и некоторых команд.`n -Изменил описание скилла "Выносливость".`n -Добавил новые ответы к обновлению. [Ответы обновление].`n -Обновил точки телепортов и их список [Телепорты].`n -Добавил новую кнопку с нужной информацией [Инфо].`n -Добавил команду при входе - /zzdebug.`n -Добавил хоткей на Вкл/Выкл zzdebug.`n -Фикс некоторых MsgBox'ов.`n -Фикс зависания биндера при запуске.`n -Правки в интерфейс. ;`n`nСписок изменений 04.06.2021`n -Добавил ответ: .адз.`n -Изменил ответ: .адс.`n`nСписок изменений 03.05.2021`n -Добавил ответ .тайм.`n`nСписок изменений 23.04.2021`n -Добавил разрешение 1280х1024.`n -Обновил памятку.`n -Фиксы счетчика по разрешениям.`n -Фиксы "быстрого репорта" по разрешениям.`n`nСписок изменений 14.04.2021`n -Изменены некоторые точки телепортов. `n -Добавлены точки телепортов: .мол, .трас.`n -Корректировки в командах.`n`nСписок изменений 10.04.2021`n -Добавлено соотношение сторон 5:4 для разрешения 1920x1080.`n -Фикс "быстрого репорта" для разрешения 1366x768. `n`nСписок изменений 04.04.2021`n -Добавлены ответы - .аут, .х2, .огр, .огр2, .дрон, .аукц, .дрифт, .арынок.`n`n ;Список изменений 19.03.2021`n -Актуализирован и расписан ответ .банк.`n -Добавлен быстрый ответ .сид. `n`nСписок изменений 16.03.2021`n -Небольшие изменения в главном интерфейсе под актуал 1 серверу.`n -Обновил координаты респов(Мекс, Фэм).`n`nСписок изменений 08.03.2021`n - Актуал памятки `n`nСписок изменений 03.03.2021`n - Добавил команду-ответ .пузо (Актуал 1 сервера)`n - Добавил короткие команды и их транслит: /ld, /af, /ai, /sk, /k `n `n Список изменений 17.01.2021`n - Добавил короткие команды: /tl, /sd и их транслит.`n `n Список изменений 14.01.2021`n - Фикc "быстрого репорта".`n`n Список изменений 12.01.2021`n - Фикс "быстрого репорта".`n - Добавил "Быстрый репорт" под HD монитор (1440х900).`n - Добавил предупреждение на "Быстрый репорт" для других разрешений монитора.`n `n Список изменений 10.01.2021`n - Добавлено больше транслит команд.`n - Добавлены ответы: .инв. `n - Добавлено предупреждение от Глебасика`n `n Список изменений 09.01.2021`n - Обновили памятку под актуальные изменения.`n - Alt + E - быстро взять первый репорт(пока что только под 1920х1080). `n - Небольшой фикс быстрых репортов (для нытика кирито)`n `n Список изменений 08.01.2021`n - Добавлены команды .дис, .капт, .биз, .взп, .нетп, .секс, /sc.`n - Сменили название биндера на Gen4ik Binder.`n`nСписок изменений 07.01.2021:`n - Починили автообновление биндера.`n - Обновили памятку под актуальные правила.`n - Обновили ответы под актуальный функционал.`n - Добавили новые команды.`n - Добавили и изменили ответы.`n - Полностью переписали документацию.`n - Вырезали ненужный код.`n - Починили счётчик.`n - Изменили картинку актуальную первому серверу.
return
Инфо:
MsgBox, 8192, Админ-инфо, Скилы: `n stamina - выносливость`n strength - сила`n lung_capacity - дыхание`n wheelie_ability - вождение`n flying_ability - полет`n shooting_ability - стрельба`n stealth_ability - скрытность`n`n builder - Строитель`n butcher - Мясник`n trucker - Дальнобойщик`n fishing - Рыбалка`n busdriver - Водитель автобуса`n moneycollector - Инкассатор`n vineyard - Виноградник`n lumberjack - Лесоруб`n garbagecollector - Мусорщик`n farmer - Фермер`n burger - Повар`n mushroomer - Грибник`n gopostal - почтальон`n`n gangjob - Гетто закладчик`n mafiajob - Мафия закладчик`n bikerjob - Байкер закладчик`n hijacker - Угонщик`n`nЛицензии:`n drived - Легковой транспорт`n drivem - Мотоциклы`n CDLA - Тягачи и моногрузовики`n CDLB - Пикапы и грузовики`n CDWL - Оружие`n FH - Охота и рыбалка`n Business - Бизнесы`n`nЭлементы амфитеатра:`n ID 0 - Одна стойка для выступлений`n ID 1 - Две стойки для дебатов`n ID 2 - Три стойки для дебатов`n ID 3 - Четыре стойки для дебатов`n ID 4 - Американские флаги вдоль и на сцене`n ID 5 - Камеры на сцене`n ID 6 - Стол с креслами и баннерами на сцене для конкурса талантов`n`n ;Список зеленых зон: `n pillbox - EMS ЛС`n cityhall - Мэрия ЛС`n casino - Diamond Casino`n lspd - Полицейский департамент`n gungame - Maze Bank Arena`n car-scrap - Свалка`n boat-station - Спавн лодок`n yacht - Яхта`n grand-club - Неофка Гранд Леона`n trucker-paleto - Дальнобойщик Палето`n driving-school - Автошкола`n market - Рынок`n car-market - Авторынок`n bahama - Клуб Багама`n auction - Аукцион`n auction-interrior - Аукцион интерьер`n weazel-news - Визлы ЛС`n gopostal - Работа почтальона ЛС`n builder - Стройка Лос-Сантос`n builder2 - Стройка на крыше Лос-Сантос`n golf-club - Гольф Клуб ЛС`n car-spawn-ls - Ключик для спавна авто`n spawn-lsia - Спавн в аэропорту`n spawn-paleto - Спавн в Палето-Бей`n church-ls - Церковь ЛС`n church-paleto - Церковь Палето`n amphitheater-ls - Амфитеатр ЛС`n federal-prison - Федеральная тюрьма`n shpd-ems-sandy - ЕМС и Шерифы Сэнди`n farm - Ферма`n ems-paleto - ЕМС Палето`n forest1 - Первый лес`n forest2 - Второй лес`n forest3 - Третий лес`n forest4 - Четвертый лес`n mushrooms1 - Первая зона грибов`n mushrooms2 - Вторая зона грибов`n mushrooms3 - Третья зона грибов`n mushrooms4 - Четвертая зона грибов`n mushrooms5 - Пятая зона грибов`n mushrooms6 - Шестая зона грибов`n trucker - Дальнобойщик порт`n butcher - Мясник гетто`n busdriver - Автовокал`n bk - Букмекерская контора`n church-vineyard - Церковь на винограднике`n lsc1 - ЛСК Аэропорт ЛС`n lsc2 - ЛСК Справа от ЛСПД`n lsc3 - ЛСК Беннис`n lsc4 - ЛСК Сэнди`n lsc5 - Палето`n leopold - Магазин ИРЛ одежды`n bar-paleto - Бар палето`n vanila - Стрип клуб Ванила Юникорн`n tequila - Бар TeQui-La-La`n comedy - Comedy Club`n club-ls - Клуб около ВВ`n moto-dealer - Мотосалон`n bean-machi
return
^F9::reload
^F10::Exitapp

; СЧЕТЧИК РЕПОРТОВ
Enter::
labelgo:
SendInput, {Enter}
Sleep 250
if (Radio1==1) {
MouseGetPos, 1410, 187
PixelGetColor, color, 1410, 187, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  ) | ( Var1 = 0x008313FF  ) | ( Var1 = 0x006619E9  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio2==1) {
MouseGetPos, 1901, 247
PixelGetColor, color, 1901, 247, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio7==1) {
MouseGetPos, 1211, 152
PixelGetColor, color, 1211, 152, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio5==1) {
MouseGetPos, 961, 159
PixelGetColor, color, 961, 159, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio6==1) {
MouseGetPos, 812, 233
PixelGetColor, color, 812, 233, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio13==1) {
MouseGetPos, 878, 136
PixelGetColor, color, 878, 136, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio14==1) {
MouseGetPos, 888, 165
PixelGetColor, color, 888, 165, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio19==1) {
MouseGetPos, 1263, 193
PixelGetColor, color, 1263, 193, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio20==1) {
MouseGetPos, 901, 182
PixelGetColor, color, 901, 182, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio16==1) {
MouseGetPos, 1912, 250
PixelGetColor, color, 1912, 250, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio22==1) { ; 1366x768 | 5:3
MouseGetPos, 836, 136
PixelGetColor, color, 836, 136, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
return

NumpadEnter::
labelgo2:
SendInput, {NumpadEnter}
Sleep 250
if (Radio1==1) {
MouseGetPos, 1410, 187
PixelGetColor, color, 1410, 187, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  ) | ( Var1 = 0x008313FF  ) | ( Var1 = 0x006619E9  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio2==1) {
MouseGetPos, 1901, 247
PixelGetColor, color, 1901, 247, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio7==1) {
MouseGetPos, 1211, 152
PixelGetColor, color, 1211, 152, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio5==1) {
MouseGetPos, 961, 159
PixelGetColor, color, 961, 159, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio6==1) {
MouseGetPos, 812, 233
PixelGetColor, color, 812, 233, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio13==1) {
MouseGetPos, 878, 136
PixelGetColor, color, 878, 136, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio14==1) {
MouseGetPos, 888, 165
PixelGetColor, color, 888, 165, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio19==1) {
MouseGetPos, 1263, 193
PixelGetColor, color, 1263, 193, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio20==1) {
MouseGetPos, 901, 182
PixelGetColor, color, 901, 182, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio16==1) {
MouseGetPos, 1912, 250
PixelGetColor, color, 1912, 250, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio22==1) { ; 1366x768 | 5:3
MouseGetPos, 836, 136
PixelGetColor, color, 836, 136, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
return