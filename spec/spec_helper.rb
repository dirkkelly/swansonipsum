ENV["RAILS_ENV"] ||= 'test'

require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

Capybara.configure do |config|
  config.default_driver = :webkit
  config.javascript_driver = :selenium
  config.default_wait_time = 2
end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

RSpec.configure do |config|
  config.infer_base_class_for_anonymous_controllers = true
  config.order = "random"
  config.include Rails.application.routes.url_helpers, type: :request
end
