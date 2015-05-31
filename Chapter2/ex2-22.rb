require 'sinatra'

before do
  @before_value = 'foo'
end

get '/' do
  "before_value has been set to #{@before_value}"
end

after do
  puts "After filter called to perfome some task."
end

