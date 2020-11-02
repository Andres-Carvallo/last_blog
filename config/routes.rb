Rails.application.routes.draw do
  devise_for :users
  resources :tags
  resources :posts
  resources :post_tags
  root "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
