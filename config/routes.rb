Rails.application.routes.draw do
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  post 'restaurants',    to: 'restaurants#create'
end
