require "sinatra/base"

class MyApp < Sinatra::Base
  get '/' do
    "Hello from MyApp!"
  end

  # $0は実行されるファイル
  # __FILE__は現在のファイル
  run! if __FILE__ == $0
end

