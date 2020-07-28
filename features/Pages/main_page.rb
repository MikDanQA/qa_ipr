class MainPage

  include PageObject

  element(:home_page, xpath: "//input[@placeholder='Найдётся всё']")
  element(:y_market, xpath: "//a[@data-id='market']")

  def check_location
    home_page_element.wait_while_present
  end

  def click_market_button
    y_market_element.wait_while_present.click
  end

end
