When(/^проверили,что батарея телефона соответствует фильтру от "([^"]*)" до "([^"]*)"$/) do |capacity_from, capacity_to|
  @browser.windows.last.use
  #on_page(ArticlesPage).check_location
  on_page(ArticlesPage).battery_capacity capacity_from, capacity_to
end