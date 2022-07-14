Rails.application.routes.draw do
  get 'dashboard/index'
  get 'dashboard/home'
  root to:'welcome#index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
