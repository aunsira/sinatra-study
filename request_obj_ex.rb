require 'sinatra'

before do
  content_type :text
end

get '/request_env' do
  request.env.map { |e| e.to_s + "\n" }
end

get '/request_method'do
  request.methods.map do |e|
    e.to_s + "\n"
  end
end

