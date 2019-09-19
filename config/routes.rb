Rails.application.routes.draw do
  post '/api/v1/login', to: 'api/v1/sessions#create'
  get "/api/v1/get_current_guest", to: "api/v1/sessions#get_current_guest"

  namespace :api do 
    namespace :v1 do 
      resources :guests
      resources :rooms
      resources :reservations
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
