Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get "/posts/:id", to: "posts#create_comment"
  resources :users, only: [:show]
  resources :posts do
  	resources :comments
  end
end
