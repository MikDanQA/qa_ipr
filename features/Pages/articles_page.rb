require 'page-object'
class ArticlesPage

  include PageObject

  element(:article_page, xpath: "//span[contains(.,'Описание')]")
  element(:battery, xpath: "//h3[contains(.,'товар')]//parent::div//li[contains(.,'аккумулятор')]")

  def check_location
    article_page_element.wait_until_present
  end

  def battery_capacity (capacity_from, capacity_to)
    battery = battery_element.text.to_s
    battery = battery.split(' ')[1].to_s

    raise Exception, "Объём батареи устройства #{battery.to_s} вне фильтра" if battery.to_i <= capacity_from.to_i && battery.to_i >= capacity_to.to_i
  end

end
