class CreateLocationsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t| 
      t.string :dropoff_location
      t.string :pickup_location
    end
  end
end
