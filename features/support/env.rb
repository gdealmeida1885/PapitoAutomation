require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |c|
  c.default_driver = :selenium_chrome
  c.default_max_wait_time = 10
end
