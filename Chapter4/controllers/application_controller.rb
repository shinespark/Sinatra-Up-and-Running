class ApplicationController < Sinatra::Base
  helpers ApplicationController

  # テンプレートのフォルダを../viewsに設定するが、絶対パスにする
  set :views, File.expand_path('../../views', __FILE__)

  # テストを実行する際にはログ機能を有効にしない
  configure :production, :development do
    enable :logging
  end

  # 404エラーページを表示するために使用される
  not_found do
    title 'Not Found!'
    erb :not_found
  end
end

