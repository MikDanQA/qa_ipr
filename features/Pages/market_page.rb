class MarketPage

  include PageObject

  element(:market_page, xpath: "//div[.//a[@id='logoPartMarket']]")

  def check_location
    market_page_element.wait_until_present
  end

  def click_fast_menu_button (button_name)
    @browser.element(xpath: "//a//span[text()='#{button_name.to_s}']").wait_until_present.click
  end

end

