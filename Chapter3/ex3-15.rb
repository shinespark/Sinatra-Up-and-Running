require 'sinatra'
require 'rack'

# Rackに搭載されている便利なミドルウェア
# X-Runtimeヘッダを設定する
use Rack::Runtime

get('/') { 'Hello world!'}

