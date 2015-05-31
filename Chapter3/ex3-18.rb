require './sinatra_middleware'
require './config/environment'

use Sinatra::Application
run MyRailsProject::Application

