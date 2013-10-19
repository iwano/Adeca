Adeca::Application.routes.draw do
  resources :properties

  devise_for :admins
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
end
