require 'sinatra/base'

words = %w[foo bar blah]
words.each do |word|
# wordごとに新しいアプリケーションを生成する
  map "/#{word}" { run Sinatra.new { get('/') { word } } }
end

map '/' do
  app = Sinatra.new do
    get '/' do
      list = words.map do |word|
        "<a href='/#{word}'>#{word}</a>"
      end
      list.join("<br>")
    end
  end

  run app
end

