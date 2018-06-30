Rails.application.routes.draw do
    get '/',to:'home#about'
    get '/',to:'home#black'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
