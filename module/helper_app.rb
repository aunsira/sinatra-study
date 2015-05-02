require 'sinatra'
require_relative './helper_module'

get '/' do
  erb :index
end

get '/index.html' do
  redirect link('index')
end
