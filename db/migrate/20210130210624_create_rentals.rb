class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.string :name
      t.string :location
      t.integer :price
      t.integer :bed
      t.integer :shower
      t.text :description

      t.timestamps
    end
  end
end
