Rails.application.routes.draw do
  root to: 'calc#input'
  devise_for :users
  resources :users, only: [:index]
  get 'calc/input', as: :calc_input
  get 'calc/view', as: :result
  get 'users/index', as: :user
  get 'users/show', as: :user_show
  get 'users/sign_out', as: :user_sign_out
  get 'users/sign_in', as: :user_sign_in
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
