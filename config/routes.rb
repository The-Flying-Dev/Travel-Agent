Rails.application.routes.draw do
  resources :cabins
  resources :stations
  resources :trains
  root 'booking_agent#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
