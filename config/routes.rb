Rails.application.routes.draw do
  resources :trainings
  resources :actions
  resources :types
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
