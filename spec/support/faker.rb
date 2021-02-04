# Faker gem configuration

RSpec.configure do |config|
  config.before(:all) { Faker::Config.random = Random.new(config.seed) }
end
