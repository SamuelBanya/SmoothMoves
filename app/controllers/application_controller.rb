class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"
  
  # Add your routes here
  get "/moves" do 
    moves = Move.all()
    moves.to_json(includes: :item)
  end

  post "/moves" do 
    move = Move.create(
      pickup_location: params[:pickup_location],
      dropoff_location: params[:dropoff_location]
    )
    move.to_json(includes: :item)
  end

  patch "/moves/:id" do 
    move = Move.find(params[:user_id])
    move.update(
      pickup_location: params[:pickup_location],
      dropoff_location: params[:dropoff_location]
    )
    move.to_json(includes: :item)
  end

  delete "/moves/:id" do 
    move = Move.find(params[:user_id])
    move.destroy()
  end

  # Goal: Create a route that creates individual items based upon a specific move:
  post "/moves/:id/items" do 
    # Related Docs page on 'collection.create' method:
    # https://guides.rubyonrails.org/association_basics.html#methods-added-by-has-many-collection-create-attributes
    item = Item.create(
      move_id: params[:id],
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
