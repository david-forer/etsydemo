# README

Git clone app
run bundle install


I’m passionate about man’s best friend and wanted to do a project about finding the right puppy. Most of the sites I looked at were to hard to navigate and not user friendly. My idea was to have a simple site that was a search portal for the type of puppy you wanted. It would connect local breeders with people searching for their furever puppy! They would easily be able to find out about a particular breeder and also find puppies for sale. While most purchases happen face to face, my app gives people and breeders the opportunity to purchase online through Stripe.

Gems:
gem 'dotenv-rails', groups: [:development, :test]


gem "figaro"
gem 'jquery-turbolinks', '~> 2.1'
gem 'rails', '~> 5.1.4'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'jquery-rails'
gem "paperclip", "~> 5.0.0"
gem 'devise'
gem 'stripe'
gem 'searchkick'
gem 'will_paginate', '~> 3.1.0'
gem 'bootstrap-will_paginate'
gem 'mail_form'
gem 'sendgrid-ruby'

group :production do
  gem 'pg'
end


group :development, :test do

  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'sqlite3'
end

group :development do

  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

API Google Maps
API SearchKick
