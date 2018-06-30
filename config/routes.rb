Rails.application.routes.draw do
    get '/',to:'home#about'
    get '/break',to:'home#breaktime'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
