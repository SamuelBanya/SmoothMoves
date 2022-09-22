class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/users" do 
    users = User.all()
    users.to_json()
  end

  post "/users" do 
    user = User.create(
      name: params[:name]
      pickup_location: params[:pickup_location]
      dropoff_location: params[:dropoff_location]
    )
    user.to_json()
  end

  patch "/users/:id" do 
    user = User.find(params[:user_id])
    user.update(
      name: params[:name]
      pickup_location: params[:pickup_location]
      dropoff_location: params[:dropoff_location]
    )
    user.to_json()
  end

  delete "/users/:id" do 
    user = User.find(params[:user_id])
    user.destroy()
    user.to_json()
  end

  get "/items" do 
    items = Item.all()
    items.to_json()
  end

  post "/items" do 
    item = Item.create(
      name: params[:name],
      owner: params[:owner],
      length: params[:length],
      width: params[:width],
      height: params[:height],
      weight: params[:weight],
      item_type: params[:item_type]
    )
    item.to_json()
  end

  patch "/items/:id" do 
    item = Item.find(params[:item_id])
    item.update(
      name: params[:name],
      owner: params[:owner],
      length: params[:length],
      width: params[:width],
      height: params[:height],
      weight: params[:weight],
      item_type: params[:item_type]
    )
    item.to_json()
  end

  delete "/items/:id" do 
  end
end
