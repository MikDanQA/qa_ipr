# language: ru

@summ_test
Функционал: Сумма двух чисел

  Структура сценария: : Проверка суммы чисел
    Допустим сложили <first_count> и <second_count> и проверили, что сумма равна <finally_count>

    Примеры:
      | first_count | second_count | finally_count |
      | 2           | 8            | 10            |
      | 1           | 2            | 3             |