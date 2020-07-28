When(/^выбрали "([^"]*)"$/) do |button_name|
  on_page(ElectronicsPage).check_location
  on_page(ElectronicsPage).click_menu_button button_name
end