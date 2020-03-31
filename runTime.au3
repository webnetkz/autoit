While 1
	Select
		Case @HOUR=11 AND @MIN=00; Время запуска программы
			ShellExecute ( "C:\alanTrade.exe" , "", "C:\")
			ExitLoop ; Прервать цикл
	EndSelect
	Sleep(100) ; Пауза 100 милисекунд
WEnd