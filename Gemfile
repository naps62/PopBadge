source 'https://rubygems.org'

gem 'rails', '~> 5.1.4'
gem 'puma'
gem 'pg'#, '~> 0.18'

gem 'turbolinks', '~> 5'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'dotenv-rails'
gem 'bcrypt', '~> 3.1.7'

gem 'execjs'
gem 'therubyracer', platforms: :ruby

gem 'friendly_id'
gem 'kaminari'
gem 'administrate'

gem 'paperclip', '~> 5.0.0'
gem 'administrate-field-paperclip'

group :development do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
    gem 'capistrano',         require: false
    gem 'capistrano-rvm',     require: false
    gem 'capistrano-rails',   require: false
    gem 'capistrano-bundler', require: false
    gem 'capistrano3-puma',   require: false
end

group :production do
  gem 'unicorn'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
