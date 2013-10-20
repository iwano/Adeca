class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string  :photo
      t.boolean :photo_processing
      t.integer :property_id
    end
  end
end
