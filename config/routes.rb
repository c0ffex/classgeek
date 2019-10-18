Rails.application.routes.draw do
  resources :tiltwers
  devise_for :users
  root 'pages#index'
  resources :parties
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
