Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show,:destroy]
  resources :ingredients, only: [:index, :show]
  resources :recipes, only: [:index, :show, :new, :create]
end
