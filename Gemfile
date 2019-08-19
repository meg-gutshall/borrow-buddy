source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.5.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use dotenv to hold your db secrets
gem 'dotenv-rails', '~> 2.7'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sassc-rails', '~> 2.1'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 4.1'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Security engine for Rails apps
gem 'devise', '~> 4.2'
# Use omniauth for third-party login
gem 'omniauth-google-oauth2', '~> 0.7.0'

## Styling ##
# Use bootstrap gem for styling
gem 'bootstrap', '~> 4.3'
# Supports bootstrap
gem 'sprockets-rails', '~> 3.2'
# Supports bootstrap
gem 'jquery-rails', '~> 4.3'
# Use font awesome for icons
gem 'font-awesome-rails', '~> 4.6'
# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry', '~> 0.12.2'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
  # Use rspec for back-end testing
  gem 'rspec-rails', '~> 3.8'
  # Use to create test objects
  gem 'factory_bot_rails', '~> 5.0'
  # Use to create dummy data for test instances
  gem 'faker', '~> 1.9'
  # Creates a clean slate for testing
  gem 'database_cleaner', '~> 1.7'
  # Use to access sessions in tests
  gem 'rack_session_access', '~> 0.2.0'
  # Provides one-line test code
  gem 'shoulda-matchers', '~> 4.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "whenever", "~> 1.0"

gem "bootstrap_form", ">= 4.2.0"
