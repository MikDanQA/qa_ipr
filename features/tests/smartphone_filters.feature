# language: ru

@all
Функционал: Проверка фильтров на странице смартфоны

  Структура сценария: Проверка работы фильтра на корректных значениях(с учётом доставки)
    Допустим открыли браузер на яндекс маркете
    И указали, что "я не робот"
    И перешли в категорию товаров "Электроника"
    И выбрали "Смартфоны"
    И включили фильтрацию товаров по "цене"
    И добавили фильтрацию товаров по цене от "<price_from>" до "<price_to>"
    И добавили критерий "С учётом доставки" для формирования цены
    И проверили, что предложения  соответсвтвуют ограничениям по цене от "<price_from>" до "<price_to>"
    И закрыли браузер

    Примеры:
      | price_from | price_to |
      | 0          | 1500     |
      | 200000     | 500000   |
      | 18000      | 19000    |
      | 5000       | 5400     |


  Структура сценария: Проверка работы фильтра на корректных значениях(с учётом самовывоза)
    Допустим открыли браузер на яндекс маркете
    И указали, что "я не робот"
    И перешли в категорию товаров "Электроника"
    И выбрали "Смартфоны"
    И включили фильтрацию товаров по "цене"
    И добавили фильтрацию товаров по цене от "<price_from>" до "<price_to>"
    И добавили критерий "С учётом самовывоза" для формирования цены
    И проверили, что предложения  соответсвтвуют ограничениям по цене от "<price_from>" до "<price_to>"
    И закрыли браузер

    Примеры:
      | price_from | price_to |
      | 0          | 1500     |
      | 200000     | 500000   |
      | 18000      | 19000    |
      | 5000       | 5500     |


  Структура сценария: Проверка работы фильтра на корректных значениях(без учёта доставки)
    Допустим открыли браузер на яндекс маркете
    И указали, что "я не робот"
    И перешли в категорию товаров "Электроника"
    И выбрали "Смартфоны"
    И включили фильтрацию товаров по "цене"
    И добавили фильтрацию товаров по цене от "<price_from>" до "<price_to>"
    И добавили критерий "Без учёта доставки" для формирования цены
    И проверили, что предложения  соответсвтвуют ограничениям по цене от "<price_from>" до "<price_to>"
    И закрыли браузер

    Примеры:
      | price_from | price_to |
      | 0          | 1500     |
      | 200000     | 500000   |
      | 18000      | 19000    |
      | 5000       | 5500     |


  Структура сценария: Проверка работы фильтра на некорректных значениях(ничего не найдено)
    Допустим открыли браузер на яндекс маркете
    И указали, что "я не робот"
    И перешли в категорию товаров "Электроника"
    И выбрали "Смартфоны"
    И включили фильтрацию товаров по "цене"
    И добавили фильтрацию товаров по цене от "<price_from>" до "<price_to>"
    И добавили критерий "Без учёта доставки" для формирования цены
    И проверили, что предложения не соответсвтвуют ограничениям по цене от "<price_from>" до "<price_to>"

    И добавили критерий "С учётом доставки" для формирования цены
    И проверили, что предложения не соответсвтвуют ограничениям по цене от "<price_from>" до "<price_to>"

    И добавили критерий "С учётом самовывоза" для формирования цены
    И проверили, что предложения не соответсвтвуют ограничениям по цене от "<price_from>" до "<price_to>"

    И закрыли браузер

    Примеры:
      | price_from | price_to |
      | 1000       | 1000     |
      | 5500       | 5000     |


  Структура сценария: Проверка работы фильтра ёмкости аккумулятора
    Допустим открыли браузер на яндекс маркете
    И указали, что "я не робот"
    И перешли в категорию товаров "Электроника"
    И выбрали "Смартфоны"
    И добавили фильтрацию товаров по цене от "<price_from>" до "<price_to>"
    И добавили фильтрацию смартфонов по ёмкости аккумулятора до <battery_to>
    И перешли на страницу сматртфона под индексом 1
    И проверили,что батарея телефона соответствует фильтру от "<battery_from>" до "<battery_to>"
    И закрыли текущую вкладку

    И закрыли браузер

    Примеры:
      | price_from | price_to | battery_from | battery_to |
      | 5000       | 5500     | 1000         | 1999       |
      | 5000       | 5500     | 2000         | 2499       |
      | 8000       | 8500     | 2500         | 2999       |
      | 8000       | 8500     | 3000         | 3499       |
      | 8000       | 8500     | 3500         | 4499       |
      | 0          | 8500     | 0            | 1000       |