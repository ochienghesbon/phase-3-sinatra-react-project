class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end
  get '/tasks' do
    task = Task.all
    task.to_json
  end
  get '/users' do
    user = User.all
    user.to_json
  end
  # POST /tasks
  post '/tasks' do
    task = Task.create(
      task_name: params[:text],
      day_time: params[:day],
      use_id: rand(1..20)
    )
    task.to_json
  end
  post '/users' do 
    new_user = User.create(
      name: params[:name],
      email_address: params[:email],
    )
    new_user.to_json
  end

  # PATCH /tasks/:id

  patch '/tasks/:id' do
    task = Task.find(params[:id])
    task.update(
      task_name: params[:text],
      day_time: params[:day],
      use_id: rand(1..20)
    )
    task.to_json
  end
  patch '/users/:id' do
    task = User.find(params[:id])
    user.update(
      name: params[:name],
      email_address: params[:email]
    )
    user.to_json
  end
  
  # DELETE /tasks/:id

  delete '/tasks/:id' do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
    "Task deleted successfully"
  end
  
  delete '/users/:id' do
    user = User.find(params[:id])
    user.destroy
    user.to_json
    "User deleted successfully"
  end
  
end
