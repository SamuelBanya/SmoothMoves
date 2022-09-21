class CreateUsersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t| 
      t.string :name
      t.string :pickup_location
      t.string :dropoff_location
    end
  end
end
