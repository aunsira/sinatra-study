require 'sinatra'
require './post_get_module'

post_get '/' do
  "Hi #{params[:name]}"
end
