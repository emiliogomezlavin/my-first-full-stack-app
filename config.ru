require 'rubygems'
require 'bundler'

Bundler.require

# Models
require './models/destination'

# Controllers
require './app'
require './controllers/destinations_controller'

run Travelution