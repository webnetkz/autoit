While 1
	Select
		Case @HOUR=11 AND @MIN=14 AND @SEC=00 ; Время запуска программы
			Run("alanTrade.exe", "c:\") ; Запустить программу
			ExitLoop ; Прервать цикл
	EndSelect	
	Sleep(100) ; Пауза 100 милисекунд
WEnd