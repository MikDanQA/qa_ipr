When(/^включили фильтрацию товаров по "([^"]*)"$/) do |button_name|
  #on_page(SmartphonePage).check_location
  on_page(SmartphonePage).click_fast_sorting_button button_name
end

When(/^очистили поля фильтрации товаров по цене$/) do |button_name|
  #on_page(SmartphonePage).check_location
  on_page(SmartphonePage).click_fast_sorting_button button_name
end

When(/^добавили фильтрацию товаров по цене от "([^"]*)" до "([^"]*)"$/) do |price_from, price_to|
  #on_page(SmartphonePage).check_location
  on_page(SmartphonePage).input_cost_sorting_button price_from, price_to
end

When(/^добавили критерий "(С учётом самовывоза|Без учёта доставки|С учётом доставки)" для формирования цены$/) do |method|
  #on_page(SmartphonePage).check_location
  case method
  when 'С учётом самовывоза'
    delivery = 'С учётом самовывоза'
    on_page(SmartphonePage).delivery_accounting delivery
  when 'Без учёта доставки'
    delivery = 'Без учёта доставки'
    on_page(SmartphonePage).delivery_accounting delivery
  when 'С учётом доставки'
    delivery = 'С учётом доставки'
    on_page(SmartphonePage).delivery_accounting delivery
  end
end

When(/^проверили, что предложения (не|) соответсвтвуют ограничениям по цене от "([^"]*)" до "([^"]*)"$/) do |method, price_from, price_to|
  #on_page(SmartphonePage).check_location
  case method
  when "не"
    on_page(SmartphonePage).check_no_articles
  else
    on_page(SmartphonePage).check_article_price price_from, price_to
  end
end

When(/^добавили фильтрацию смартфонов по ёмкости аккумулятора (до|от) ([^"]*)$/) do |method,capacity|
  #on_page(SmartphonePage).check_location
  on_page(SmartphonePage).open_battery_filter
  case method
  when "до"
    on_page(SmartphonePage).inst_battery_filter capacity
  else
    on_page(SmartphonePage).inst_battery_filter capacity
  end
end

When(/^перешли на страницу сматртфона под индексом ([^"]*)$/) do|index|
  #on_page(SmartphonePage).check_location
  on_page(SmartphonePage).articles_page_button index
end