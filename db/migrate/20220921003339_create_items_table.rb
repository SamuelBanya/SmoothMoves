class CreateItemsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :owner
      t.integer :length
      t.integer :width
      t.integer :height
      t.integer :weight
      # Values include "loose" or "boxed"
      t.string :item_type
    end
  end
end
