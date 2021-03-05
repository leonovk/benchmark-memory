# frozen_string_literal: true

source 'https://rubygems.org'

gemspec

group :development do
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-inch'
  gem 'guard-rspec', '~> 4.6'
  gem 'guard-rubocop'
  gem 'inch'
  gem 'rake', '>= 12.3.3'
  gem 'rubocop', '~> 1'
  gem 'yard', '~> 0.9.11'

  group :test do
    gem 'pry'
  end
end

group :test do
  gem 'codeclimate-test-reporter', require: false
  gem 'rspec', '~> 3.4'
  gem 'simplecov'
end
