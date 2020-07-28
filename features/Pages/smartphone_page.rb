class SmartphonePage

  include PageObject

  h1(:smartphone_page, text: 'Смартфоны')
  button(:clear_price_from, xpath: "//button[@aria-label='Очистить поле Цена от']")
  button(:clear_price_to, xpath: "//button[@aria-label='Очистить поле Цена до']")
  element(:input_price_from, xpath: "//input[@name='Цена от'][@value = '']")
  element(:input_price_to, xpath: "//input[@name='Цена до'][@value = '']")
  element(:battery_capacity, xpath: "//fieldset[.//legend[contains(., 'аккумулятора')]]")

  def check_location
    smartphone_page_element.wait_until_present
  end

  def click_fast_sorting_button (button_name)
    @browser.element(xpath: "//button[contains(.,'#{button_name.to_s}')]").wait_until_present.click
  end

  def clear_price_filter
    clear_price_from_element.wait_until_present.click
    clear_price_to_element.wait_until_present.click
  end

  def input_cost_sorting_button (price_from, price_to)
    input_price_from_element.wait_until_present.send_keys price_from.to_s
    input_price_to_element.wait_until_present.send_keys price_to.to_s
  end

  def delivery_accounting (delivery)
    @browser.element(xpath: "//span[contains(.,'#{delivery.to_s}')]").wait_until_present.click
    sleep(5)
  end

  def check_no_articles
    @browser.element(xpath: "//article//div[contains(.,'Таких товаров нет, увы')]").wait_until_present
  end

  def check_article_price (price_from, price_to)
    i = 1
    articles = @browser.elements(xpath: "//article").size.to_s
    while i <= articles.to_i do
      raise Exception, "Количество #{i} превышает #{articles.to_i}" if i > articles.to_i
      price = @browser.element(xpath: "//article[#{i}]//span[1]//span").text.to_s
      if price.split(' ')[0] != "от"
        price = price.split(' ')[0..-1].join('')
        puts("цена #{price.to_s}")
        raise Exception, "Цена товара меньше минимальной цены фильтра" if price.to_i < price_from.to_i
        raise Exception, "Цена товара больше максимальной цены фильтра" if price.to_i > price_to.to_i
        puts("#{i} прогон по циклу, цена #{price.to_i}")
        i = i + 1
      else
        break
      end
    end

  end

  def open_battery_filter
    @browser.element(battery_capacity + "//button").wait_until_present.click
  end

  def inst_battery_filter (campacity)
    @browser.element(battery_capacity + "//span[contains(.,'#{campacity.to_s}')]").wait_until_present.click
  end
  # нужен переход по страницам телефонов для проверки, ДОПИСАТЬ

end
