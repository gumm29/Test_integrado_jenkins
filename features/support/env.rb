require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'faker'
require 'pry'
require 'cpf_faker'
require 'httparty'
require 'ostruct'
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
Faker::Config.locale = 'pt-BR'

NAV = ENV['BROWSER']

Capybara.configure do |config|
  driver = NAV.eql?('headless') ? :selenium_chrome_headless : :selenium_chrome
  config.default_driver = driver
  config.default_max_wait_time = 100
end
