#include <File.au3>

Func writeLog($mes)
    _FileWriteLog("log.txt", $mes)
    ;MsgBox(64, 'Title', $mes)
EndFunc