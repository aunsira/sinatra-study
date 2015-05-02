require 'sinatra'
require_relative './post_get_module'

post_get '/' do
  "Hi #{params[:name]}"
end
