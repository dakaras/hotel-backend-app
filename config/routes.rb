Rails.application.routes.draw do
  
  resources :ratings
  namespace :api do 
    namespace :v1 do 
      resources :guests
      resources :rooms
      resources :reservations
      resources :amenities
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
