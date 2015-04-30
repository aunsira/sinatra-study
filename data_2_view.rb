require 'sinatra'

get '/home' do
#  @name = 'Random User'
  @users = ['gnoon', 'gnui', 'gdee']
  erb :home
end
