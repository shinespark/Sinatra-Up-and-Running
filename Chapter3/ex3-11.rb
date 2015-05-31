require 'sinatra/base'
module MyExtension
  module Helpers
    # ヘルパメソッドをここに記述
  end

  # 拡張メソッドをここに記述
  def self.registered(app)
    app.helpers Helpers
  end
end

Sinatra.register MyExtension

