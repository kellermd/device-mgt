Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      jsonapi_resources :accounts
      jsonapi_resources :locations
      jsonapi_resources :machines
      jsonapi_resources :machine_account_locations
      jsonapi_resources :machine_model
    end
  end
end
