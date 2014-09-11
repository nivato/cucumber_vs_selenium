require 'selenium-webdriver'
require 'test/unit'

Before do |scenario|
  @driver = Selenium::WebDriver.for :firefox
  @driver.manage.timeouts.implicit_wait = 30
  @wait = Selenium::WebDriver::Wait.new(:timeout => 10)
end

After do |scenario|
  @driver.quit
end