require 'sinatra'

#before do
#  @before_val = 'foo'
#end
before do
  content_type :txt
end

not_found do
  "Your requested route was not found"
end

configure do
  set :show_exceptions, false
end

get '/' do
  "before_val has been set to #{@before_val}"
end

after do
  puts "After filter called to perform some task"
end

get '/div_by_zero' do
  0/0
  "You not see me"
end

error do
  "Not work"
end
