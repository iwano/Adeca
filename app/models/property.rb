class Property < ActiveRecord::Base
  has_many :photos
  accepts_nested_attributes_for :photos, :allow_destroy => true

  rails_admin do
    configure :photos do
      label 'Property photos'
    end
  end

  def master_photo
    photos.first.photo
  end
end
