source 'http://ruby.taobao.org'

gem 'rails', '4.0.3'

# railties is not part of bundler, add it to Gemfile
gem 'railties', '4.0.3'

gem "protected_attributes", "~> 1.0.3"

# Use mysql as the database for Active Record
gem "mysql2", "~> 0.3.14"

# Mongo
gem "mongoid", "~> 4.0.0.beta1"

# Accessing memcached
gem "dalli", "~> 2.6.4"

# Resque
gem "redis", "~> 3.0.6"
gem "resque", "~> 1.24.1"

# Accessing settings
gem "rails_config", "~> 0.3.3"

# Pagination
gem "kaminari", "~> 0.15.0"

# Build JSON APIs with ease.
gem "oj", "~> 2.5.1"
gem "multi_json", "~> 1.8.2"
gem "jbuilder", "~> 2.0.1"

# Sanitize
gem 'sanitize', '2.0.4'

# Cron jobs
gem 'whenever', "~> 0.8.4", :require => false

# Newrelic
gem 'newrelic_rpm'

# Debugger
gem 'debugger', '~> 1.6.2'

group :development, :test do
  gem 'rspec-rails', '2.13.2'
  gem 'pry-rails', '0.3.1'
  gem 'pry-debugger', '0.2.2'
end

group :test do
  gem 'database_cleaner', '1.0.1'
  gem 'factory_girl_rails', '4.2.1'
  gem 'machinist', '~> 2.0'
  gem 'ffaker', '~> 1.21.0'
  gem 'capybara', '2.1.0'
  gem 'shoulda-matchers', '2.4.0'
end
