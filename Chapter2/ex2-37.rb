require 'sinatra'

before do
  content_type :txt
end

connections = []

get '/consume' do
  stream(:keep_open) do |out|
    # 接続を後で使用するために格納する
    connections << out

    # 接続が正常に閉じられた場合に、接続を削除する
    out.callback { connections.delete(out) }

    # エラーにより接続が閉じられた場合に、接続を削除する
    out.errback do
      logger.warn 'we just lost a connection!'
      connections.delete(out)
    end
  end
end

get '/broadcast/:message' do
  connections.each do |out|
    out << "#{Time.now} -> #{params[:message]}" << "\n"
  end

  "Sent #{params[:message]} to all clients."
end

