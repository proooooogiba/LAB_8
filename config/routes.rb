Rails.application.routes.draw do
  get 'calc/input'
  get 'calc/view'
  get 'input/view'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "calc#input"
  # Defines the root path route ("/")
  # root "articles#index"
end
