require 'page-object'
class ElectronicsPage

  include PageObject

  element(:electronics_page, xpath: "//h1[contains(.,'Электроника')]")

  def check_location
    electronics_page_element.wait_until_present
  end

  def click_menu_button (button_name)
    @browser.element(xpath: "//a[text()='#{button_name}']").wait_until_present.click
  end

end
