#include <logs.au3>
writeLog('Start')

MouseMove(94, 59, 0)
MouseClick("", 94, 59, 1)
Sleep(1900)

MouseMove( 1200, 525, 0); Открыть полное окно
MouseClick("", 1200, 525, 1)

Sleep(1500)

MouseMove( 120, 640, 0); Выбор торгового инструмента
MouseClick("", 120, 640, 1)

Sleep(1200)

MouseMove( 200, 200, 0); Выборать тип газа
MouseClick("", 200, 200, 1)
MouseMove( 150, 270, 10)
MouseClick("", 150, 270, 1)

MouseMove( 500, 200, 0); Выбрать компанию поставщика
MouseClick("", 500, 200, 1)
MouseMove( 500, 330, 10)
MouseClick("", 500, 330, 1)


sleep(500)

MouseWheel("down", 100); Скролл в низ страницы

Send('^f'); Поиск ключевого слова
Send("Жанао")
Send("{ENTER}")


; Цвета поиска
While 1; Бесконечный цикл
    $colorOne = 0xFFFF00; Желтый
    $colorTwo = 0xFF9632; Оранжевый
    $var = PixelSearch(0, 0, 1366, 768, $colorOne); Поиск по 30всему экрану пиксель цвета

    ; Если есть такой цвет, то переводим указатель мыши на него и кликаем
    if IsArray($var) = True Then

        MouseMove($var [0], $var [1], 0)
            Sleep(200)
        MouseClick('LEFT')
            Sleep(500)

        MouseMove( 500, 630, 0); Выбор обьема газа
        MouseClick("", 500, 630, 1)
            Send(30)

        MouseMove( 800, 632, 0); Указать стоимость газа
        MouseClick("", 800, 632, 1)
            Send(57693.33)

        MouseMove( 900, 682, 0); Совершить заказ
        MouseClick("", 900, 682, 1)

        writeLog('End')
	  ExitLoop ; Прервать цикл
    EndIf
 WEnd

#comments-start
MouseMove( 416, 748, 10); Запуск браузера
MouseClick("", 416, 748, 1)


    sleep(500)

MouseMove( 1170, 15, 10); Открытие новой вкладки
MouseClick("", 1170, 15, 1)

Send("http://94.247.128.172/#/"); Переход на сайт
Send("{ENTER}")

    sleep(1500)

MouseMove( 1100, 280, 10); Ввод логина
MouseClick("", 1100, 280, 1)
Send("user1")

Send("{TAB}")

Send("asdasdasd"); Ввод пароля и клик войти
MouseMove( 1150, 405, 10)
MouseClick("", 1150, 405, 1)

#comments-end