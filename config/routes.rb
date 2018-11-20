Rails.application.routes.draw do

    root to:'home#start'
    get '/break',to:'home#breaktime'
    get '/home',to:'home#about'
    get '/stopwatch',to:'home#stopwatch'
    get '/result',to:'home#result'
    get '/select',to:'home#select'

  resources :trainings
  resources :actions
  resources :types
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
