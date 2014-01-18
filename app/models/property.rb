class Property < ActiveRecord::Base
  has_many :photos

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
