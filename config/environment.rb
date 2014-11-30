#force set to production change if developing
ENV['RAILS_ENV'] ||= 'production'
# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
