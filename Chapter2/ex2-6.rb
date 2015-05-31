require 'sinatra'

get '/*' do
  "You passed in #{params[:split]}"
end

