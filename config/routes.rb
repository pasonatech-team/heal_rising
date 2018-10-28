Rails.application.routes.draw do

    get '/',to:'home#about'
    get '/break',to:'home#breaktime'

  resources :trainings
  resources :actions
  resources :types
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
