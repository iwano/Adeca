class RenameImagesToPhotos < ActiveRecord::Migration
  def up
    rename_table :images, :photos
  end

  def down
    rename_table :photos, :images
  end
end
