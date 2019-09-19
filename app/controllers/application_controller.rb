require './config/environment'
# require '../models/models.rb'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/home/new" do
    erb :welcome

  end
 

 get "/home/:id" do
  @to_do = ToDo.find(params[:id])
  erb :list
 end

 get "/list" do
  @to_do = ToDo.all
  erb :list
end


 post "/home" do 
  toDo = ToDo.create(params)
  redirect to "/home/#{toDo.id}"
end

  



  # post '/list' do
  #   @to_do = ToDo.all
  #   erb :list
  # end
  

end
