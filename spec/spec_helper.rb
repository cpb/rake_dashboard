$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'pry'

ENV['RAILS_ENV'] ||= 'test'

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require 'rspec/rails'
require 'capybara/rspec'
require 'capybara/poltergeist'

Rails.backtrace_cleaner.remove_silencers!

require 'rspec-html-matchers'

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.mock_with :rspec
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"
end
