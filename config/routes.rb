Rails.application.routes.draw do
  root to: 'calc#input'
  devise_for :users
  resources :users, only: [:index]
  get 'calc/input', as: :calc_input
  get 'calc/view', as: :result
  get 'input/view'
  get 'users/index', as: :user
  get 'users/show', as: :user_show
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
