Rails.application.routes.draw do

    root to:'home#about'
    get '/break',to:'home#breaktime'
    get '/',to:'home#start'
    get '/stopwatch',to:'home#stopwatch'
    get '/result',to:'home#result'
    get '/select',to:'home#select'

  resources :trainings
  resources :actions
  resources :types
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
