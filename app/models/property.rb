class Property < ActiveRecord::Base
  has_many :photos
  accepts_nested_attributes_for :photos, :allow_destroy => true

  searchable do
    text    :description
    string  :address
    string  :property_type
  end

  rails_admin do
    configure :photos do
      label 'Property photos'
    end
  end
end
