require 'sinatra'

get '/home2' do
  @users = ['Sally', 'Jerry', 'Rocko']
  erb :home2
end

