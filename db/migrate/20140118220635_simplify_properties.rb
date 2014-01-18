class SimplifyProperties < ActiveRecord::Migration
  def up
    remove_column :properties, :neighborhood
    remove_column :properties, :owner
    remove_column :properties, :client
    remove_column :properties, :number_of_rooms
    add_column    :properties, :description, :text
  end

  def down
    add_column :properties, :neighborhood, :string
    add_column :properties, :owner, :integer
    add_column :properties, :client, :integer
    remove_column :properties, :number_of_rooms
    remove_column    :properties, :description
  end
end
