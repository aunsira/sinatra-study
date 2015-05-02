require 'sinatra'
require './helper_module'

get '/' do
  erb :index
end

get '/index.html' do
  redirect link('index')
end
