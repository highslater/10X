require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist


class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end