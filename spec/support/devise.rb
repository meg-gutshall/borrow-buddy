# Devise gem configuration
require_relative './controller_macros'

RSpec.configure do |config|
  # For Devise > 4.1.1
  config.include Devise::Test::ControllerHelpers, type: :controller
  # Use the following instead if you are on Devise <= 4.1.1
  # config.include Devise::TestHelpers, type: :controller
  config.extend ControllerMacros, type: :controller
  config.include Warden::Test::Helpers

  config.include Devise::Test::ControllerHelpers, type: :view
end
