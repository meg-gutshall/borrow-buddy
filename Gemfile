source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "2.5.4"

# Use SCSS for stylesheets --> Call before everything else
gem "sassc-rails", "~> 2.1"
# Bundle edge Rails instead: gem "rails", github: "rails/rails"
gem "rails", "~> 5.2.6"
# Use postgresql as the database for Active Record
gem "pg", ">= 0.18", "< 2.0"
# Use dotenv to hold your db secrets
gem "dotenv-rails", "~> 2.7"
# Use Puma as the app server
gem "puma", "~> 5.0"
# Fix rack gem vulnerability
gem "rack", "~> 2.2"
# Use Uglifier as compressor for JavaScript assets
gem "uglifier", "~> 4.2"
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks", "~> 5.2"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.5"
# Provides a sensible, easy-to-understand API for reading, writing, modifying, and querying documents
gem "nokogiri", "~> 1.11.4"
# Runs cron jobs to kick off automated processes
gem "whenever", "~> 1.0"
# Security engine for Rails apps
gem "devise", "~> 4.8"
# Use omniauth for third-party login
gem "omniauth", "~> 2.0.4"
gem "omniauth-google-oauth2", "~> 1.0.0"

## Styling ##
# Use bootstrap gem for styling
gem "bootstrap", "~> 4.5"
# Supports bootstrap
gem "sprockets-rails", "~> 3.2"
# Supports bootstrap
gem "jquery-rails", "~> 4.4"
# Use font awesome for icons
gem "font-awesome-rails", "~> 4.7"
# Use Active Storage variant
# gem "image_processing", "~> 1.2"

# Use to create dummy data for test instances
gem "faker", github: "faker-ruby/faker"
# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.2", require: false

group :development, :test do
  # Call "byebug" anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "pry", "~> 0.12.2"
  # Use rspec for back-end testing
  gem "rspec-rails", "~> 4.0.0"
    # Use to create test objects
  gem "factory_bot_rails", "~> 6.1.0"
end

group :development do
  # Access an interactive console on exception pages or by calling "console" anywhere in the code.
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "better_errors"
  gem "binding_of_caller"
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", ">= 3.35"
  gem "selenium-webdriver"
  # Easy installation and use of web drivers to run system tests with browsers
  gem "webdrivers"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Dependabot fixes
gem "omniauth-rails_csrf_protection", "~> 1.0"
gem "actionpack", ">= 5.2.6"
