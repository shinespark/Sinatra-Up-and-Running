require 'sinatra/base'

class GeneralApp < Sinatra::Base
  get '/about' do
    "this is a general app"
  end
end

class CustomApp < GeneralApp
  get '/about' do
    "this is a custom app"
  end
end

# このルートはCustomAppでも利用できるようになる
GeneralApp.get '/' do
  "<a href='/about'>more infos</a>"
end

CustomApp.run!

