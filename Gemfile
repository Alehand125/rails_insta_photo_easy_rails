source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootstrap', '~> 4.1.1'
#gem 'webrick'
gem 'devise'
gem 'execjs'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
#gem 'bcrypt', '~> 3.1.7'
gem 'bcrypt', '~> 3.1.11'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development do
  gem 'byebug', platform: :mri
  gem 'sqlite3'
  gem 'web-console', '>= 3.3.0'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'webpacker'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
