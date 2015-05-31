require 'sinatra'

before do
  content_type :txt
end

get '/' do
  request.methods.map { |e| e.to_s + "\n" }
end

