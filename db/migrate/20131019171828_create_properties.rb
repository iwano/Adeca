class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :property_type
      t.string :city
      t.string :address
      t.string :neighborhood
      t.integer :number_of_rooms
      t.decimal :cost_price
      t.decimal :sale_price
      t.string :owner
      t.string :client

      t.timestamps
    end
  end
end
