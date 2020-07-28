When(/^перешли в категорию товаров "([^"]*)"$/) do |button_name|
  on_page(MarketPage).check_location
  on_page(MarketPage).click_fast_menu_button button_name
end