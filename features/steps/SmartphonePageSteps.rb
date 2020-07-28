When(/^включили фильтрацию товаров по "([^"]*)"$/) do |button_name|
  on_page(SmartphonePage).check_location
  on_page(SmartphonePage).click_fast_sorting_button button_name
end

When(/^очистили поля фильтрации товаров по цене$/) do |button_name|
  on_page(SmartphonePage).check_location
  on_page(SmartphonePage).click_fast_sorting_button button_name
end

When(/^добавили фильтрацию товаров по цене от "([^"]*)" до "([^"]*)"$/) do |price_from, price_to|
  on_page(SmartphonePage).check_location
  on_page(SmartphonePage).input_cost_sorting_button price_from, price_to
end

When(/^добавили критерий "(С учётом самовывоза|Без учёта доставки|С учётом доставки)" для формирования цены$/) do |method|
  case method
  when 'С учётом самовывоза'
    delivery = 'С учётом самовывоза'
    on_page(SmartphonePage).check_location
    on_page(SmartphonePage).delivery_accounting delivery
  when 'Без учёта доставки'
    delivery = 'Без учёта доставки'
    on_page(SmartphonePage).check_location
    on_page(SmartphonePage).delivery_accounting delivery
  when 'С учётом доставки'
    delivery = 'С учётом доставки'
    on_page(SmartphonePage).check_location
    on_page(SmartphonePage).delivery_accounting delivery
  end
end

When(/^проверили, что предложения (не|) соответсвтвуют ограничениям по цене от "([^"]*)" до "([^"]*)"$/) do |method, price_from, price_to|
  case method
  when "не"
    on_page(SmartphonePage).check_location
    on_page(SmartphonePage).check_no_articles
  else
    on_page(SmartphonePage).check_location
    on_page(SmartphonePage).check_article_price price_from, price_to
  end
end

