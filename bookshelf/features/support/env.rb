require File.join(File.expand_path(File.dirname(__FILE__)), '../../', 'app.rb')
require_relative 'ui_driver.rb'

if ENV['DOMAIN']
  World(DomainDriver)
  puts "running the domain"
else
  puts "running the web app"
  require 'capybara/cucumber'
  Capybara.app = BookshelfApp
  Capybara.app.set :environment, :test
  Capybara.save_and_open_page_path = File.expand_path('./tmp/capybara')
  World(WebUIDriver)
end
