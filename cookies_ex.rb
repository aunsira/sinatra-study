require 'sinatra'

get '/' do
  response.set_cookie "foo", "bar"
  "Cookie set"
end

get '/read' do
  "Cookie value: #{request.cookies['foo']}"
end

get '/delete' do
  response.delete_cookie "foo"
  "Cookie was deleted"
end
