; AutoHotkey v1/v2 совместимость
if (A_AhkVersion < "2.0") {
    MsgBox, 48, Требуется AutoHotkey v2, Сейчас будет скачан и запущен установщик AutoHotkey v2.
    url := "https://www.autohotkey.com/download/2.0/AutoHotkey_2.0.12_setup.exe"
    dest := A_ScriptDir . "\\AutoHotkey2_setup.exe"
    UrlDownloadToFile, %url%, %dest%
    if FileExist(dest) {
        Run, %dest%
        MsgBox, 64, Установка, После установки AutoHotkey v2 закройте это окно и снова запустите main.ahk!
    } else {
        MsgBox, 16, Ошибка, Не удалось скачать установщик AutoHotkey v2. Скачайте вручную: https://www.autohotkey.com/download/2.0/
    }
    ExitApp
}

#Requires AutoHotkey v2.0

; Запуск WebView2 с локальным HTML
uiPath := A_ScriptDir . "\ui.html"
WebView2_Run(uiPath)

WebView2_Run(file) {
    try {
        Run "msedge.exe --app=" file, , "UseErrorLevel"
    } catch {
        MsgBox "Не удалось запустить WebView2. Убедитесь, что установлен Microsoft Edge (Chromium) и WebView2 Runtime."
    }
} 