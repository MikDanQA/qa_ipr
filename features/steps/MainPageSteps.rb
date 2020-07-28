When(/^перешли на сраницу Яндекс маркета$/) do
  on_page(MainPage).check_location
  on_page(MainPage).click_market_button
end
