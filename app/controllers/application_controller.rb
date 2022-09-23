class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"
  
  # Add your routes here
  get "/moves" do 
    users = User.all()
    users.to_json()
  end

  post "/moves" do 
    move = Move.create(
      pickup_location: params[:pickup_location],
      dropoff_location: params[:dropoff_location]
    )
    user.to_json()
  end

  patch "/moves/:id" do 
    move = Move.find(params[:user_id])
    move.update(
      pickup_location: params[:pickup_location],
      dropoff_location: params[:dropoff_location]
    )
    move.to_json()
  end

  delete "/moves/:id" do 
    move = Move.find(params[:user_id])
    move.destroy()
    move.to_json()
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
    item = Item.find(params[:item_id])
    item.destroy()
    item.to_json()
  end
end
