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
end