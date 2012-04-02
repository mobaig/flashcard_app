source 'https://rubygems.org'

gem 'rails', '3.2.2'

# Assets - not required in production by default
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier',     '>= 1.0.3'
end

gem 'jquery-rails'

# Gem groups
group :development do
  gem 'heroku'
end

group :development, :test do
  gem 'sqlite3'
end

group :production do
  gem 'pg'
  gem 'thin'
end

# Further additions
gem 'nokogiri'
