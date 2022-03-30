source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 5.2.3'

gem 'pg', '>= 0.18', '< 2.0'

gem 'puma', '~> 4.3'

gem 'bootsnap', '>= 1.1.0', require: false

gem 'graphql'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'graphiql-rails'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]