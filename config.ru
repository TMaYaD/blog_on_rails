require 'rack-environmental'
use Rack::Environmental,
  :staging =>     { :url => /^staging.+$/   },
  :test =>        { :url => /^test.+$/      },
  :development => { :url => /^localhost.+$/ }
# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run BlogOnRails::Application
