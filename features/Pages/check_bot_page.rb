class BotPage

  include PageObject

  element(:bot_page, xpath: "//span[text()='Подтвердите, что запросы отправляли вы, а не робот']")

  def check_location
    begin
      bot_page_element.wait_until_present
    rescue Exception => e
      puts e.message
      puts e.backtrace.inspect
    end
  end

  def click_bot_button
    begin
      bot_page_element.wait_until_present
    rescue Exception => e
      puts e.message
      puts e.backtrace.inspect
    else
      @browser.element(xpath: "//div[contains(@class, 'CheckboxCaptcha-Anchor')]").wait_until_present.click
    end

  end

end

