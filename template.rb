require 'fileutils'

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

copy_file "spec/support/factory_bot.rb"
copy_file "spec/support/capybara.rb"
copy_file "spec/rails_helper.rb"
copy_file "spec/spec_helper.rb"

application do 
  config.generators do |g|
    g.javascript false
    g.stylesheets false
    g.test_framework :rspec
    g.test_unit false
  end
end
