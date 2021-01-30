class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.string :name
      t.string :location
      t.string :price

      t.timestamps
    end
  end
end
