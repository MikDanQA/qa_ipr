When(/^открыли браузер на яндекс маркете$/) do

  chromedriver_path = File.join(File.absolute_path('../..', File.dirname(__FILE__)), "files", "chromedriver.exe")
  Selenium::WebDriver::Chrome.driver_path = chromedriver_path

  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
  @browser.goto 'market.yandex.ru'
end

When(/^закрыли браузер$/) do
  @browser.quit
end