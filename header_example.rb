require 'sinatra'

before do
  content_type :txt
end

get '/' do
  headers "X-Customer-Value" => "This is a custom HTTP header"
  'Customer header set'
end

get '/multiple' do
  headers "X-Customer-Value" => "foo", "X-Customer-Value-2" => "bar"
  'Multiple cutomer header set'
end
