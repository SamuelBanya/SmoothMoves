class CreateMovesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t| 
      t.string :pickup_location
      t.string :dropoff_location
    end
  end
end
