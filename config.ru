require 'rack-environmental'
require ::File.expand_path('../config/environment',  __FILE__)

use Rack::Environmental,
  :staging =>     { :url => /^staging.+$/   },
  :test =>        { :url => /^test.+$/      },
  :development => { :url => /^localhost.+$/ }
# This file is used by Rack-based servers to start the application.

#include compiled stylesheets from /tmp
use Rack::Static, :urls => ["/stylesheets"], :root => "tmp"

run BlogOnRails::Application
