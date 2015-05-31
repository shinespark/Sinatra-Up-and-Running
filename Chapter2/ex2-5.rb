require 'sinatra'

get '/:name' do
  # URLが/some_name?foo=XYZ形式であると仮定する
  "You asked for #{params[:name]} as well as #{params[:foo]}"
end

