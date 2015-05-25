require 'sinatra'

# ルートを処理する前に、レスポンスをプレーンテキストとして設定し、
# プレーヤー(とコンピュータ)が出せる有効な手の配列を設定する
before do
  content_type :txt
  @defeat = {rock: :scissors, paper: :rock, scissors: :paper}
  @throws = @defeat.keys
end

get '/throw/:type' do
  # params[]ハッシュにはクエリ文字列とフォームデータが格納されている
  player_throw = params[:type].to_sym

  # プレーヤーが無効な手を指定した場合は、
  # アプリケーションを停止してステータスコード403を返し
  # 有効な手を指定しなければならないことを知らせる
  if !@throws.include?(player_throw)
    halt 403, "You must throw one of the following: #{@throws}"
  end

  # コンピュータの手をランダムに選択できる
  computer_throw = @throws.sample

  # プレーヤーとコンピュータの手を比較して勝者を決定する
  if player_throw == computer_throw
    "You tied with the computer. Try again!"
  elsif computer_throw == @defeat[player_throw]
    "Nicely done; #{player_throw} beats #{computer_throw}!"
  else
    "Ouch; #{computer_throw} beats #{player_throw}. Better luck next time!"
  end
end

