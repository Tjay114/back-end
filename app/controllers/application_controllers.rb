class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
      # task :allow_methods, "GET, HEAD, POST, PUT, OPTIONS, DELETE"
  set :allow_origin, "http:/localhost:3000"
  set :bind, '0.0.0.0'
  configure do
    enable :cross_origin
  end
  before do
    response.headers['Access-Control-Allow-Origin'] = '*'
  end
  
  # routes...
  options "*" do
    response.headers["Allow"] = "GET, PUT, POST, DELETE, OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
    response.headers["Access-Control-Allow-Origin"] = "*"
    200
  end
    #Add your routes here
  get "/" do
    {message: "Good luck with your project!"}.to_json
  end

  #users routes
  get '/user' do
    get_user = User.all
    get_user.to_json
  end

  get '/user/:id' do
    get_user_by_id = User.find(params[:id])
    get_user_by_id.to_json
  end

  post '/user' do
    new_user = User.create(
      name: params[:name], 
      email: params[:email], 
      password_digest: params[:password_digest]
    )
    new_user.to_json
  end

  patch '/user/:id' do
    patch_user = User.find(params[:id])
    patch_user.update(
      name: params[:name],
      email: params[:email],
      password_digest: params[:password_digest]
    )
    patch_user.to_json
  end

  delete '/user/:id' do
    delete_user = User.find(params[:id])
    delete_user.destroy
    delete_user.to_json
  end

  #destinations routes
  get '/destination' do
    get_destination = Destination.all
    get_destination.to_json
  end

  get '/destination/:id' do
    get_destination_by_id = Destination.find(params[:id])
    get_destination_by_id.to_json
  end

  post '/destination' do
    new_destination = Destination.create(
      city: params[:city],
      country: params[:country],
      user_id: params[:user_id]
    )
    new_destination.to_json
  end

  patch '/destination/:id' do
    patch_destination = Destination.find(params[:id])
    patch_destination.update(
      city: params[:city],
      country: params[:country]
    )
    patch_destination.to_json
  end

  delete '/destination/:id' do
    delete_destination = Destination.find(params[:id])
    delete_destination.destroy
    delete_destination.to_json
  end

  #trips routes
  get '/trip' do
    get_trip = Trip.all
    get_trip.to_json
  end

  get '/trip/:id' do
    get_trip_by_id = Trip.find(params[:id])
    get_trip_by_id.to_json
  end

  post '/trip' do
    new_trip = Trip.create(
      image: params[:image],
      title: params[:title],
      isFavorite: params[:isFavorite]
    )
    new_trip.to_json
  end

  patch '/trip/:id' do
    patch_trip = Trip.find(params[:id])
    patch_trip.update(
      image: params[:image],
      title: params[:title],
      isFavorite: params[:isFavorite]
    )
    patch_trip.to_json
  end

  delete '/trip/:id' do
    delete_trip = Trip.find(params[:id])
    delete_trip.destroy
    delete_trip.to_json
  end
  
end