Rails.application.routes.draw do
  root to: 'calc#input'
  devise_for :users
  get 'calc/input'
  get 'calc/view'
  get 'input/view'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
