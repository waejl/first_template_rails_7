require 'fileutils'

gem 'sprockets-rails'

gem_group :development, :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'rubocop'
  gem 'reek'
  gem 'htmlbeautifier'
  gem 'shoulda-matchers'
  gem 'database_cleaner'
  gem 'factory_bot_rails'
end

generate "rspec:install"

copy_dir "spec"
# FileUtils.copy_entry "rspec", 

application do 
  config.generators do |g|
    g.javascript false
    g.stylesheets false
    g.test_framework :rspec
    g.test_unit false
  end
end
