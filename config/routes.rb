Adeca::Application.routes.draw do
  resources :properties, only: [:index, :show], path: 'propiedades'
  resources :search, only: :index

  devise_for :admins
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  get '/:static_page', to: 'static_pages#index', as: :static_page
  root to: 'static_pages#index', static_page: 'home'

end
