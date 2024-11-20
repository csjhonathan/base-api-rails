source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.1.2"

# Use PostgreSQL as the database for Active Record 
gem "pg", "~> 1.5"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 6.4"

# Use Redis adapter to run Action Cable in production
gem "redis", "~> 5.1"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"

# A pure ruby implementation of the RFC 7519 OAuth JSON Web Token (JWT) standard
gem "jwt", "~> 2.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Devise for authentication
gem "devise", "~> 4.8"

# Use Serializer for JSON
gem 'active_model_serializers', '~> 0.10.0'

# Discard Records and not Delete
gem 'discard', '~> 1.2'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

# Use Bullet to detect N+1 queries and unused eager loading
gem "bullet", "~> 7.1"

# Use Omniauth for authentication
gem "omniauth"
gem "omniauth-google-oauth2"
gem "omniauth-rails_csrf_protection", "~> 1.0"

# Use File Validators for validate file types
gem 'file_validators'

# Use CPF and CNPJ for validate
gem "cpf_cnpj"

# Use PaperTrail for versioning
gem "paper_trail"

# Use Faraday for HTTP requests
gem 'faraday'

# Use Nokogiri for XML and HTML
# gem 'nokogiri', '1.10.10'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "byebug"
  gem 'dotenv-rails'
  gem 'letter_opener'
  gem "rspec-rails"
  gem "shoulda-matchers", "~> 5.3"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Use soloargraph for IDE
  gem "solargraph"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
  gem 'simplecov', require: false
end
