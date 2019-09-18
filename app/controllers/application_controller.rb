require './config/environment'
# require '../models/models.rb'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    @to_do = ToDo.all
    erb :welcome
  end


  get "/list" do
    erb :list
  end

end
