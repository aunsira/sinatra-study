require 'sinatra'

configure do
  enable :sessions
end

before do
  content_type :txt
end

get '/set' do
  session[:foo] = Time.now
  "Session value set."
end

get '/fetch' do
  "Session value: #{session[:foo].to_s}"
end

get '/' do
  arr = [1,2,3,4]
  "Value in array: #{arr}"
end
