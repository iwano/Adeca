class Property < ActiveRecord::Base
  has_many :images

  searchable do
    text    :description
    string  :address
    string  :property_type
  end
end
