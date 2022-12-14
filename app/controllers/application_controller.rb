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
    move = Move.find(params[:id])
    move.update(
      pickup_location: params[:pickup_location],
      dropoff_location: params[:dropoff_location]
    )
    move.to_json(includes: :item)
  end

  delete "/moves/:id" do 
    move = Move.find(params[:id])
    move.destroy()
    move.to_json(includes: :item)
  end

  # NOTE: This is just to test if we are actually receiving any 'items' that are sent via POST requests from the frontend:
  get "/moves/:id/items" do
    move = Move.find(params[:id])
    move.to_json(include: :items)
  end

  # NOTE: This is the original route before I looped through individual POST requests:
  post "/moves/:id/items" do 
    # Related Docs page on 'collection.create' method:
    # https://guides.rubyonrails.org/association_basics.html#methods-added-by-has-many-collection-create-attributes
    item = Item.create(
      move_id: params[:id],
      name: params[:name],
      length: params[:length],
      width: params[:width],
      height: params[:height],
      weight: params[:weight]
    )
    item.to_json()
  end

  # NOTE: This is the modified route where you can provide the entire array:
  # post "/test/:id" do 
  # post "/moves/:id/items" do
  #   move = Move.find(params[:id])
  #   newItems = move.items.create(params[:items])
  #   move.to_json(include: :items)
  # end
end
