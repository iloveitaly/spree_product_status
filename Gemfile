source 'http://rubygems.org'
gemspec

group :test do
  if RUBY_PLATFORM.downcase.include? "darwin"
    gem 'rb-fsevent'
    gem 'growl'
    gem 'guard-rspec'
  end
end

gem 'spree', '~> 1.3.5'