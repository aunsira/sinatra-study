class ApplicationController < Sinatra::Base
  helpers ApplicationHelper

  # set foler for template
  set :views, File.expand_path('../../views', __FILE__)
#  set :views, File.expand_path('views','~/code/git/sinatra-study/module_structure_example/')
  # don't enable logging when running tests
  configure :production, :development do
    enable :logging
  end

  not_found do
    title 'Not found'
    erb :not_found
  end
end

