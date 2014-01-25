# RailsAdmin config file. Generated on October 18, 2013 20:15
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|


  ################  Global configuration  ################

  # Set the admin name here (optional second array element will appear in red). For example:
  config.main_app_name = ['Adeca', 'Admin']
  # or for a more dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }

  # RailsAdmin may need a way to know who the current user is]
  config.current_user_method { current_admin } # auto-generated

  config.model Photo do
    field :photo, :carrierwave do
      label I18n.t('active_record.attributes.photo.photo')
    end
  end

  config.model Property do
    field :property_type do
      label I18n.t('active_record.attributes.property.property_type')
    end
    field :city do
      label I18n.t('active_record.attributes.property.city')
    end
    field :address do
      label I18n.t('active_record.attributes.property.address')
    end
    field :sale_price do
      label I18n.t('active_record.attributes.property.sale_price')
      label 'Precio'
    end
    field :description do
      label I18n.t('active_record.attributes.property.description')
    end
    field :photos do
      label I18n.t('active_record.attributes.property.photos')
    end
    group :default do
      help I18n.t(:property_help)
    end
  end

  config.model Admin do
    field :email do
      label I18n.t('active_record.attributes.admin.email')
    end
    field :password do
      label I18n.t('active_record.attributes.admin.password')
    end
    field :password_confirmation do
      label I18n.t('active_record.attributes.admin.password_confirmation')
    end
  end
end
