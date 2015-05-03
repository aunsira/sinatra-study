#require 'sinatra/base'

#helpers do
#  def assert(condition)
#    fail "something is terribly broken" unless condition
#  end
#end

#get '/' do
#  assert env['PATH_INFO'] == request.path_info
#
#  final_result = response.finish
#  assert Array === final_result
#  assert final_result.length == 3
#  assert final_result.first == 200
#
#  "everything is fine."
#end

#class MyApp < Sinatra::Base; end
#
#MyApp.get '/' do
#  "Hello from MyApp!"
#end
#
#MyApp.run!

class GeneralApp < Sinatra::Base
  get '/about' do
    "this is a general app"
  end

  get '/about2' do
    "this is from general app"
  end
end

class CustomApp < GeneralApp
  get '/about' do
    'this is a custom app'
  end

  get '/about2' do
    "this is from custom app"
  end
end

GeneralApp.get '/' do
  "<a href='/about'>More infos</a>"
end

#GeneralApp.get '/test' do
#  "<a href='/about2'>More info2</a>"
#end

CustomApp.get '/' do
  "<a href='/about'>More infos</a>"
end

#CustomApp.run!
GeneralApp.run!
